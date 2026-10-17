.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/nio/charset/Charset;

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field public static final GB2312_CHARSET:Ljava/nio/charset/Charset;

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field public static final SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 39
    :try_start_6
    const-string v0, "SJIS"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_c
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_c} :catch_d

    .line 43
    .local v0, "sjisCharset":Ljava/nio/charset/Charset;
    goto :goto_10

    .line 40
    .end local v0    # "sjisCharset":Ljava/nio/charset/Charset;
    :catch_d
    move-exception v0

    .line 42
    .local v0, "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 44
    .local v0, "sjisCharset":Ljava/nio/charset/Charset;
    :goto_10
    sput-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    .line 50
    .end local v0    # "sjisCharset":Ljava/nio/charset/Charset;
    :try_start_12
    const-string v0, "GB2312"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_18
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_12 .. :try_end_18} :catch_19

    .line 54
    .local v0, "gb2312Charset":Ljava/nio/charset/Charset;
    goto :goto_1c

    .line 51
    .end local v0    # "gb2312Charset":Ljava/nio/charset/Charset;
    :catch_19
    move-exception v0

    .line 53
    .local v0, "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 55
    .local v0, "gb2312Charset":Ljava/nio/charset/Charset;
    :goto_1c
    sput-object v0, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    .line 61
    .end local v0    # "gb2312Charset":Ljava/nio/charset/Charset;
    :try_start_1e
    const-string v0, "EUC_JP"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_24
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1e .. :try_end_24} :catch_25

    .line 65
    .local v0, "eucJpCharset":Ljava/nio/charset/Charset;
    goto :goto_28

    .line 62
    .end local v0    # "eucJpCharset":Ljava/nio/charset/Charset;
    :catch_25
    move-exception v0

    .line 64
    .local v0, "ucee":Ljava/nio/charset/UnsupportedCharsetException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 66
    .local v0, "eucJpCharset":Ljava/nio/charset/Charset;
    :goto_28
    sput-object v0, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    .line 68
    .end local v0    # "eucJpCharset":Ljava/nio/charset/Charset;
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 69
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    :cond_38
    sget-object v0, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_48

    sget-object v0, Lcom/google/zxing/common/StringUtils;->EUC_JP:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_46
    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;
    .registers 25
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/nio/charset/Charset;"
        }
    .end annotation

    .line 109
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1d

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 110
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    return-object v2

    .line 114
    :cond_1d
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_38

    aget-byte v2, v0, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne v2, v6, :cond_2d

    aget-byte v2, v0, v5

    if-eq v2, v7, :cond_35

    :cond_2d
    aget-byte v2, v0, v4

    if-ne v2, v7, :cond_38

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_38

    .line 117
    :cond_35
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object v2

    .line 122
    :cond_38
    array-length v2, v0

    .line 123
    .local v2, "length":I
    const/4 v6, 0x1

    .line 124
    .local v6, "canBeISO88591":Z
    sget-object v7, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v7, :cond_40

    const/4 v7, 0x1

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    .line 125
    .local v7, "canBeShiftJIS":Z
    :goto_41
    const/4 v8, 0x1

    .line 126
    .local v8, "canBeUTF8":Z
    const/4 v9, 0x0

    .line 127
    .local v9, "utf8BytesLeft":I
    const/4 v10, 0x0

    .line 128
    .local v10, "utf2BytesChars":I
    const/4 v11, 0x0

    .line 129
    .local v11, "utf3BytesChars":I
    const/4 v12, 0x0

    .line 130
    .local v12, "utf4BytesChars":I
    const/4 v13, 0x0

    .line 131
    .local v13, "sjisBytesLeft":I
    const/4 v14, 0x0

    .line 132
    .local v14, "sjisKatakanaChars":I
    const/4 v15, 0x0

    .line 133
    .local v15, "sjisCurKatakanaWordLength":I
    const/16 v16, 0x0

    .line 134
    .local v16, "sjisCurDoubleBytesWordLength":I
    const/16 v17, 0x0

    .line 135
    .local v17, "sjisMaxKatakanaWordLength":I
    const/16 v18, 0x0

    .line 136
    .local v18, "sjisMaxDoubleBytesWordLength":I
    const/16 v19, 0x0

    .line 138
    .local v19, "isoHighOther":I
    const/16 v20, 0x0

    array-length v4, v0

    const/16 v21, 0x1

    const/4 v5, 0x3

    if-le v4, v5, :cond_6f

    aget-byte v4, v0, v20

    const/16 v22, 0x2

    const/16 v3, -0x11

    if-ne v4, v3, :cond_71

    aget-byte v3, v0, v21

    const/16 v4, -0x45

    if-ne v3, v4, :cond_71

    aget-byte v3, v0, v22

    const/16 v4, -0x41

    if-ne v3, v4, :cond_71

    const/4 v4, 0x1

    goto :goto_72

    :cond_6f
    const/16 v22, 0x2

    :cond_71
    const/4 v4, 0x0

    .line 143
    .local v4, "utf8bom":Z
    :goto_72
    const/4 v3, 0x0

    move/from16 v5, v17

    move/from16 v0, v18

    .line 144
    .end local v17    # "sjisMaxKatakanaWordLength":I
    .end local v18    # "sjisMaxDoubleBytesWordLength":I
    .local v0, "sjisMaxDoubleBytesWordLength":I
    .local v3, "i":I
    .local v5, "sjisMaxKatakanaWordLength":I
    :goto_77
    if-ge v3, v2, :cond_13b

    if-nez v6, :cond_7f

    if-nez v7, :cond_7f

    if-eqz v8, :cond_13d

    .line 147
    :cond_7f
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    .line 150
    .local v1, "value":I
    if-eqz v8, :cond_be

    .line 151
    if-lez v9, :cond_93

    .line 152
    move/from16 v18, v3

    .end local v3    # "i":I
    .local v18, "i":I
    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_90

    .line 153
    const/4 v3, 0x0

    move v8, v3

    .end local v8    # "canBeUTF8":Z
    .local v3, "canBeUTF8":Z
    goto :goto_c0

    .line 155
    .end local v3    # "canBeUTF8":Z
    .restart local v8    # "canBeUTF8":Z
    :cond_90
    add-int/lit8 v9, v9, -0x1

    goto :goto_c0

    .line 157
    .end local v18    # "i":I
    .local v3, "i":I
    :cond_93
    move/from16 v18, v3

    .end local v3    # "i":I
    .restart local v18    # "i":I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_c0

    .line 158
    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_a0

    .line 159
    const/4 v3, 0x0

    move v8, v3

    .end local v8    # "canBeUTF8":Z
    .local v3, "canBeUTF8":Z
    goto :goto_c0

    .line 161
    .end local v3    # "canBeUTF8":Z
    .restart local v8    # "canBeUTF8":Z
    :cond_a0
    add-int/lit8 v9, v9, 0x1

    .line 162
    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_a9

    .line 163
    add-int/lit8 v10, v10, 0x1

    goto :goto_c0

    .line 165
    :cond_a9
    add-int/lit8 v9, v9, 0x1

    .line 166
    and-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_b2

    .line 167
    add-int/lit8 v11, v11, 0x1

    goto :goto_c0

    .line 169
    :cond_b2
    add-int/lit8 v9, v9, 0x1

    .line 170
    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_bb

    .line 171
    add-int/lit8 v12, v12, 0x1

    goto :goto_c0

    .line 173
    :cond_bb
    const/4 v3, 0x0

    move v8, v3

    .end local v8    # "canBeUTF8":Z
    .restart local v3    # "canBeUTF8":Z
    goto :goto_c0

    .line 150
    .end local v18    # "i":I
    .local v3, "i":I
    .restart local v8    # "canBeUTF8":Z
    :cond_be
    move/from16 v18, v3

    .line 182
    .end local v3    # "i":I
    .restart local v18    # "i":I
    :cond_c0
    :goto_c0
    const/16 v3, 0x7f

    if-eqz v6, :cond_df

    .line 183
    if-le v1, v3, :cond_cd

    const/16 v3, 0xa0

    if-ge v1, v3, :cond_cd

    .line 184
    const/4 v3, 0x0

    move v6, v3

    .end local v6    # "canBeISO88591":Z
    .local v3, "canBeISO88591":Z
    goto :goto_df

    .line 185
    .end local v3    # "canBeISO88591":Z
    .restart local v6    # "canBeISO88591":Z
    :cond_cd
    const/16 v3, 0x9f

    if-le v1, v3, :cond_df

    const/16 v3, 0xc0

    if-lt v1, v3, :cond_dd

    const/16 v3, 0xd7

    if-eq v1, v3, :cond_dd

    const/16 v3, 0xf7

    if-ne v1, v3, :cond_df

    .line 186
    :cond_dd
    add-int/lit8 v19, v19, 0x1

    .line 191
    :cond_df
    :goto_df
    if-eqz v7, :cond_135

    .line 192
    if-lez v13, :cond_f6

    .line 193
    const/16 v3, 0x40

    if-lt v1, v3, :cond_f3

    const/16 v3, 0x7f

    if-eq v1, v3, :cond_f3

    const/16 v3, 0xfc

    if-le v1, v3, :cond_f0

    goto :goto_f3

    .line 196
    :cond_f0
    add-int/lit8 v13, v13, -0x1

    goto :goto_135

    .line 194
    :cond_f3
    :goto_f3
    const/4 v3, 0x0

    move v7, v3

    .end local v7    # "canBeShiftJIS":Z
    .local v3, "canBeShiftJIS":Z
    goto :goto_135

    .line 198
    .end local v3    # "canBeShiftJIS":Z
    .restart local v7    # "canBeShiftJIS":Z
    :cond_f6
    const/16 v3, 0x80

    if-eq v1, v3, :cond_133

    const/16 v3, 0xa0

    if-eq v1, v3, :cond_133

    const/16 v3, 0xef

    if-le v1, v3, :cond_103

    goto :goto_133

    .line 200
    :cond_103
    const/16 v3, 0xa0

    if-le v1, v3, :cond_119

    const/16 v3, 0xe0

    if-ge v1, v3, :cond_119

    .line 201
    add-int/lit8 v14, v14, 0x1

    .line 202
    const/4 v3, 0x0

    .line 203
    .end local v16    # "sjisCurDoubleBytesWordLength":I
    .local v3, "sjisCurDoubleBytesWordLength":I
    add-int/lit8 v15, v15, 0x1

    .line 204
    if-le v15, v5, :cond_116

    .line 205
    move v5, v15

    move/from16 v16, v3

    goto :goto_135

    .line 204
    :cond_116
    move/from16 v16, v3

    goto :goto_135

    .line 207
    .end local v3    # "sjisCurDoubleBytesWordLength":I
    .restart local v16    # "sjisCurDoubleBytesWordLength":I
    :cond_119
    const/16 v3, 0x7f

    if-le v1, v3, :cond_12d

    .line 208
    add-int/lit8 v13, v13, 0x1

    .line 210
    const/4 v3, 0x0

    .line 211
    .end local v15    # "sjisCurKatakanaWordLength":I
    .local v3, "sjisCurKatakanaWordLength":I
    add-int/lit8 v15, v16, 0x1

    .line 212
    .end local v16    # "sjisCurDoubleBytesWordLength":I
    .local v15, "sjisCurDoubleBytesWordLength":I
    if-le v15, v0, :cond_129

    .line 213
    move v0, v15

    move/from16 v16, v15

    move v15, v3

    goto :goto_135

    .line 212
    :cond_129
    move/from16 v16, v15

    move v15, v3

    goto :goto_135

    .line 217
    .end local v3    # "sjisCurKatakanaWordLength":I
    .local v15, "sjisCurKatakanaWordLength":I
    .restart local v16    # "sjisCurDoubleBytesWordLength":I
    :cond_12d
    const/4 v3, 0x0

    .line 218
    .end local v15    # "sjisCurKatakanaWordLength":I
    .restart local v3    # "sjisCurKatakanaWordLength":I
    const/4 v15, 0x0

    move/from16 v16, v15

    move v15, v3

    .end local v16    # "sjisCurDoubleBytesWordLength":I
    .local v15, "sjisCurDoubleBytesWordLength":I
    goto :goto_135

    .line 199
    .end local v3    # "sjisCurKatakanaWordLength":I
    .local v15, "sjisCurKatakanaWordLength":I
    .restart local v16    # "sjisCurDoubleBytesWordLength":I
    :cond_133
    :goto_133
    const/4 v3, 0x0

    move v7, v3

    .line 145
    .end local v1    # "value":I
    :cond_135
    :goto_135
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v1, p1

    .end local v18    # "i":I
    .local v3, "i":I
    goto/16 :goto_77

    .line 144
    :cond_13b
    move/from16 v18, v3

    .line 223
    .end local v3    # "i":I
    :cond_13d
    if-eqz v8, :cond_142

    if-lez v9, :cond_142

    .line 224
    const/4 v8, 0x0

    .line 226
    :cond_142
    if-eqz v7, :cond_147

    if-lez v13, :cond_147

    .line 227
    const/4 v7, 0x0

    .line 231
    :cond_147
    if-eqz v8, :cond_153

    if-nez v4, :cond_150

    add-int v1, v10, v11

    add-int/2addr v1, v12

    if-lez v1, :cond_153

    .line 232
    :cond_150
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v1

    .line 235
    :cond_153
    if-eqz v7, :cond_161

    sget-boolean v1, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v1, :cond_15e

    const/4 v1, 0x3

    if-ge v5, v1, :cond_15e

    if-lt v0, v1, :cond_161

    .line 236
    :cond_15e
    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    return-object v1

    .line 243
    :cond_161
    if-eqz v6, :cond_174

    if-eqz v7, :cond_174

    .line 244
    const/4 v1, 0x2

    if-ne v5, v1, :cond_16a

    if-eq v14, v1, :cond_16e

    :cond_16a
    mul-int/lit8 v1, v19, 0xa

    if-lt v1, v2, :cond_171

    :cond_16e
    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_173

    :cond_171
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_173
    return-object v1

    .line 249
    :cond_174
    if-eqz v6, :cond_179

    .line 250
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v1

    .line 252
    :cond_179
    if-eqz v7, :cond_17e

    .line 253
    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    return-object v1

    .line 255
    :cond_17e
    if-eqz v8, :cond_183

    .line 256
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v1

    .line 259
    :cond_183
    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    return-object v1
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p0, p1}, Lcom/google/zxing/common/StringUtils;->guessCharset([BLjava/util/Map;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 87
    .local v0, "c":Ljava/nio/charset/Charset;
    sget-object v1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 88
    const-string v1, "SJIS"

    return-object v1

    .line 90
    :cond_f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 91
    const-string v1, "UTF8"

    return-object v1

    .line 93
    :cond_1a
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 94
    const-string v1, "ISO8859_1"

    return-object v1

    .line 96
    :cond_25
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
