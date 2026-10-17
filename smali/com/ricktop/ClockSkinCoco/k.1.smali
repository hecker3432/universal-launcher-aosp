.class public Lcom/ricktop/ClockSkinCoco/k;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private Y:Landroid/content/Context;

.field private final Z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/k$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/k$a;-><init>(Lcom/ricktop/ClockSkinCoco/k;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/k;->Z:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/k;->E1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/k;->Y:Landroid/content/Context;

    return-object p0
.end method

.method private E1(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/k;->Y:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/k;->Y:Landroid/content/Context;

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d0036

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0a00fc

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/k;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/k;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0002

    const/high16 v1, 0x7f0e0000

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1e0

    invoke-static {v2, v1, v4, v3}, Landroidx/appcompat/widget/A0;->a(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v4, v3}, Landroidx/appcompat/widget/A0;->a(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/k;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public y0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    return-void
.end method
