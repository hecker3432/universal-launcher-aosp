--
-- Created by IntelliJ IDEA.
-- User: ecrochem
-- Date: 13/01/2017
-- Time: 13:56
-- To change this template use File | Settings | File Templates.
--

-----------------------------------------------------------------------------------------
-- LUA only XmlParser from Alexander Makeev
-----------------------------------------------------------------------------------------
local XmlParser = {}

function XmlParser:ToXmlString(value)
    value = string.gsub (value, "&", "&amp;");		-- '&' -> "&amp;"
    value = string.gsub (value, "<", "&lt;");		-- '<' -> "&lt;"
    value = string.gsub (value, ">", "&gt;");		-- '>' -> "&gt;"
    --value = string.gsub (value, "'", "&apos;");	-- '\'' -> "&apos;"
    value = string.gsub (value, "\"", "&quot;");	-- '"' -> "&quot;"
    -- replace non printable char -> "&#xD;"
    value = string.gsub(value, "([^%w%&%;%p%\t% ])",
        function (c)
            return string.format("&#x%X;", string.byte(c))
            --return string.format("&#x%02X;", string.byte(c))
            --return string.format("&#%02d;", string.byte(c))
        end)
    return value
end

function XmlParser:FromXmlString(value)
    value = string.gsub(value, "&#x([%x]+)%;",
        function(h)
            return string.char(tonumber(h,16))
        end)
    value = string.gsub(value, "&#([0-9]+)%;",
        function(h)
            return string.char(tonumber(h,10))
        end)
    value = string.gsub (value, "&quot;", "\"")
    value = string.gsub (value, "&apos;", "'")
    value = string.gsub (value, "&gt;", ">")
    value = string.gsub (value, "&lt;", "<")
    value = string.gsub (value, "&amp;", "&")
    return value
end

function XmlParser:ParseArgs(s)
    local arg = {}
    string.gsub(s, "([%w_]+)=([\"'])(.-)%2", function (w, _, a)
        arg[w] = self:FromXmlString(a)
    end)
    return arg
end

function XmlParser:ParseXmlText(xmlText)
    --print (xmlText)
    local stack = {}
    local top = {Name=nil,Value=nil,Attributes={},ChildNodes={}}
    table.insert(stack, top)
    local ni,c,label,xarg, empty
    local i, j = 1, 1
    if xmlText==nil then return nil, "XML text is nil" end
    local parseError = nil
    while true  do
        ni,j,c,label,xarg, empty = string.find(xmlText, "<(%/?)([%w:]+)(.-)(%/?)>", i)
        if not ni then break end
        local text = string.sub(xmlText, i, ni-1)
        if #stack>1 and top.Name==stack[#stack-1].Name then table.remove(stack) end -- this case for bad start tag doubled
        if text~=nil and not string.find(text, "^%s*$") then
            top.Value=(top.Value or "")..self:FromXmlString(text)
        end
        if empty == "/" then  -- empty element tag
            table.insert(top.ChildNodes, {Name=label,Value=nil,Attributes=self:ParseArgs(xarg),ChildNodes={}})
        elseif c == "" then   -- start tag
            top = {Name=label, Value=nil, Attributes=self:ParseArgs(xarg), ChildNodes={}}
            table.insert(stack, top)   -- new level
            --print("openTag ="..top.Name);
        else  -- end tag
            local toclose = table.remove(stack)  -- remove top
            --print("closeTag="..toclose.Name);
            top = stack[#stack]
            if #stack < 1 then
                parseError = "Nothing to close with tag </"..label..">"
                print("error XmlParser: "..parseError)
            end
            if toclose.Name ~= label then
                parseError = "Mismatched tags: trying to close <"..toclose.Name.."> with </"..label..">"
                print("error XmlParser: "..parseError)
            end
            --print("toclose", toclose)
            table.insert(top.ChildNodes, toclose)
        end
        i = j+1
    end
    local text = string.sub(xmlText, i)
    if not string.find(text, "^%s*$") then
        stack[#stack].Value=(stack[#stack].Value or "")..self:FromXmlString(text)
    end
    if #stack > 1 then
        local unclosedTag = stack[#stack].Name or "unknown"
        parseError = "Unclosed tag: <"..unclosedTag..">"
        print("error XmlParser: "..parseError)
        local toclose = table.remove(stack)  -- remove top
        top = stack[#stack]
        table.insert(top.ChildNodes, toclose)
   --     return top
    end
    return stack[1].ChildNodes[1], parseError
end

function XmlParser:ParseXmlFile(xmlFileName)
    print("loading:'"..xmlFileName.."'")
    local xmlText = cc.FileUtils:getInstance():getStringFromFile(xmlFileName)
    if (xmlText) then
        print("ok")
        --[[local printi=1
        while (printi < xmlText:len()) do
            print(xmlText:sub(printi, printi+999))
            printi=printi+1000
        end]]
        --print (xmlText)
        xmlText=xmlText:gsub("<!--.-->", "") -- remove comments
        local result, parseError = self:ParseXmlText(xmlText)
        return result, parseError
    else
        print("nok "..err)
        return nil, err
    end
end

function XmlParser:ParsePXmlFile(xmlFileName)
    print("loading:'"..xmlFileName.."'")
    local xmlText = cc.FileUtils:getInstance():getStringFromFile(xmlFileName)
    if (xmlText) then
        print("ok")
        xmlText=dec64(xmlText)
        xmlText=xmlText:gsub("<!--.-->", "") -- remove comments
        --[[local printi=1
        while (printi < xmlText:len()) do
            print(xmlText:sub(printi, printi+999))
            printi=printi+1000
        end]]
        local result, parseError = self:ParseXmlText(xmlText)
        return result, parseError
    else
        print("nok "..err)
        return nil, err
    end
end

function XmlParser:ParseJSONFile(jsonFileName)
    print("loading:'"..jsonFileName.."'")
    local xmlText = cc.FileUtils:getInstance():getStringFromFile(jsonFileName)
    if (xmlText) then
        print("ok")
        xmlText=convertJSON(xmlText)
        print(xmlText)
        local result, parseError = self:ParseXmlText(xmlText)
        return result, parseError
    else
        print("nok "..err)
        return nil, err
    end
end

return XmlParser