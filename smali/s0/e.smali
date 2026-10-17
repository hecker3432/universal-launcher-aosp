.class public final Ls0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Ls0/e;

.field public static final e:Ls0/e;

.field public static final f:Ls0/e;

.field public static final g:Ls0/e;

.field public static final h:Ls0/e;

.field public static final i:Ls0/e;

.field public static final j:Ls0/e;

.field public static final k:Ls0/e;

.field public static final l:Ls0/e;

.field public static final m:Ls0/e;

.field public static final n:Ls0/e;

.field public static final o:Ls0/e;

.field public static final p:Ls0/e;

.field public static final q:Ls0/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/nio/charset/Charset;

.field private final c:[La0/y;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, La0/c;->c:Ljava/nio/charset/Charset;

    const-string v1, "application/atom+xml"

    invoke-static {v1, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v1

    sput-object v1, Ls0/e;->d:Ls0/e;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v1

    sput-object v1, Ls0/e;->e:Ls0/e;

    const-string v1, "application/json"

    sget-object v2, La0/c;->a:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v1

    sput-object v1, Ls0/e;->f:Ls0/e;

    const-string v1, "application/octet-stream"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v1

    sput-object v1, Ls0/e;->g:Ls0/e;

    const-string v3, "application/svg+xml"

    invoke-static {v3, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v3

    sput-object v3, Ls0/e;->h:Ls0/e;

    const-string v3, "application/xhtml+xml"

    invoke-static {v3, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v3

    sput-object v3, Ls0/e;->i:Ls0/e;

    const-string v3, "application/xml"

    invoke-static {v3, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v3

    sput-object v3, Ls0/e;->j:Ls0/e;

    const-string v3, "multipart/form-data"

    invoke-static {v3, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v3

    sput-object v3, Ls0/e;->k:Ls0/e;

    const-string v3, "text/html"

    invoke-static {v3, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v3

    sput-object v3, Ls0/e;->l:Ls0/e;

    const-string v3, "text/plain"

    invoke-static {v3, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v3

    sput-object v3, Ls0/e;->m:Ls0/e;

    const-string v4, "text/xml"

    invoke-static {v4, v0}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v0

    sput-object v0, Ls0/e;->n:Ls0/e;

    const-string v0, "*/*"

    invoke-static {v0, v2}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object v0

    sput-object v0, Ls0/e;->o:Ls0/e;

    sput-object v3, Ls0/e;->p:Ls0/e;

    sput-object v1, Ls0/e;->q:Ls0/e;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/e;->a:Ljava/lang/String;

    iput-object p2, p0, Ls0/e;->b:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    iput-object p1, p0, Ls0/e;->c:[La0/y;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;[La0/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/e;->a:Ljava/lang/String;

    iput-object p2, p0, Ls0/e;->b:Ljava/nio/charset/Charset;

    iput-object p3, p0, Ls0/e;->c:[La0/y;

    return-void
.end method

.method private static a(La0/f;Z)Ls0/e;
    .locals 1

    invoke-interface {p0}, La0/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, La0/f;->b()[La0/y;

    move-result-object p0

    invoke-static {v0, p0, p1}, Ls0/e;->c(Ljava/lang/String;[La0/y;Z)Ls0/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;
    .locals 2

    const-string v0, "MIME type"

    invoke-static {p0, v0}, LH0/a;->d(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls0/e;->g(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, LH0/a;->a(ZLjava/lang/String;)V

    new-instance v0, Ls0/e;

    invoke-direct {v0, p0, p1}, Ls0/e;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;[La0/y;Z)Ls0/e;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    invoke-interface {v3}, La0/y;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, La0/y;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LH0/i;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object p2, v2

    :goto_2
    new-instance v0, Ls0/e;

    array-length v1, p1

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    invoke-direct {v0, p0, p2, p1}, Ls0/e;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;[La0/y;)V

    return-object v0
.end method

.method public static d(La0/k;)Ls0/e;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, La0/k;->h()La0/e;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, La0/e;->a()[La0/f;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ls0/e;->a(La0/f;Z)Ls0/e;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public e()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Ls0/e;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls0/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, LH0/d;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    iget-object v1, p0, Ls0/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    iget-object v1, p0, Ls0/e;->c:[La0/y;

    if-eqz v1, :cond_0

    const-string v1, "; "

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    sget-object v1, LD0/f;->b:LD0/f;

    iget-object v2, p0, Ls0/e;->c:[La0/y;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, LD0/f;->g(LH0/d;[La0/y;Z)LH0/d;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ls0/e;->b:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    iget-object v1, p0, Ls0/e;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LH0/d;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, LH0/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
