.class public Lw0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/o;


# instance fields
.field public a:Lt0/b;

.field protected final b:Ll0/b;

.field protected final c:Ln0/d;

.field protected final d:La0/b;

.field protected final e:Ll0/f;

.field protected final f:LG0/h;

.field protected final g:LG0/g;

.field protected final h:Lc0/i;

.field protected final i:Lc0/m;

.field protected final j:Lc0/n;

.field protected final k:Lc0/b;

.field protected final l:Lc0/b;

.field protected final m:Lc0/p;

.field protected final n:LE0/e;

.field protected o:Ll0/n;

.field protected final p:Lb0/h;

.field protected final q:Lb0/h;

.field private final r:Lw0/r;

.field private s:I

.field private t:I

.field private final u:I

.field private v:La0/n;


# direct methods
.method public constructor <init>(Lt0/b;LG0/h;Ll0/b;La0/b;Ll0/f;Ln0/d;LG0/g;Lc0/i;Lc0/n;Lc0/b;Lc0/b;Lc0/p;LE0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Log"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Request executor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection manager"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection reuse strategy"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection keep alive strategy"

    invoke-static {p5, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Route planner"

    invoke-static {p6, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP protocol processor"

    invoke-static {p7, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request retry handler"

    invoke-static {p8, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Redirect strategy"

    invoke-static {p9, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target authentication strategy"

    invoke-static {p10, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy authentication strategy"

    invoke-static {p11, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User token handler"

    invoke-static {p12, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p13, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lw0/o;->a:Lt0/b;

    new-instance v0, Lw0/r;

    invoke-direct {v0, p1}, Lw0/r;-><init>(Lt0/b;)V

    iput-object v0, p0, Lw0/o;->r:Lw0/r;

    iput-object p2, p0, Lw0/o;->f:LG0/h;

    iput-object p3, p0, Lw0/o;->b:Ll0/b;

    iput-object p4, p0, Lw0/o;->d:La0/b;

    iput-object p5, p0, Lw0/o;->e:Ll0/f;

    iput-object p6, p0, Lw0/o;->c:Ln0/d;

    iput-object p7, p0, Lw0/o;->g:LG0/g;

    iput-object p8, p0, Lw0/o;->h:Lc0/i;

    iput-object p9, p0, Lw0/o;->j:Lc0/n;

    iput-object p10, p0, Lw0/o;->k:Lc0/b;

    iput-object p11, p0, Lw0/o;->l:Lc0/b;

    iput-object p12, p0, Lw0/o;->m:Lc0/p;

    iput-object p13, p0, Lw0/o;->n:LE0/e;

    instance-of p1, p9, Lw0/n;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    check-cast p9, Lw0/n;

    invoke-virtual {p9}, Lw0/n;->c()Lc0/m;

    move-result-object p1

    iput-object p1, p0, Lw0/o;->i:Lc0/m;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lw0/o;->i:Lc0/m;

    :goto_0
    iput-object p2, p0, Lw0/o;->o:Ll0/n;

    const/4 p1, 0x0

    iput p1, p0, Lw0/o;->s:I

    iput p1, p0, Lw0/o;->t:I

    new-instance p1, Lb0/h;

    invoke-direct {p1}, Lb0/h;-><init>()V

    iput-object p1, p0, Lw0/o;->p:Lb0/h;

    new-instance p1, Lb0/h;

    invoke-direct {p1}, Lb0/h;-><init>()V

    iput-object p1, p0, Lw0/o;->q:Lb0/h;

    const-string p1, "http.protocol.max-redirects"

    const/16 p2, 0x64

    invoke-interface {p13, p1, p2}, LE0/e;->c(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lw0/o;->u:I

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lw0/o;->o:Ll0/n;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lw0/o;->o:Ll0/n;

    :try_start_0
    invoke-interface {v0}, Ll0/h;->s()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v2}, Lt0/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ll0/h;->D()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lw0/o;->a:Lt0/b;

    const-string v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private k(Lw0/v;LG0/e;)V
    .locals 6

    invoke-virtual {p1}, Lw0/v;->b()Ln0/b;

    move-result-object v0

    invoke-virtual {p1}, Lw0/v;->a()Lw0/u;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "http.request"

    invoke-interface {p2, v2, p1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v2}, La0/j;->h()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    iget-object v3, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v2, v0, p2, v3}, Ll0/n;->p(Ln0/b;LG0/e;LE0/e;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    iget-object v3, p0, Lw0/o;->n:LE0/e;

    invoke-static {v3}, LE0/c;->d(LE0/e;)I

    move-result v3

    invoke-interface {v2, v3}, La0/j;->j(I)V

    :goto_1
    invoke-virtual {p0, v0, p2}, Lw0/o;->g(Ln0/b;LG0/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    :try_start_1
    iget-object v3, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v3}, La0/j;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    :goto_3
    iget-object v3, p0, Lw0/o;->h:Lc0/i;

    invoke-interface {v3, v2, v1, p2}, Lc0/i;->a(Ljava/io/IOException;ILG0/e;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lt0/b;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt0/b;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method private l(Lw0/v;LG0/e;)La0/s;
    .locals 6

    invoke-virtual {p1}, Lw0/v;->a()Lw0/u;

    move-result-object v0

    invoke-virtual {p1}, Lw0/v;->b()Ln0/b;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    iget v3, p0, Lw0/o;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lw0/o;->s:I

    invoke-virtual {v0}, Lw0/u;->l()V

    invoke-virtual {v0}, Lw0/u;->m()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p1, p0, Lw0/o;->a:Lt0/b;

    const-string p2, "Cannot retry non-repeatable request"

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    new-instance p1, Lc0/k;

    const-string p2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {p1, p2, v2}, Lc0/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Lc0/k;

    const-string p2, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {p1, p2}, Lc0/k;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v2}, La0/j;->h()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Ln0/b;->b()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    const-string v3, "Reopening the direct connection."

    invoke-virtual {v2, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    iget-object v3, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v2, p1, p2, v3}, Ll0/n;->p(Ln0/b;LG0/e;LE0/e;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    const-string v3, "Proxied connection. Need to start over."

    invoke-virtual {v2, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v2}, Lt0/b;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lw0/o;->a:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lw0/o;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to execute request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lw0/o;->f:LG0/h;

    iget-object v3, p0, Lw0/o;->o:Ll0/n;

    invoke-virtual {v2, v0, v3, p2}, LG0/h;->e(La0/q;La0/i;LG0/e;)La0/s;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v1

    :goto_3
    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    const-string v4, "Closing the connection."

    invoke-virtual {v3, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    :try_start_1
    iget-object v3, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v3}, La0/j;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    :goto_4
    iget-object v3, p0, Lw0/o;->h:Lc0/i;

    invoke-virtual {v0}, Lw0/u;->j()I

    move-result v4

    invoke-interface {v3, v2, v4, p2}, Lc0/i;->a(Ljava/io/IOException;ILG0/e;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when processing request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lt0/b;->d(Ljava/lang/Object;)V

    :cond_6
    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v3}, Lt0/b;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying request to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lt0/b;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    instance-of p2, v2, La0/z;

    if-eqz p2, :cond_9

    new-instance p2, La0/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ln0/b;->d()La0/n;

    move-result-object p1

    invoke-virtual {p1}, La0/n;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to respond"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw p2

    :cond_9
    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method

.method private m(La0/q;)Lw0/u;
    .locals 1

    instance-of v0, p1, La0/l;

    if-eqz v0, :cond_0

    new-instance v0, Lw0/q;

    check-cast p1, La0/l;

    invoke-direct {v0, p1}, Lw0/q;-><init>(La0/l;)V

    return-object v0

    :cond_0
    new-instance v0, Lw0/u;

    invoke-direct {v0, p1}, Lw0/u;-><init>(La0/q;)V

    return-object v0
.end method


# virtual methods
.method public a(La0/n;La0/q;LG0/e;)La0/s;
    .locals 12

    const-string v0, "http.user-token"

    const-string v1, "http.auth.target-scope"

    iget-object v2, p0, Lw0/o;->p:Lb0/h;

    invoke-interface {p3, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.proxy-scope"

    iget-object v2, p0, Lw0/o;->q:Lb0/h;

    invoke-interface {p3, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lw0/o;->m(La0/q;)Lw0/u;

    move-result-object v1

    iget-object v2, p0, Lw0/o;->n:LE0/e;

    invoke-virtual {v1, v2}, LD0/a;->c(LE0/e;)V

    invoke-virtual {p0, p1, v1, p3}, Lw0/o;->f(La0/n;La0/q;LG0/e;)Ln0/b;

    move-result-object v2

    invoke-virtual {v1}, LD0/a;->getParams()LE0/e;

    move-result-object v3

    const-string v4, "http.virtual-host"

    invoke-interface {v3, v4}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/n;

    iput-object v3, p0, Lw0/o;->v:La0/n;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, La0/n;->c()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ln0/b;->d()La0/n;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, La0/n;->c()I

    move-result v3

    if-eq v3, v4, :cond_1

    new-instance v4, La0/n;

    iget-object v5, p0, Lw0/o;->v:La0/n;

    invoke-virtual {v5}, La0/n;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lw0/o;->v:La0/n;

    invoke-virtual {v6}, La0/n;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lw0/o;->v:La0/n;

    :cond_1
    new-instance v3, Lw0/v;

    invoke-direct {v3, v1, v2}, Lw0/v;-><init>(Lw0/u;Ln0/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v1, :cond_15

    :try_start_0
    invoke-virtual {v4}, Lw0/v;->a()Lw0/u;

    move-result-object v3

    invoke-virtual {v4}, Lw0/v;->b()Ln0/b;

    move-result-object v5

    invoke-interface {p3, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    if-nez v7, :cond_4

    iget-object v7, p0, Lw0/o;->b:Ll0/b;

    invoke-interface {v7, v5, v6}, Ll0/b;->d(Ln0/b;Ljava/lang/Object;)Ll0/d;

    move-result-object v7

    instance-of v8, p2, Lf0/a;

    if-eqz v8, :cond_3

    move-object v8, p2

    check-cast v8, Lf0/a;

    invoke-interface {v8, v7}, Lf0/a;->e(Ll0/d;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_a

    :catch_1
    move-exception p1

    goto/16 :goto_b

    :catch_2
    move-exception p1

    goto/16 :goto_c

    :catch_3
    move-exception p1

    goto/16 :goto_d

    :cond_3
    :goto_2
    iget-object v8, p0, Lw0/o;->n:LE0/e;

    invoke-static {v8}, Lg0/b;->a(LE0/e;)J

    move-result-wide v8
    :try_end_0
    .catch Lx0/e; {:try_start_0 .. :try_end_0} :catch_3
    .catch La0/m; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ll0/d;->b(JLjava/util/concurrent/TimeUnit;)Ll0/n;

    move-result-object v7

    iput-object v7, p0, Lw0/o;->o:Ll0/n;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lx0/e; {:try_start_1 .. :try_end_1} :catch_3
    .catch La0/m; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v7, p0, Lw0/o;->n:LE0/e;

    invoke-static {v7}, LE0/c;->f(LE0/e;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v7}, La0/j;->h()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lw0/o;->a:Lt0/b;

    const-string v8, "Stale connection check"

    invoke-virtual {v7, v8}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v7}, La0/j;->A()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lw0/o;->a:Lt0/b;

    const-string v8, "Stale connection detected"

    invoke-virtual {v7, v8}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v7}, La0/j;->close()V

    goto :goto_3

    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_4
    :goto_3
    instance-of v7, p2, Lf0/a;

    if-eqz v7, :cond_5

    move-object v7, p2

    check-cast v7, Lf0/a;

    iget-object v8, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v7, v8}, Lf0/a;->b(Ll0/h;)V
    :try_end_2
    .catch Lx0/e; {:try_start_2 .. :try_end_2} :catch_3
    .catch La0/m; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :try_start_3
    invoke-direct {p0, v4, p3}, Lw0/o;->k(Lw0/v;LG0/e;)V
    :try_end_3
    .catch Lw0/x; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lx0/e; {:try_start_3 .. :try_end_3} :catch_3
    .catch La0/m; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v3}, Lw0/u;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v8, p0, Lw0/o;->p:Lb0/h;

    new-instance v9, Lv0/b;

    invoke-direct {v9}, Lv0/b;-><init>()V

    new-instance v10, Lb0/p;

    invoke-direct {v10, v7}, Lb0/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lb0/h;->i(Lb0/c;Lb0/m;)V

    :cond_6
    iget-object v7, p0, Lw0/o;->v:La0/n;

    if-eqz v7, :cond_7

    move-object p1, v7

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lw0/u;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v7}, Li0/d;->a(Ljava/net/URI;)La0/n;

    move-result-object p1

    :cond_8
    :goto_4
    if-nez p1, :cond_9

    invoke-virtual {v5}, Ln0/b;->d()La0/n;

    move-result-object p1

    :cond_9
    invoke-virtual {v3}, Lw0/u;->n()V

    invoke-virtual {p0, v3, v5}, Lw0/o;->j(Lw0/u;Ln0/b;)V

    const-string v7, "http.target_host"

    invoke-interface {p3, v7, p1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "http.route"

    invoke-interface {p3, v7, v5}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http.connection"

    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {p3, v5, v7}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lw0/o;->f:LG0/h;

    iget-object v7, p0, Lw0/o;->g:LG0/g;

    invoke-virtual {v5, v3, v7, p3}, LG0/h;->g(La0/q;LG0/g;LG0/e;)V

    invoke-direct {p0, v4, p3}, Lw0/o;->l(Lw0/v;LG0/e;)La0/s;

    move-result-object v3

    if-nez v3, :cond_a

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v3, v2}, La0/p;->c(LE0/e;)V

    iget-object v2, p0, Lw0/o;->f:LG0/h;

    iget-object v5, p0, Lw0/o;->g:LG0/g;

    invoke-virtual {v2, v3, v5, p3}, LG0/h;->f(La0/s;LG0/g;LG0/e;)V

    iget-object v2, p0, Lw0/o;->d:La0/b;

    invoke-interface {v2, v3, p3}, La0/b;->a(La0/s;LG0/e;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v5, p0, Lw0/o;->e:Ll0/f;

    invoke-interface {v5, v3, p3}, Ll0/f;->a(La0/s;LG0/e;)J

    move-result-wide v7

    iget-object v5, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v5}, Lt0/b;->e()Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_b
    const-string v5, "indefinitely"

    :goto_5
    iget-object v9, p0, Lw0/o;->a:Lt0/b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection can be kept alive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_c
    iget-object v5, p0, Lw0/o;->o:Ll0/n;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Ll0/n;->i(JLjava/util/concurrent/TimeUnit;)V

    :cond_d
    invoke-virtual {p0, v4, v3, p3}, Lw0/o;->h(Lw0/v;La0/s;LG0/e;)Lw0/v;

    move-result-object v5

    if-nez v5, :cond_e

    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_e
    if-eqz v2, :cond_f

    invoke-interface {v3}, La0/s;->getEntity()La0/k;

    move-result-object v7

    invoke-static {v7}, LH0/g;->a(La0/k;)V

    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v7}, Ll0/n;->m()V

    goto :goto_6

    :cond_f
    iget-object v7, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v7}, La0/j;->close()V

    iget-object v7, p0, Lw0/o;->q:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->d()Lb0/b;

    move-result-object v7

    sget-object v8, Lb0/b;->b:Lb0/b;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_10

    iget-object v7, p0, Lw0/o;->q:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->b()Lb0/c;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lw0/o;->q:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->b()Lb0/c;

    move-result-object v7

    invoke-interface {v7}, Lb0/c;->c()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lw0/o;->a:Lt0/b;

    const-string v9, "Resetting proxy auth state"

    invoke-virtual {v7, v9}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v7, p0, Lw0/o;->q:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->e()V

    :cond_10
    iget-object v7, p0, Lw0/o;->p:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->d()Lb0/b;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_11

    iget-object v7, p0, Lw0/o;->p:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->b()Lb0/c;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lw0/o;->p:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->b()Lb0/c;

    move-result-object v7

    invoke-interface {v7}, Lb0/c;->c()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lw0/o;->a:Lt0/b;

    const-string v8, "Resetting target auth state"

    invoke-virtual {v7, v8}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v7, p0, Lw0/o;->p:Lb0/h;

    invoke-virtual {v7}, Lb0/h;->e()V

    :cond_11
    :goto_6
    invoke-virtual {v5}, Lw0/v;->b()Ln0/b;

    move-result-object v7

    invoke-virtual {v4}, Lw0/v;->b()Ln0/b;

    move-result-object v4

    invoke-virtual {v7, v4}, Ln0/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0}, Lw0/o;->i()V

    :cond_12
    move-object v4, v5

    :goto_7
    iget-object v5, p0, Lw0/o;->o:Ll0/n;

    if-eqz v5, :cond_2

    if-nez v6, :cond_13

    iget-object v5, p0, Lw0/o;->m:Lc0/p;

    invoke-interface {v5, p3}, Lc0/p;->a(LG0/e;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p3, v0, v6}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    if-eqz v6, :cond_2

    iget-object v5, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v5, v6}, Ll0/n;->C(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_5
    move-exception p1

    iget-object p2, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->e()Z

    move-result p2

    if-eqz p2, :cond_14

    iget-object p2, p0, Lw0/o;->a:Lt0/b;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p1}, Lw0/x;->a()La0/s;

    move-result-object v3

    :cond_15
    if-eqz v3, :cond_17

    invoke-interface {v3}, La0/s;->getEntity()La0/k;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-interface {v3}, La0/s;->getEntity()La0/k;

    move-result-object p1

    invoke-interface {p1}, La0/k;->a()Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_8

    :cond_16
    invoke-interface {v3}, La0/s;->getEntity()La0/k;

    move-result-object p1

    new-instance p2, Ll0/a;

    iget-object p3, p0, Lw0/o;->o:Ll0/n;

    invoke-direct {p2, p1, p3, v2}, Ll0/a;-><init>(La0/k;Ll0/n;Z)V

    invoke-interface {v3, p2}, La0/s;->a(La0/k;)V

    goto :goto_9

    :cond_17
    :goto_8
    if-eqz v2, :cond_18

    iget-object p1, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {p1}, Ll0/n;->m()V

    :cond_18
    invoke-virtual {p0}, Lw0/o;->i()V
    :try_end_4
    .catch Lx0/e; {:try_start_4 .. :try_end_4} :catch_3
    .catch La0/m; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_9
    return-object v3

    :goto_a
    invoke-direct {p0}, Lw0/o;->b()V

    throw p1

    :goto_b
    invoke-direct {p0}, Lw0/o;->b()V

    throw p1

    :goto_c
    invoke-direct {p0}, Lw0/o;->b()V

    throw p1

    :goto_d
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_f

    :goto_e
    throw p2

    :goto_f
    goto :goto_e
.end method

.method protected c(Ln0/b;LG0/e;)La0/q;
    .locals 2

    invoke-virtual {p1}, Ln0/b;->d()La0/n;

    move-result-object p1

    invoke-virtual {p1}, La0/n;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, La0/n;->c()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lw0/o;->b:Ll0/b;

    invoke-interface {v0}, Ll0/b;->b()Lo0/h;

    move-result-object v0

    invoke-virtual {p1}, La0/n;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo0/h;->c(Ljava/lang/String;)Lo0/d;

    move-result-object p1

    invoke-virtual {p1}, Lo0/d;->a()I

    move-result v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lw0/o;->n:LE0/e;

    invoke-static {p2}, LE0/f;->b(LE0/e;)La0/C;

    move-result-object p2

    new-instance v0, LD0/h;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, p1, p2}, LD0/h;-><init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V

    return-object v0
.end method

.method protected d(Ln0/b;ILG0/e;)Z
    .locals 0

    new-instance p1, La0/m;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, La0/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected e(Ln0/b;LG0/e;)Z
    .locals 9

    invoke-virtual {p1}, Ln0/b;->h()La0/n;

    move-result-object v6

    invoke-virtual {p1}, Ln0/b;->d()La0/n;

    move-result-object v7

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v0}, La0/j;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw0/o;->o:Ll0/n;

    iget-object v1, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v0, p1, p2, v1}, Ll0/n;->p(Ln0/b;LG0/e;LE0/e;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lw0/o;->c(Ln0/b;LG0/e;)La0/q;

    move-result-object v0

    iget-object v1, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v0, v1}, La0/p;->c(LE0/e;)V

    const-string v1, "http.target_host"

    invoke-interface {p2, v1, v7}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.route"

    invoke-interface {p2, v1, p1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.proxy_host"

    invoke-interface {p2, v1, v6}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.connection"

    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {p2, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.request"

    invoke-interface {p2, v1, v0}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lw0/o;->f:LG0/h;

    iget-object v2, p0, Lw0/o;->g:LG0/g;

    invoke-virtual {v1, v0, v2, p2}, LG0/h;->g(La0/q;LG0/g;LG0/e;)V

    iget-object v1, p0, Lw0/o;->f:LG0/h;

    iget-object v2, p0, Lw0/o;->o:Ll0/n;

    invoke-virtual {v1, v0, v2, p2}, LG0/h;->e(La0/q;La0/i;LG0/e;)La0/s;

    move-result-object v8

    iget-object v0, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v8, v0}, La0/p;->c(LE0/e;)V

    iget-object v0, p0, Lw0/o;->f:LG0/h;

    iget-object v1, p0, Lw0/o;->g:LG0/g;

    invoke-virtual {v0, v8, v1, p2}, LG0/h;->f(La0/s;LG0/g;LG0/e;)V

    invoke-interface {v8}, La0/s;->h()La0/F;

    move-result-object v0

    invoke-interface {v0}, La0/F;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lw0/o;->n:LE0/e;

    invoke-static {v0}, Lg0/b;->b(LE0/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw0/o;->r:Lw0/r;

    iget-object v3, p0, Lw0/o;->l:Lc0/b;

    iget-object v4, p0, Lw0/o;->q:Lb0/h;

    move-object v1, v6

    move-object v2, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lv0/f;->b(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lw0/o;->r:Lw0/r;

    iget-object v3, p0, Lw0/o;->l:Lc0/b;

    iget-object v4, p0, Lw0/o;->q:Lb0/h;

    move-object v1, v6

    move-object v2, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lw0/r;->c(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lw0/o;->d:La0/b;

    invoke-interface {v0, v8, p2}, La0/b;->a(La0/s;LG0/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw0/o;->a:Lt0/b;

    const-string v1, "Connection kept alive"

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    invoke-interface {v8}, La0/s;->getEntity()La0/k;

    move-result-object v0

    invoke-static {v0}, LH0/g;->a(La0/k;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v0}, La0/j;->close()V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v8}, La0/s;->h()La0/F;

    move-result-object p1

    invoke-interface {p1}, La0/F;->b()I

    move-result p1

    const/16 p2, 0x12b

    if-le p1, p2, :cond_5

    invoke-interface {v8}, La0/s;->getEntity()La0/k;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Ls0/c;

    invoke-direct {p2, p1}, Ls0/c;-><init>(La0/k;)V

    invoke-interface {v8, p2}, La0/s;->a(La0/k;)V

    :cond_4
    iget-object p1, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {p1}, La0/j;->close()V

    new-instance p1, Lw0/x;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CONNECT refused by proxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, La0/s;->h()La0/F;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v8}, Lw0/x;-><init>(Ljava/lang/String;La0/s;)V

    throw p1

    :cond_5
    iget-object p1, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {p1}, Ll0/n;->m()V

    const/4 p1, 0x0

    return p1

    :cond_6
    new-instance p1, La0/m;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected response to CONNECT request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, La0/s;->h()La0/F;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/m;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected f(La0/n;La0/q;LG0/e;)Ln0/b;
    .locals 2

    iget-object v0, p0, Lw0/o;->c:Ln0/d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, La0/p;->getParams()LE0/e;

    move-result-object p1

    const-string v1, "http.default-host"

    invoke-interface {p1, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/n;

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Ln0/d;->a(La0/n;La0/q;LG0/e;)Ln0/b;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ln0/b;LG0/e;)V
    .locals 6

    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    :cond_0
    iget-object v1, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v1}, Ll0/n;->d()Ln0/b;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ln0/c;->a(Ln0/e;Ln0/e;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown step indicator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from RouteDirector."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v1, p0, Lw0/o;->o:Ll0/n;

    iget-object v3, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v1, p2, v3}, Ll0/n;->e(LG0/e;LE0/e;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Ln0/b;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1, p2}, Lw0/o;->d(Ln0/b;ILG0/e;)Z

    move-result v3

    iget-object v4, p0, Lw0/o;->a:Lt0/b;

    const-string v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v4, p0, Lw0/o;->o:Ll0/n;

    invoke-virtual {p1, v1}, Ln0/b;->c(I)La0/n;

    move-result-object v1

    iget-object v5, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v4, v1, v3, v5}, Ll0/n;->g(La0/n;ZLE0/e;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lw0/o;->e(Ln0/b;LG0/e;)Z

    move-result v1

    iget-object v3, p0, Lw0/o;->a:Lt0/b;

    const-string v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lw0/o;->o:Ll0/n;

    iget-object v4, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v3, v1, v4}, Ll0/n;->x(ZLE0/e;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lw0/o;->o:Ll0/n;

    iget-object v3, p0, Lw0/o;->n:LE0/e;

    invoke-interface {v1, p1, p2, v3}, Ll0/n;->p(Ln0/b;LG0/e;LE0/e;)V

    :goto_0
    :pswitch_4
    if-gtz v2, :cond_0

    return-void

    :pswitch_5
    new-instance p2, La0/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to establish route: planned = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; current = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/m;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected h(Lw0/v;La0/s;LG0/e;)Lw0/v;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lw0/v;->b()Ln0/b;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lw0/v;->a()Lw0/u;

    move-result-object v10

    invoke-virtual {v10}, LD0/a;->getParams()LE0/e;

    move-result-object v11

    invoke-static {v11}, Lg0/b;->b(LE0/e;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "http.target_host"

    invoke-interface {v8, v1}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/n;

    if-nez v1, :cond_0

    invoke-virtual {v9}, Ln0/b;->d()La0/n;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, La0/n;->c()I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, v0, Lw0/o;->b:Ll0/b;

    invoke-interface {v2}, Ll0/b;->b()Lo0/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo0/h;->b(La0/n;)Lo0/d;

    move-result-object v2

    new-instance v3, La0/n;

    invoke-virtual {v1}, La0/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lo0/d;->a()I

    move-result v2

    invoke-virtual {v1}, La0/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v2, v1}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v12, v3

    goto :goto_0

    :cond_1
    move-object v12, v1

    :goto_0
    iget-object v1, v0, Lw0/o;->r:Lw0/r;

    iget-object v4, v0, Lw0/o;->k:Lc0/b;

    iget-object v5, v0, Lw0/o;->p:Lb0/h;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lv0/f;->b(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z

    move-result v13

    invoke-virtual {v9}, Ln0/b;->h()La0/n;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v9}, Ln0/b;->d()La0/n;

    move-result-object v1

    :cond_2
    move-object v14, v1

    iget-object v1, v0, Lw0/o;->r:Lw0/r;

    iget-object v4, v0, Lw0/o;->l:Lc0/b;

    iget-object v5, v0, Lw0/o;->q:Lb0/h;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lv0/f;->b(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z

    move-result v15

    if-eqz v13, :cond_3

    iget-object v1, v0, Lw0/o;->r:Lw0/r;

    iget-object v4, v0, Lw0/o;->k:Lc0/b;

    iget-object v5, v0, Lw0/o;->p:Lb0/h;

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lw0/r;->c(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    if-eqz v15, :cond_4

    iget-object v1, v0, Lw0/o;->r:Lw0/r;

    iget-object v4, v0, Lw0/o;->l:Lc0/b;

    iget-object v5, v0, Lw0/o;->q:Lb0/h;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lw0/r;->c(La0/n;La0/s;Lc0/b;Lb0/h;LG0/e;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    invoke-static {v11}, Lg0/b;->c(LE0/e;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lw0/o;->j:Lc0/n;

    invoke-interface {v1, v10, v7, v8}, Lc0/n;->b(La0/q;La0/s;LG0/e;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, v0, Lw0/o;->t:I

    iget v3, v0, Lw0/o;->u:I

    if-ge v1, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lw0/o;->t:I

    iput-object v2, v0, Lw0/o;->v:La0/n;

    iget-object v1, v0, Lw0/o;->j:Lc0/n;

    invoke-interface {v1, v10, v7, v8}, Lc0/n;->a(La0/q;La0/s;LG0/e;)Lf0/i;

    move-result-object v1

    invoke-virtual {v10}, Lw0/u;->k()La0/q;

    move-result-object v2

    invoke-interface {v2}, La0/p;->getAllHeaders()[La0/e;

    move-result-object v2

    invoke-interface {v1, v2}, La0/p;->f([La0/e;)V

    invoke-interface {v1}, Lf0/i;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Li0/d;->a(Ljava/net/URI;)La0/n;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v9}, Ln0/b;->d()La0/n;

    move-result-object v4

    invoke-virtual {v4, v3}, La0/n;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lw0/o;->a:Lt0/b;

    const-string v5, "Resetting target auth state"

    invoke-virtual {v4, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v4, v0, Lw0/o;->p:Lb0/h;

    invoke-virtual {v4}, Lb0/h;->e()V

    iget-object v4, v0, Lw0/o;->q:Lb0/h;

    invoke-virtual {v4}, Lb0/h;->b()Lb0/c;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lb0/c;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lw0/o;->a:Lt0/b;

    const-string v5, "Resetting proxy auth state"

    invoke-virtual {v4, v5}, Lt0/b;->a(Ljava/lang/Object;)V

    iget-object v4, v0, Lw0/o;->q:Lb0/h;

    invoke-virtual {v4}, Lb0/h;->e()V

    :cond_5
    invoke-direct {v0, v1}, Lw0/o;->m(La0/q;)Lw0/u;

    move-result-object v1

    invoke-virtual {v1, v11}, LD0/a;->c(LE0/e;)V

    invoke-virtual {v0, v3, v1, v8}, Lw0/o;->f(La0/n;La0/q;LG0/e;)Ln0/b;

    move-result-object v3

    new-instance v4, Lw0/v;

    invoke-direct {v4, v1, v3}, Lw0/v;-><init>(Lw0/u;Ln0/b;)V

    iget-object v1, v0, Lw0/o;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lw0/o;->a:Lt0/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' via "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_6
    return-object v4

    :cond_7
    new-instance v1, La0/B;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La0/B;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Lc0/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum redirects ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lw0/o;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") exceeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lc0/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    return-object v2
.end method

.method protected i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lw0/o;->o:Ll0/n;

    invoke-interface {v0}, Ll0/h;->D()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lw0/o;->a:Lt0/b;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lt0/b;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw0/o;->o:Ll0/n;

    return-void
.end method

.method protected j(Lw0/u;Ln0/b;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lw0/u;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Ln0/b;->h()La0/n;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ln0/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ln0/b;->d()La0/n;

    move-result-object p2

    invoke-static {v0, p2, v2}, Li0/d;->f(Ljava/net/URI;La0/n;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    invoke-static {v0}, Li0/d;->e(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-static {v0, p2, v2}, Li0/d;->f(Ljava/net/URI;La0/n;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Li0/d;->e(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lw0/u;->o(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, La0/B;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw0/u;->getRequestLine()La0/E;

    move-result-object p1

    invoke-interface {p1}, La0/E;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
