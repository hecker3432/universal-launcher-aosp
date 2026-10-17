.class LI/o0$g;
.super LI/o0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method constructor <init>(LI/o0;LI/o0$g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI/o0$f;-><init>(LI/o0;LI/o0$f;)V

    return-void
.end method

.method constructor <init>(LI/o0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI/o0$f;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/F0;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object v0

    return-object v0
.end method

.method d()LI/c;
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/E0;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, LI/c;->a(Ljava/lang/Object;)LI/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LI/o0$g;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LI/o0$g;

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    iget-object p1, p1, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/G0;->a(Landroid/view/WindowInsets;)I

    move-result v0

    return v0
.end method
