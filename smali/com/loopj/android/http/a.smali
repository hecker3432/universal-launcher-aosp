.class public Lcom/loopj/android/http/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/a$d;
    }
.end annotation


# static fields
.field public static j:Lcom/loopj/android/http/h;


# instance fields
.field private final a:Lw0/j;

.field private final b:LG0/e;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loopj/android/http/g;

    invoke-direct {v0}, Lcom/loopj/android/http/g;-><init>()V

    sput-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x50

    const/16 v1, 0x1bb

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/loopj/android/http/a;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Lo0/h;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/loopj/android/http/a;->e:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/loopj/android/http/a;->f:I

    iput v1, p0, Lcom/loopj/android/http/a;->g:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loopj/android/http/a;->i:Z

    new-instance v2, LE0/b;

    invoke-direct {v2}, LE0/b;-><init>()V

    iget v3, p0, Lcom/loopj/android/http/a;->f:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lm0/a;->e(LE0/e;J)V

    new-instance v3, Lm0/c;

    iget v4, p0, Lcom/loopj/android/http/a;->e:I

    invoke-direct {v3, v4}, Lm0/c;-><init>(I)V

    invoke-static {v2, v3}, Lm0/a;->c(LE0/e;Lm0/b;)V

    invoke-static {v2, v0}, Lm0/a;->d(LE0/e;I)V

    iget v0, p0, Lcom/loopj/android/http/a;->g:I

    invoke-static {v2, v0}, LE0/c;->h(LE0/e;I)V

    iget v0, p0, Lcom/loopj/android/http/a;->f:I

    invoke-static {v2, v0}, LE0/c;->g(LE0/e;I)V

    invoke-static {v2, v1}, LE0/c;->j(LE0/e;Z)V

    const/16 v0, 0x2000

    invoke-static {v2, v0}, LE0/c;->i(LE0/e;I)V

    sget-object v0, La0/v;->f:La0/v;

    invoke-static {v2, v0}, LE0/f;->e(LE0/e;La0/C;)V

    invoke-virtual {p0, p1, v2}, Lcom/loopj/android/http/a;->c(Lo0/h;LE0/b;)Ll0/b;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null"

    invoke-static {v1, v3}, Lcom/loopj/android/http/o;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/a;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/a;->c:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/loopj/android/http/a;->d:Ljava/util/Map;

    new-instance v1, LG0/n;

    new-instance v3, LG0/a;

    invoke-direct {v3}, LG0/a;-><init>()V

    invoke-direct {v1, v3}, LG0/n;-><init>(LG0/e;)V

    iput-object v1, p0, Lcom/loopj/android/http/a;->b:LG0/e;

    new-instance v1, Lw0/j;

    invoke-direct {v1, p1, v2}, Lw0/j;-><init>(Ll0/b;LE0/e;)V

    iput-object v1, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    new-instance p1, Lcom/loopj/android/http/a$a;

    invoke-direct {p1, p0}, Lcom/loopj/android/http/a$a;-><init>(Lcom/loopj/android/http/a;)V

    invoke-virtual {v1, p1}, Lw0/a;->D(La0/r;)V

    new-instance p1, Lcom/loopj/android/http/a$b;

    invoke-direct {p1, p0}, Lcom/loopj/android/http/a$b;-><init>(Lcom/loopj/android/http/a;)V

    invoke-virtual {v1, p1}, Lw0/a;->F(La0/u;)V

    new-instance p1, Lcom/loopj/android/http/a$c;

    invoke-direct {p1, p0}, Lcom/loopj/android/http/a$c;-><init>(Lcom/loopj/android/http/a;)V

    invoke-virtual {v1, p1, v0}, Lw0/a;->E(La0/r;I)V

    new-instance p1, Lcom/loopj/android/http/n;

    const/4 v0, 0x5

    const/16 v2, 0x5dc

    invoke-direct {p1, v0, v2}, Lcom/loopj/android/http/n;-><init>(II)V

    invoke-virtual {v1, p1}, Lw0/a;->r0(Lc0/i;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/loopj/android/http/a;->h(ZII)Lo0/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/loopj/android/http/a;-><init>(Lo0/h;)V

    return-void
.end method

.method static synthetic a(Lcom/loopj/android/http/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/loopj/android/http/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/loopj/android/http/n;->b(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static d(La0/k;)V
    .locals 6

    instance-of v0, p0, Ls0/f;

    if-eqz v0, :cond_2

    :try_start_0
    const-class v0, Ls0/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wrappedEntity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/k;

    if-eqz p0, :cond_2

    invoke-interface {p0}, La0/k;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "AsyncHttpClient"

    const-string v2, "wrappedEntity consume"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method private static h(ZII)Lo0/h;
    .locals 4

    const-string v0, "AsyncHttpClient"

    if-eqz p0, :cond_0

    sget-object v1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v2, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-interface {v1, v0, v2}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v2, "Invalid HTTP port number specified, defaulting to 80"

    invoke-interface {p1, v0, v2}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x50

    :cond_1
    if-ge p2, v1, :cond_2

    sget-object p2, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-interface {p2, v0, v1}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1bb

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/loopj/android/http/j;->q()Lp0/i;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lp0/i;->l()Lp0/i;

    move-result-object p0

    :goto_0
    new-instance v0, Lo0/h;

    invoke-direct {v0}, Lo0/h;-><init>()V

    new-instance v1, Lo0/d;

    const-string v2, "http"

    invoke-static {}, Lo0/c;->i()Lo0/c;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lo0/d;-><init>(Ljava/lang/String;Lo0/k;I)V

    invoke-virtual {v0, v1}, Lo0/h;->d(Lo0/d;)Lo0/d;

    new-instance p1, Lo0/d;

    const-string v1, "https"

    invoke-direct {p1, v1, p0, p2}, Lo0/d;-><init>(Ljava/lang/String;Lo0/k;I)V

    invoke-virtual {v0, p1}, Lo0/h;->d(Lo0/d;)Lo0/d;

    return-object v0
.end method

.method public static j(ZLjava/lang/String;Lcom/loopj/android/http/l;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "AsyncHttpClient"

    const-string v1, "getUrlWithQueryString encoding URL"

    invoke-interface {p2, v0, v1, p0}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static l(Ljava/io/PushbackInputStream;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    rsub-int/lit8 v4, v3, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v4, :cond_1

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    return v0

    :cond_1
    add-int/2addr v3, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    throw v1

    :cond_2
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    aget-byte p0, v2, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x1

    aget-byte v2, v2, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    const v2, 0x8b1f

    if-ne v2, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static u(Ljava/io/InputStream;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close input stream"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static v(Ljava/io/OutputStream;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close output stream"

    invoke-interface {v0, v1, v2, p0}, Lcom/loopj/android/http/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected c(Lo0/h;LE0/b;)Ll0/b;
    .locals 1

    new-instance v0, Ly0/g;

    invoke-direct {v0, p2, p1}, Ly0/g;-><init>(LE0/e;Lo0/h;)V

    return-object v0
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/l;Lcom/loopj/android/http/m;)Lcom/loopj/android/http/k;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    iget-object v2, p0, Lcom/loopj/android/http/a;->b:LG0/e;

    new-instance v3, Lcom/loopj/android/http/f;

    iget-boolean v0, p0, Lcom/loopj/android/http/a;->i:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/a;->j(ZLjava/lang/String;Lcom/loopj/android/http/l;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/f;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/a;->n(Lw0/j;LG0/e;Lf0/i;Ljava/lang/String;Lcom/loopj/android/http/m;Landroid/content/Context;)Lcom/loopj/android/http/k;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/m;)Lcom/loopj/android/http/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/a;->e(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/l;Lcom/loopj/android/http/m;)Lcom/loopj/android/http/k;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;[La0/e;Lcom/loopj/android/http/l;Lcom/loopj/android/http/m;)Lcom/loopj/android/http/k;
    .locals 7

    new-instance v3, Lcom/loopj/android/http/f;

    iget-boolean v0, p0, Lcom/loopj/android/http/a;->i:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/a;->j(ZLjava/lang/String;Lcom/loopj/android/http/l;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/loopj/android/http/f;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, La0/p;->f([La0/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    iget-object v2, p0, Lcom/loopj/android/http/a;->b:LG0/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/a;->n(Lw0/j;LG0/e;Lf0/i;Ljava/lang/String;Lcom/loopj/android/http/m;Landroid/content/Context;)Lcom/loopj/android/http/k;

    move-result-object p1

    return-object p1
.end method

.method protected i()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;[La0/e;Lcom/loopj/android/http/l;Lcom/loopj/android/http/m;)Lcom/loopj/android/http/k;
    .locals 7

    new-instance v3, Lf0/g;

    iget-boolean v0, p0, Lcom/loopj/android/http/a;->i:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/a;->j(ZLjava/lang/String;Lcom/loopj/android/http/l;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lf0/g;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, La0/p;->f([La0/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    iget-object v2, p0, Lcom/loopj/android/http/a;->b:LG0/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/a;->n(Lw0/j;LG0/e;Lf0/i;Ljava/lang/String;Lcom/loopj/android/http/m;Landroid/content/Context;)Lcom/loopj/android/http/k;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lw0/j;LG0/e;Lf0/i;Ljava/lang/String;Lcom/loopj/android/http/m;Landroid/content/Context;)Lcom/loopj/android/http/b;
    .locals 0

    new-instance p4, Lcom/loopj/android/http/b;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/loopj/android/http/b;-><init>(Lw0/a;LG0/e;Lf0/i;Lcom/loopj/android/http/m;)V

    return-object p4
.end method

.method protected n(Lw0/j;LG0/e;Lf0/i;Ljava/lang/String;Lcom/loopj/android/http/m;Landroid/content/Context;)Lcom/loopj/android/http/k;
    .locals 3

    if-eqz p3, :cond_8

    if-eqz p5, :cond_7

    invoke-interface {p5}, Lcom/loopj/android/http/m;->getUseSynchronousMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Lcom/loopj/android/http/m;->getUsePoolThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    instance-of v0, p3, Lf0/e;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lf0/e;

    invoke-virtual {v0}, Lf0/e;->getEntity()La0/k;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed contentType will be ignored because HttpEntity sets content type"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, La0/p;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-interface {p3}, La0/p;->getAllHeaders()[La0/e;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/m;->setRequestHeaders([La0/e;)V

    invoke-interface {p3}, Lf0/i;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/m;->setRequestURI(Ljava/net/URI;)V

    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/a;->m(Lw0/j;LG0/e;Lf0/i;Ljava/lang/String;Lcom/loopj/android/http/m;Landroid/content/Context;)Lcom/loopj/android/http/b;

    move-result-object p1

    iget-object p2, p0, Lcom/loopj/android/http/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance p2, Lcom/loopj/android/http/k;

    invoke-direct {p2, p1}, Lcom/loopj/android/http/k;-><init>(Lcom/loopj/android/http/b;)V

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/loopj/android/http/a;->c:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/loopj/android/http/a;->c:Ljava/util/Map;

    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_4

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iget-object p4, p0, Lcom/loopj/android/http/a;->c:Ljava/util/Map;

    invoke-interface {p4, p6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_4
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/loopj/android/http/k;

    invoke-virtual {p3}, Lcom/loopj/android/http/k;->d()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_6
    return-object p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ResponseHandler must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HttpUriRequest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public o(I)V
    .locals 2

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lcom/loopj/android/http/a;->f:I

    iget-object p1, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    invoke-virtual {p1}, Lw0/a;->j0()LE0/e;

    move-result-object p1

    iget v0, p0, Lcom/loopj/android/http/a;->f:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lm0/a;->e(LE0/e;J)V

    iget v0, p0, Lcom/loopj/android/http/a;->f:I

    invoke-static {p1, v0}, LE0/c;->g(LE0/e;I)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1}, Lcom/loopj/android/http/a;->q(ZZZ)V

    return-void
.end method

.method public q(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    invoke-virtual {v0}, Lw0/a;->j0()LE0/e;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p2}, LE0/e;->a(Ljava/lang/String;Z)LE0/e;

    iget-object p2, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    invoke-virtual {p2}, Lw0/a;->j0()LE0/e;

    move-result-object p2

    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p2, v0, p3}, LE0/e;->a(Ljava/lang/String;Z)LE0/e;

    iget-object p2, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    new-instance p3, Lcom/loopj/android/http/i;

    invoke-direct {p3, p1}, Lcom/loopj/android/http/i;-><init>(Z)V

    invoke-virtual {p2, p3}, Lw0/a;->s0(Lc0/m;)V

    return-void
.end method

.method public r(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lcom/loopj/android/http/a;->g:I

    iget-object p1, p0, Lcom/loopj/android/http/a;->a:Lw0/j;

    invoke-virtual {p1}, Lw0/a;->j0()LE0/e;

    move-result-object p1

    iget v0, p0, Lcom/loopj/android/http/a;->g:I

    invoke-static {p1, v0}, LE0/c;->h(LE0/e;I)V

    return-void
.end method

.method public s(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/a;->o(I)V

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/a;->r(I)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loopj/android/http/a;->i:Z

    return-void
.end method
