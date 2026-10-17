.class public Lx0/h;
.super LB0/a;
.source "SourceFile"


# instance fields
.field public g:Lt0/b;

.field private final h:La0/t;

.field private final i:LH0/d;


# direct methods
.method public constructor <init>(LC0/f;LD0/u;La0/t;LE0/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, LB0/a;-><init>(LC0/f;LD0/u;LE0/e;)V

    new-instance p1, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lx0/h;->g:Lt0/b;

    const-string p1, "Response factory"

    invoke-static {p3, p1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lx0/h;->h:La0/t;

    new-instance p1, LH0/d;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, LH0/d;-><init>(I)V

    iput-object p1, p0, Lx0/h;->i:LH0/d;

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(LC0/f;)La0/p;
    .locals 0

    invoke-virtual {p0, p1}, Lx0/h;->e(LC0/f;)La0/s;

    move-result-object p1

    return-object p1
.end method

.method protected e(LC0/f;)La0/s;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lx0/h;->i:LH0/d;

    invoke-virtual {v2}, LH0/d;->h()V

    iget-object v2, p0, Lx0/h;->i:LH0/d;

    invoke-interface {p1, v2}, LC0/f;->b(LH0/d;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, La0/z;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, La0/z;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    new-instance v4, LD0/v;

    iget-object v5, p0, Lx0/h;->i:LH0/d;

    invoke-virtual {v5}, LH0/d;->length()I

    move-result v5

    invoke-direct {v4, v0, v5}, LD0/v;-><init>(II)V

    iget-object v5, p0, LB0/a;->d:LD0/u;

    iget-object v6, p0, Lx0/h;->i:LH0/d;

    invoke-interface {v5, v6, v4}, LD0/u;->b(LH0/d;LD0/v;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, p0, LB0/a;->d:LD0/u;

    iget-object v0, p0, Lx0/h;->i:LH0/d;

    invoke-interface {p1, v0, v4}, LD0/u;->a(LH0/d;LD0/v;)La0/F;

    move-result-object p1

    iget-object v0, p0, Lx0/h;->h:La0/t;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, La0/t;->a(La0/F;LG0/e;)La0/s;

    move-result-object p1

    return-object p1

    :cond_2
    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lx0/h;->i:LH0/d;

    invoke-virtual {p0, v2, v1}, Lx0/h;->f(LH0/d;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lx0/h;->g:Lt0/b;

    invoke-virtual {v2}, Lt0/b;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lx0/h;->g:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lx0/h;->i:LH0/d;

    invoke-virtual {v4}, LH0/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, La0/B;

    const-string v0, "The server failed to respond with a valid HTTP response"

    invoke-direct {p1, v0}, La0/B;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected f(LH0/d;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
