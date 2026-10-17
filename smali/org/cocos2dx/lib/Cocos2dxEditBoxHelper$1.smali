.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->createEditBox(IIIIF)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$index:I

.field final synthetic val$left:I

.field final synthetic val$scaleX:F

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(FIIIII)V
    .locals 0

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$left:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$top:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$width:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputFlag(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setReturnType(I)V

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOpenGLViewScaleX(F)V

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->getPadding(F)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$100()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$400()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
