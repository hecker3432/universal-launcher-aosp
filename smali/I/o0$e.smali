.class LI/o0$e;
.super LI/o0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final b:Landroid/view/WindowInsets;

.field private c:LB/c;


# direct methods
.method constructor <init>(LI/o0;LI/o0$e;)V
    .locals 1

    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, LI/o0$e;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(LI/o0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, LI/o0$i;-><init>(LI/o0;)V

    const/4 p1, 0x0

    iput-object p1, p0, LI/o0$e;->c:LB/c;

    iput-object p2, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method final f()LB/c;
    .locals 4

    iget-object v0, p0, LI/o0$e;->c:LB/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/u0;->a(Landroid/view/WindowInsets;)I

    move-result v0

    iget-object v1, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v1}, LI/v0;->a(Landroid/view/WindowInsets;)I

    move-result v1

    iget-object v2, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v2}, LI/w0;->a(Landroid/view/WindowInsets;)I

    move-result v2

    iget-object v3, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v3}, Landroid/support/wearable/view/f;->a(Landroid/view/WindowInsets;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LB/c;->a(IIII)LB/c;

    move-result-object v0

    iput-object v0, p0, LI/o0$e;->c:LB/c;

    :cond_0
    iget-object v0, p0, LI/o0$e;->c:LB/c;

    return-object v0
.end method

.method g(IIII)LI/o0;
    .locals 2

    new-instance v0, LI/o0$a;

    iget-object v1, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v1}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object v1

    invoke-direct {v0, v1}, LI/o0$a;-><init>(LI/o0;)V

    invoke-virtual {p0}, LI/o0$e;->f()LB/c;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, LI/o0;->j(LB/c;IIII)LB/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LI/o0$a;->c(LB/c;)LI/o0$a;

    invoke-virtual {p0}, LI/o0$i;->e()LB/c;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, LI/o0;->j(LB/c;IIII)LB/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LI/o0$a;->b(LB/c;)LI/o0$a;

    invoke-virtual {v0}, LI/o0$a;->a()LI/o0;

    move-result-object p1

    return-object p1
.end method

.method i()Z
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroid/support/wearable/view/e;->a(Landroid/view/WindowInsets;)Z

    move-result v0

    return v0
.end method
