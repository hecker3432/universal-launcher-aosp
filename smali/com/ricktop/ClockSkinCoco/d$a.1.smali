.class Lcom/ricktop/ClockSkinCoco/d$a;
.super LT/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/d$a$c;,
        Lcom/ricktop/ClockSkinCoco/d$a$b;,
        Lcom/ricktop/ClockSkinCoco/d$a$a;
    }
.end annotation


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;

.field final synthetic e:Lcom/ricktop/ClockSkinCoco/d;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a;->e:Lcom/ricktop/ClockSkinCoco/d;

    invoke-direct {p0}, LT/a$a;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/d$a;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic x(Lcom/ricktop/ClockSkinCoco/d$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/d$a;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d$a;->e:Lcom/ricktop/ClockSkinCoco/d;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/d;->b(Lcom/ricktop/ClockSkinCoco/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic m(Landroidx/recyclerview/widget/RecyclerView$C;I)V
    .locals 0

    check-cast p1, LT/a$d;

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/d$a;->y(LT/a$d;I)V

    return-void
.end method

.method public bridge synthetic o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$C;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/d$a;->z(Landroid/view/ViewGroup;I)LT/a$d;

    move-result-object p1

    return-object p1
.end method

.method public y(LT/a$d;I)V
    .locals 3

    check-cast p1, Lcom/ricktop/ClockSkinCoco/d$a$c;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d$a;->e:Lcom/ricktop/ClockSkinCoco/d;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/d;->b(Lcom/ricktop/ClockSkinCoco/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/d$a$c;->z:Landroid/support/wearable/view/CircledImageView;

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/b$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/d$a$c;->A:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$C;->b:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$C;->b:Landroid/view/View;

    new-instance v1, Lcom/ricktop/ClockSkinCoco/d$a$b;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/d$a$b;-><init>(Lcom/ricktop/ClockSkinCoco/d$a;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$C;->b:Landroid/view/View;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/d$a$a;

    invoke-direct {p2, p0, v0}, Lcom/ricktop/ClockSkinCoco/d$a$a;-><init>(Lcom/ricktop/ClockSkinCoco/d$a;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public z(Landroid/view/ViewGroup;I)LT/a$d;
    .locals 2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/d$a$c;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/d$a;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0060

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/ricktop/ClockSkinCoco/d$a$c;-><init>(Lcom/ricktop/ClockSkinCoco/d$a;Landroid/view/View;)V

    return-object p1
.end method
