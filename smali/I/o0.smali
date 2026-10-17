.class public LI/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI/o0$c;,
        LI/o0$b;,
        LI/o0$d;,
        LI/o0$a;,
        LI/o0$h;,
        LI/o0$g;,
        LI/o0$f;,
        LI/o0$e;,
        LI/o0$i;
    }
.end annotation


# static fields
.field public static final b:LI/o0;


# instance fields
.field private final a:LI/o0$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LI/o0$a;

    invoke-direct {v0}, LI/o0$a;-><init>()V

    invoke-virtual {v0}, LI/o0$a;->a()LI/o0;

    move-result-object v0

    invoke-virtual {v0}, LI/o0;->a()LI/o0;

    move-result-object v0

    invoke-virtual {v0}, LI/o0;->b()LI/o0;

    move-result-object v0

    invoke-virtual {v0}, LI/o0;->c()LI/o0;

    move-result-object v0

    sput-object v0, LI/o0;->b:LI/o0;

    return-void
.end method

.method public constructor <init>(LI/o0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    iget-object p1, p1, LI/o0;->a:LI/o0$i;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v1, p1, LI/o0$h;

    if-eqz v1, :cond_0

    new-instance v0, LI/o0$h;

    check-cast p1, LI/o0$h;

    invoke-direct {v0, p0, p1}, LI/o0$h;-><init>(LI/o0;LI/o0$h;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v1, p1, LI/o0$g;

    if-eqz v1, :cond_1

    new-instance v0, LI/o0$g;

    check-cast p1, LI/o0$g;

    invoke-direct {v0, p0, p1}, LI/o0$g;-><init>(LI/o0;LI/o0$g;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v1, p1, LI/o0$f;

    if-eqz v1, :cond_2

    new-instance v0, LI/o0$f;

    check-cast p1, LI/o0$f;

    invoke-direct {v0, p0, p1}, LI/o0$f;-><init>(LI/o0;LI/o0$f;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, LI/o0$e;

    if-eqz v0, :cond_3

    new-instance v0, LI/o0$e;

    check-cast p1, LI/o0$e;

    invoke-direct {v0, p0, p1}, LI/o0$e;-><init>(LI/o0;LI/o0$e;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_3
    new-instance p1, LI/o0$i;

    invoke-direct {p1, p0}, LI/o0$i;-><init>(LI/o0;)V

    iput-object p1, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_4
    new-instance p1, LI/o0$i;

    invoke-direct {p1, p0}, LI/o0$i;-><init>(LI/o0;)V

    iput-object p1, p0, LI/o0;->a:LI/o0$i;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, LI/o0$h;

    invoke-direct {v0, p0, p1}, LI/o0$h;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, LI/o0$g;

    invoke-direct {v0, p0, p1}, LI/o0$g;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, LI/o0$f;

    invoke-direct {v0, p0, p1}, LI/o0$f;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    new-instance v0, LI/o0$e;

    invoke-direct {v0, p0, p1}, LI/o0$e;-><init>(LI/o0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LI/o0;->a:LI/o0$i;

    goto :goto_0

    :cond_3
    new-instance p1, LI/o0$i;

    invoke-direct {p1, p0}, LI/o0$i;-><init>(LI/o0;)V

    iput-object p1, p0, LI/o0;->a:LI/o0$i;

    :goto_0
    return-void
.end method

.method static j(LB/c;IIII)LB/c;
    .locals 5

    iget v0, p0, LB/c;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, LB/c;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, LB/c;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, LB/c;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, LB/c;->a(IIII)LB/c;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/view/WindowInsets;)LI/o0;
    .locals 1

    new-instance v0, LI/o0;

    invoke-static {p0}, LH/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LI/n0;->a(Ljava/lang/Object;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-direct {v0, p0}, LI/o0;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method


# virtual methods
.method public a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    invoke-virtual {v0}, LI/o0$i;->a()LI/o0;

    move-result-object v0

    return-object v0
.end method

.method public b()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    invoke-virtual {v0}, LI/o0$i;->b()LI/o0;

    move-result-object v0

    return-object v0
.end method

.method public c()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    invoke-virtual {v0}, LI/o0$i;->c()LI/o0;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, LI/o0;->h()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, LI/o0;->h()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LI/o0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LI/o0;

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    iget-object p1, p1, LI/o0;->a:LI/o0$i;

    invoke-static {v0, p1}, LH/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, LI/o0;->h()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, LI/o0;->h()LB/c;

    move-result-object v0

    iget v0, v0, LB/c;->b:I

    return v0
.end method

.method public h()LB/c;
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    invoke-virtual {v0}, LI/o0$i;->f()LB/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LI/o0$i;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i(IIII)LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    invoke-virtual {v0, p1, p2, p3, p4}, LI/o0$i;->g(IIII)LI/o0;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    invoke-virtual {v0}, LI/o0$i;->h()Z

    move-result v0

    return v0
.end method

.method public l(IIII)LI/o0;
    .locals 1

    new-instance v0, LI/o0$a;

    invoke-direct {v0, p0}, LI/o0$a;-><init>(LI/o0;)V

    invoke-static {p1, p2, p3, p4}, LB/c;->a(IIII)LB/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LI/o0$a;->c(LB/c;)LI/o0$a;

    move-result-object p1

    invoke-virtual {p1}, LI/o0$a;->a()LI/o0;

    move-result-object p1

    return-object p1
.end method

.method public m()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, LI/o0;->a:LI/o0$i;

    instance-of v1, v0, LI/o0$e;

    if-eqz v1, :cond_0

    check-cast v0, LI/o0$e;

    iget-object v0, v0, LI/o0$e;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
