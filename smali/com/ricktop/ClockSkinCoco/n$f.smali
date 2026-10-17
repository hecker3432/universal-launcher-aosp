.class Lcom/ricktop/ClockSkinCoco/n$f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/n;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/n;Lcom/ricktop/ClockSkinCoco/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/n$f;-><init>(Lcom/ricktop/ClockSkinCoco/n;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/n;->c(Lcom/ricktop/ClockSkinCoco/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/n;->c(Lcom/ricktop/ClockSkinCoco/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p2}, Lcom/ricktop/ClockSkinCoco/n;->a(Lcom/ricktop/ClockSkinCoco/n;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p3}, Lcom/ricktop/ClockSkinCoco/n;->b(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p3}, Lcom/ricktop/ClockSkinCoco/n;->c(Lcom/ricktop/ClockSkinCoco/n;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p3}, Lcom/ricktop/ClockSkinCoco/n;->c(Lcom/ricktop/ClockSkinCoco/n;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p3, 0x7f0a0126

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/n$f;->b:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/n;->b(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/m$a;->f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2
.end method
