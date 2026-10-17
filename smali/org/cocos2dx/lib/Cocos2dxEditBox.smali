.class public Lorg/cocos2dx/lib/Cocos2dxEditBox;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field public static final kEndActionNext:I = 0x1

.field public static final kEndActionReturn:I = 0x3

.field public static final kEndActionUnknown:I = 0x0

.field private static final kTextHorizontalAlignmentCenter:I = 0x1

.field private static final kTextHorizontalAlignmentLeft:I = 0x0

.field private static final kTextHorizontalAlignmentRight:I = 0x2

.field private static final kTextVerticalAlignmentBottom:I = 0x2

.field private static final kTextVerticalAlignmentCenter:I = 0x1

.field private static final kTextVerticalAlignmentTop:I


# instance fields
.field private changedTextProgrammatically:Ljava/lang/Boolean;

.field endAction:I

.field private final kEditBoxInputFlagInitialCapsAllCharacters:I

.field private final kEditBoxInputFlagInitialCapsSentence:I

.field private final kEditBoxInputFlagInitialCapsWord:I

.field private final kEditBoxInputFlagLowercaseAllCharacters:I

.field private final kEditBoxInputFlagPassword:I

.field private final kEditBoxInputFlagSensitive:I

.field private final kEditBoxInputModeAny:I

.field private final kEditBoxInputModeDecimal:I

.field private final kEditBoxInputModeEmailAddr:I

.field private final kEditBoxInputModeNumeric:I

.field private final kEditBoxInputModePhoneNumber:I

.field private final kEditBoxInputModeSingleLine:I

.field private final kEditBoxInputModeUrl:I

.field private final kKeyboardReturnTypeDefault:I

.field private final kKeyboardReturnTypeDone:I

.field private final kKeyboardReturnTypeGo:I

.field private final kKeyboardReturnTypeNext:I

.field private final kKeyboardReturnTypeSearch:I

.field private final kKeyboardReturnTypeSend:I

.field private mInputFlagConstraints:I

.field private mInputModeConstraints:I

.field private mMaxLength:I

.field private mScaleX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeAny:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeEmailAddr:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeNumeric:I

    const/4 v2, 0x3

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModePhoneNumber:I

    const/4 v3, 0x4

    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeUrl:I

    const/4 v4, 0x5

    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeDecimal:I

    const/4 v5, 0x6

    iput v5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputModeSingleLine:I

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagPassword:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagSensitive:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsWord:I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsSentence:I

    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagInitialCapsAllCharacters:I

    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kEditBoxInputFlagLowercaseAllCharacters:I

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDefault:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeDone:I

    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSend:I

    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeSearch:I

    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeGo:I

    iput v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->kKeyboardReturnTypeNext:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->endAction:I

    return-void
.end method


# virtual methods
.method public getChangedTextProgrammatically()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOpenGLViewScaleX()F
    .locals 1

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setChangedTextProgrammatically(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->changedTextProgrammatically:Ljava/lang/Boolean;

    return-void
.end method

.method public setEditBoxViewRect(IIII)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInputFlag(I)V
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_1

    :cond_1
    const/16 p1, 0x1000

    :goto_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x4000

    goto :goto_0

    :cond_3
    const/16 p1, 0x2000

    goto :goto_0

    :cond_4
    const/high16 p1, 0x80000

    goto :goto_0

    :cond_5
    const/16 p1, 0x81

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_1
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

.method public setInputMode(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextHorizontalAlignment(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextVerticalAlignment(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x3002

    :goto_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x11

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x1002

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x21

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextVerticalAlignment(I)V

    const p1, 0x20001

    goto :goto_0

    :goto_1
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputFlagConstraints:I

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxLength(I)V
    .locals 2

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mMaxLength:I

    invoke-direct {p1, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMultilineEnabled(Z)V
    .locals 1

    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mInputModeConstraints:I

    return-void
.end method

.method public setOpenGLViewScaleX(F)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    return-void
.end method

.method public setReturnType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p1, 0x10000001

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1

    :cond_0
    const p1, 0x10000005

    goto :goto_0

    :cond_1
    const p1, 0x10000002

    goto :goto_0

    :cond_2
    const p1, 0x10000003

    goto :goto_0

    :cond_3
    const p1, 0x10000004

    goto :goto_0

    :cond_4
    const p1, 0x10000006

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setTextHorizontalAlignment(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x4

    or-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_1
    and-int/lit8 p1, v0, -0x8

    or-int/2addr p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    and-int/lit8 p1, v0, -0x6

    or-int/lit8 p1, p1, 0x3

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTextVerticalAlignment(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;->mScaleX:F

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->getPadding(F)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x31

    or-int/lit8 p1, p1, 0x50

    goto :goto_1

    :cond_1
    :goto_0
    div-int/lit8 p1, v1, 0x2

    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    and-int/lit8 p1, v0, -0x71

    or-int/lit8 p1, p1, 0x10

    goto :goto_1

    :cond_2
    mul-int/lit8 p1, v1, 0x3

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v1, p1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    and-int/lit8 p1, v0, -0x51

    or-int/lit8 p1, p1, 0x30

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method
