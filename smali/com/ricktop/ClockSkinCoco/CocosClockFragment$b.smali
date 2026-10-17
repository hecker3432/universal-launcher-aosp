.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->c2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;ZZZLjava/lang/String;ILjava/lang/String;IZIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->l:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->a:Z

    iput-boolean p3, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->b:Z

    iput-boolean p4, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->c:Z

    iput-object p5, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->d:Ljava/lang/String;

    iput p6, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->e:I

    iput-object p7, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->f:Ljava/lang/String;

    iput p8, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->g:I

    iput-boolean p9, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->h:Z

    iput p10, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->i:I

    iput p11, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->j:I

    iput-object p12, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->a:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->b:Z

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__G__SETSELECT__"

    invoke-static {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->S1()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "__G__SETDISPLAY__"

    invoke-static {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "__G__SETLOCATION__"

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v6

    invoke-static {v6}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "weatherAutoLanguage"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v6, "en"

    const-string v7, "US"

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v6

    invoke-static {v6}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "weatherAutoLanguage"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v6, "en"

    const-string v7, "US"

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->h:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__G__SETINFOS__"

    invoke-static {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->l:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->T1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "F"

    const-string v3, "C"

    const-string v4, "__G__SETWEATHER__"

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->W1()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->l:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->U1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->W1()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`0`0`06:45`18:20`0`0`0`0`45.00`45.00`0`0`0`0`0`-`1`0`0`-`1`0`0`-`1`0`0`-`1`0`0`-`1`0`0`-`1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "__G__SETMEMORY__"

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$b;->k:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    # Check if constants have already been initialized
    sget-boolean v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->constantsInitialized:Z
    
    if-nez v0, :skip_constants

    # Initialize device constants (only if not already done)
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->initializeConstants(Landroid/content/Context;)V

    # Send constants to Lua
    invoke-static {}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->getConstantsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__G__SETCONSTANT__"

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    :skip_constants

    # Update dynamic system info
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateSystemInfo(Landroid/content/Context;)V

    # Send system info to Lua
    invoke-static {}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->getSystemInfoString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__G__SETSYSTEMINFO__"

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "globalScale"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "sp_clock_skin_size_offset"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    # Unbox the Integer to get the primitive int value
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0

    int-to-float v0, v0 

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__G__SETSCALE__"

    invoke-static {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaGlobalFunctionWithString(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method
