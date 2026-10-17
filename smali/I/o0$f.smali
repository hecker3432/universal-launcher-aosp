.class LI/o0$f;
.super LI/o0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private d:LB/c;


# direct methods
.method constructor <init>(LI/o0;LI/o0$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI/o0$e;-><init>(LI/o0;LI/o0$e;)V

    const/4 p1, 0x0

    iput-object p1, p0, LI/o0$f;->d:LB/c;

    return-void
.end method

.method constructor <init>(LI/o0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI/o0$e;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, LI/o0$f;->d:LB/c;

    return-void
.end method


# virtual methods
.method b()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/x0;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object v0

    return-object v0
.end method

.method c()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/D0;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object v0

    return-object v0
.end method

.method final e()LB/c;
    .locals 4

    iget-object v0, p0, LI/o0$f;->d:LB/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/y0;->a(Landroid/view/WindowInsets;)I

    move-result v0

    iget-object v1, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v1}, LI/z0;->a(Landroid/view/WindowInsets;)I

    move-result v1

    iget-object v2, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v2}, LI/A0;->a(Landroid/view/WindowInsets;)I

    move-result v2

    iget-object v3, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v3}, LI/B0;->a(Landroid/view/WindowInsets;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LB/c;->a(IIII)LB/c;

    move-result-object v0

    iput-object v0, p0, LI/o0$f;->d:LB/c;

    :cond_0
    iget-object v0, p0, LI/o0$f;->d:LB/c;

    return-object v0
.end method

.method h()Z
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/C0;->a(Landroid/view/WindowInsets;)Z

    move-result v0

    return v0
.end method
