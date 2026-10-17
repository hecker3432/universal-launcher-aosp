.class Lcom/loopj/android/http/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/u;


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

    iput-object p1, p0, Lcom/loopj/android/http/a$b;->a:Lcom/loopj/android/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La0/s;LG0/e;)V
    .locals 5

    invoke-interface {p1}, La0/s;->getEntity()La0/k;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, La0/k;->b()La0/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, La0/e;->a()[La0/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, La0/f;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/loopj/android/http/a$d;

    invoke-direct {v0, p2}, Lcom/loopj/android/http/a$d;-><init>(La0/k;)V

    invoke-interface {p1, v0}, La0/s;->a(La0/k;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
