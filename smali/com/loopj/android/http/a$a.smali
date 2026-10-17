.class Lcom/loopj/android/http/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/a;-><init>(Lo0/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loopj/android/http/a;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/a$a;->a:Lcom/loopj/android/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 8

    const-string p2, "Accept-Encoding"

    invoke-interface {p1, p2}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gzip"

    invoke-interface {p1, p2, v0}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/loopj/android/http/a$a;->a:Lcom/loopj/android/http/a;

    invoke-static {p2}, Lcom/loopj/android/http/a;->a(Lcom/loopj/android/http/a;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, La0/p;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object v1

    sget-object v2, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    iget-object v3, p0, Lcom/loopj/android/http/a$a;->a:Lcom/loopj/android/http/a;

    invoke-static {v3}, Lcom/loopj/android/http/a;->a(Lcom/loopj/android/http/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v5, v6, v3

    const-string v3, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsyncHttpClient"

    invoke-interface {v2, v4, v3}, Lcom/loopj/android/http/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, La0/p;->d(La0/e;)V

    :cond_1
    iget-object v1, p0, Lcom/loopj/android/http/a$a;->a:Lcom/loopj/android/http/a;

    invoke-static {v1}, Lcom/loopj/android/http/a;->a(Lcom/loopj/android/http/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, La0/p;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
