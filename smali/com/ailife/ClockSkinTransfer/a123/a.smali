.class public abstract Lcom/ailife/ClockSkinTransfer/a123/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinTransfer/a123/a$q;,
        Lcom/ailife/ClockSkinTransfer/a123/a$t;,
        Lcom/ailife/ClockSkinTransfer/a123/a$s;,
        Lcom/ailife/ClockSkinTransfer/a123/a$r;,
        Lcom/ailife/ClockSkinTransfer/a123/a$p;,
        Lcom/ailife/ClockSkinTransfer/a123/a$o;,
        Lcom/ailife/ClockSkinTransfer/a123/a$n;,
        Lcom/ailife/ClockSkinTransfer/a123/a$m;,
        Lcom/ailife/ClockSkinTransfer/a123/a$l;,
        Lcom/ailife/ClockSkinTransfer/a123/a$k;,
        Lcom/ailife/ClockSkinTransfer/a123/a$c;,
        Lcom/ailife/ClockSkinTransfer/a123/a$g;,
        Lcom/ailife/ClockSkinTransfer/a123/a$j;,
        Lcom/ailife/ClockSkinTransfer/a123/a$i;,
        Lcom/ailife/ClockSkinTransfer/a123/a$h;,
        Lcom/ailife/ClockSkinTransfer/a123/a$f;,
        Lcom/ailife/ClockSkinTransfer/a123/a$e;,
        Lcom/ailife/ClockSkinTransfer/a123/a$d;,
        Lcom/ailife/ClockSkinTransfer/a123/a$b;,
        Lcom/ailife/ClockSkinTransfer/a123/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/logging/Logger;


# instance fields
.field protected a:Lcom/ailife/ClockSkinTransfer/a123/a$a;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private volatile h:Ljava/net/ServerSocket;

.field private i:Lcom/ailife/ClockSkinTransfer/a123/a$q;

.field private j:Ljava/lang/Thread;

.field private k:Lcom/ailife/ClockSkinTransfer/a123/a$t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "([ |\t]*Content-Disposition[ |\t]*:)(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->b:Ljava/util/regex/Pattern;

    const-string v0, "([ |\t]*content-type[ |\t]*:)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->c:Ljava/util/regex/Pattern;

    const-string v0, "[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*[\'|\"]([^\"^\']*)[\'|\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->d:Ljava/util/regex/Pattern;

    const-class v0, Lcom/ailife/ClockSkinTransfer/a123/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/ailife/ClockSkinTransfer/a123/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ailife/ClockSkinTransfer/a123/a$g;

    invoke-direct {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$g;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->i:Lcom/ailife/ClockSkinTransfer/a123/a$q;

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->f:Ljava/lang/String;

    iput p2, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->g:I

    new-instance p1, Lcom/ailife/ClockSkinTransfer/a123/a$j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/ailife/ClockSkinTransfer/a123/a$j;-><init>(Lcom/ailife/ClockSkinTransfer/a123/a;Lcom/ailife/ClockSkinTransfer/a123/a$1;)V

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$t;)V

    new-instance p1, Lcom/ailife/ClockSkinTransfer/a123/a$f;

    invoke-direct {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$f;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$a;)V

    return-void
.end method

.method public static a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/ailife/ClockSkinTransfer/a123/a$n;
    .locals 7

    new-instance v6, Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ailife/ClockSkinTransfer/a123/a$n;-><init>(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public static a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/a123/a$n;
    .locals 4

    new-instance v0, Lcom/ailife/ClockSkinTransfer/a123/a$c;

    invoke-direct {v0, p1}, Lcom/ailife/ClockSkinTransfer/a123/a$c;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array v0, v1, [B

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$c;->f()Lcom/ailife/ClockSkinTransfer/a123/a$c;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/ailife/ClockSkinTransfer/a123/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "encoding problem, responding nothing"

    invoke-virtual {p2, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p1, v1, [B

    :goto_0
    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$c;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/io/InputStream;J)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ailife/ClockSkinTransfer/a123/a;)Lcom/ailife/ClockSkinTransfer/a123/a$t;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->k:Lcom/ailife/ClockSkinTransfer/a123/a$t;

    return-object p0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->e:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Encoding not supported, ignored"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/a123/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/a123/a$n;
    .locals 2

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a$n$c;->b:Lcom/ailife/ClockSkinTransfer/a123/a$n$c;

    const-string v1, "text/html"

    invoke-static {v0, v1, p0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static final b(Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_3

    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/net/Socket;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/net/ServerSocket;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/net/ServerSocket;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown object to close"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->e:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Could not close"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/ailife/ClockSkinTransfer/a123/a;)I
    .locals 0

    iget p0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->g:I

    return p0
.end method

.method static synthetic d(Lcom/ailife/ClockSkinTransfer/a123/a;)Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->h:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic e()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->e:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic f()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic g()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->d:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic h()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a;->c:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->h:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->h:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected a(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/ailife/ClockSkinTransfer/a123/a$b;
    .locals 1

    new-instance v0, Lcom/ailife/ClockSkinTransfer/a123/a$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/ailife/ClockSkinTransfer/a123/a$b;-><init>(Lcom/ailife/ClockSkinTransfer/a123/a;Ljava/io/InputStream;Ljava/net/Socket;)V

    return-object v0
.end method

.method public a(Lcom/ailife/ClockSkinTransfer/a123/a$l;)Lcom/ailife/ClockSkinTransfer/a123/a$n;
    .locals 6

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$l;->c()Lcom/ailife/ClockSkinTransfer/a123/a$m;

    move-result-object v2

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a$m;->b:Lcom/ailife/ClockSkinTransfer/a123/a$m;

    invoke-virtual {v0, v2}, Lcom/ailife/ClockSkinTransfer/a123/a$m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a$m;->c:Lcom/ailife/ClockSkinTransfer/a123/a$m;

    invoke-virtual {v0, v2}, Lcom/ailife/ClockSkinTransfer/a123/a$m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {p1, v5}, Lcom/ailife/ClockSkinTransfer/a123/a$l;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/ailife/ClockSkinTransfer/a123/a$o; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-interface {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$l;->d()Ljava/util/Map;

    move-result-object v4

    const-string v0, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$l;->b()Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Ljava/lang/String;Lcom/ailife/ClockSkinTransfer/a123/a$m;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$o;->a()Lcom/ailife/ClockSkinTransfer/a123/a$n$c;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$o;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    sget-object v0, Lcom/ailife/ClockSkinTransfer/a123/a$n$c;->C:Lcom/ailife/ClockSkinTransfer/a123/a$n$c;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/ailife/ClockSkinTransfer/a123/a$m;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ailife/ClockSkinTransfer/a123/a$n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ailife/ClockSkinTransfer/a123/a$m;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ailife/ClockSkinTransfer/a123/a$n;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object p1, Lcom/ailife/ClockSkinTransfer/a123/a$n$c;->p:Lcom/ailife/ClockSkinTransfer/a123/a$n$c;

    const-string p2, "text/plain"

    const-string p3, "Not Found"

    invoke-static {p1, p2, p3}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n$b;Ljava/lang/String;Ljava/lang/String;)Lcom/ailife/ClockSkinTransfer/a123/a$n;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Lcom/ailife/ClockSkinTransfer/a123/a$p;
    .locals 1

    new-instance v0, Lcom/ailife/ClockSkinTransfer/a123/a$p;

    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinTransfer/a123/a$p;-><init>(Lcom/ailife/ClockSkinTransfer/a123/a;I)V

    return-object v0
.end method

.method public a(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/a123/a;->b()Lcom/ailife/ClockSkinTransfer/a123/a$q;

    move-result-object v0

    invoke-interface {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$q;->a()Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->h:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->h:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(I)Lcom/ailife/ClockSkinTransfer/a123/a$p;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->j:Ljava/lang/Thread;

    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p2, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->j:Ljava/lang/Thread;

    const-string v0, "NanoHttpd Main Listener"

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->j:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$p;->a(Lcom/ailife/ClockSkinTransfer/a123/a$p;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$p;->b(Lcom/ailife/ClockSkinTransfer/a123/a$p;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$p;->b(Lcom/ailife/ClockSkinTransfer/a123/a$p;)Ljava/io/IOException;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$p;->b(Lcom/ailife/ClockSkinTransfer/a123/a$p;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/ailife/ClockSkinTransfer/a123/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->a:Lcom/ailife/ClockSkinTransfer/a123/a$a;

    return-void
.end method

.method public a(Lcom/ailife/ClockSkinTransfer/a123/a$t;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->k:Lcom/ailife/ClockSkinTransfer/a123/a$t;

    return-void
.end method

.method protected a(Lcom/ailife/ClockSkinTransfer/a123/a$n;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$n;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/a123/a$n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lcom/ailife/ClockSkinTransfer/a123/a$q;
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->i:Lcom/ailife/ClockSkinTransfer/a123/a$q;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->a(IZ)V

    return-void
.end method

.method public c()V
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->b(I)V

    return-void
.end method

.method public d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->h:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->a:Lcom/ailife/ClockSkinTransfer/a123/a$a;

    invoke-interface {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$a;->a()V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ailife/ClockSkinTransfer/a123/a;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not stop all connections"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
