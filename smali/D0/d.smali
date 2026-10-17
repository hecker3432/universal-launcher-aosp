.class public LD0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/g;


# instance fields
.field private final a:La0/h;

.field private final b:LD0/s;

.field private c:La0/f;

.field private d:LH0/d;

.field private e:LD0/v;


# direct methods
.method public constructor <init>(La0/h;)V
    .locals 1

    sget-object v0, LD0/g;->c:LD0/g;

    invoke-direct {p0, p1, v0}, LD0/d;-><init>(La0/h;LD0/s;)V

    return-void
.end method

.method public constructor <init>(La0/h;LD0/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LD0/d;->c:La0/f;

    iput-object v0, p0, LD0/d;->d:LH0/d;

    iput-object v0, p0, LD0/d;->e:LD0/v;

    const-string v0, "Header iterator"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/h;

    iput-object p1, p0, LD0/d;->a:La0/h;

    const-string p1, "Parser"

    invoke-static {p2, p1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/s;

    iput-object p1, p0, LD0/d;->b:LD0/s;

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, LD0/d;->e:LD0/v;

    iput-object v0, p0, LD0/d;->d:LH0/d;

    :cond_0
    iget-object v0, p0, LD0/d;->a:La0/h;

    invoke-interface {v0}, La0/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LD0/d;->a:La0/h;

    invoke-interface {v0}, La0/h;->b()La0/e;

    move-result-object v0

    instance-of v1, v0, La0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, La0/d;

    invoke-interface {v0}, La0/d;->c()LH0/d;

    move-result-object v1

    iput-object v1, p0, LD0/d;->d:LH0/d;

    new-instance v3, LD0/v;

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v1

    invoke-direct {v3, v2, v1}, LD0/v;-><init>(II)V

    iput-object v3, p0, LD0/d;->e:LD0/v;

    invoke-interface {v0}, La0/d;->b()I

    move-result v0

    invoke-virtual {v3, v0}, LD0/v;->d(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LH0/d;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, LH0/d;-><init>(I)V

    iput-object v1, p0, LD0/d;->d:LH0/d;

    invoke-virtual {v1, v0}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v0, LD0/v;

    iget-object v1, p0, LD0/d;->d:LH0/d;

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v1

    invoke-direct {v0, v2, v1}, LD0/v;-><init>(II)V

    iput-object v0, p0, LD0/d;->e:LD0/v;

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, LD0/d;->a:La0/h;

    invoke-interface {v0}, La0/h;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LD0/d;->e:LD0/v;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, LD0/d;->e:LD0/v;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LD0/v;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, LD0/d;->c()V

    :cond_4
    iget-object v0, p0, LD0/d;->e:LD0/v;

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, LD0/d;->e:LD0/v;

    invoke-virtual {v0}, LD0/v;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, LD0/d;->b:LD0/s;

    iget-object v1, p0, LD0/d;->d:LH0/d;

    iget-object v2, p0, LD0/d;->e:LD0/v;

    invoke-interface {v0, v1, v2}, LD0/s;->a(LH0/d;LD0/v;)La0/f;

    move-result-object v0

    invoke-interface {v0}, La0/f;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, La0/f;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_6
    iput-object v0, p0, LD0/d;->c:La0/f;

    return-void

    :cond_7
    iget-object v0, p0, LD0/d;->e:LD0/v;

    invoke-virtual {v0}, LD0/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LD0/d;->e:LD0/v;

    iput-object v0, p0, LD0/d;->d:LH0/d;

    goto :goto_0
.end method


# virtual methods
.method public a()La0/f;
    .locals 2

    iget-object v0, p0, LD0/d;->c:La0/f;

    if-nez v0, :cond_0

    invoke-direct {p0}, LD0/d;->e()V

    :cond_0
    iget-object v0, p0, LD0/d;->c:La0/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, LD0/d;->c:La0/f;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more header elements available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LD0/d;->c:La0/f;

    if-nez v0, :cond_0

    invoke-direct {p0}, LD0/d;->e()V

    :cond_0
    iget-object v0, p0, LD0/d;->c:La0/f;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LD0/d;->a()La0/f;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
