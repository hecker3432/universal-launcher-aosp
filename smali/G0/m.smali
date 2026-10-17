.class public LG0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LG0/m;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 2

    const-string p2, "HTTP request"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "User-Agent"

    invoke-interface {p1, p2}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http.useragent"

    invoke-interface {v0, v1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, LG0/m;->a:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1, p2, v0}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
