.class LI/o0$h;
.super LI/o0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private e:LB/c;

.field private f:LB/c;

.field private g:LB/c;


# direct methods
.method constructor <init>(LI/o0;LI/o0$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI/o0$g;-><init>(LI/o0;LI/o0$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, LI/o0$h;->e:LB/c;

    iput-object p1, p0, LI/o0$h;->f:LB/c;

    iput-object p1, p0, LI/o0$h;->g:LB/c;

    return-void
.end method

.method constructor <init>(LI/o0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LI/o0$g;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, LI/o0$h;->e:LB/c;

    iput-object p1, p0, LI/o0$h;->f:LB/c;

    iput-object p1, p0, LI/o0$h;->g:LB/c;

    return-void
.end method


# virtual methods
.method g(IIII)LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$e;->b:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, LI/H0;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object p1

    return-object p1
.end method
