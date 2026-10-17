.class abstract Lq/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lq/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field a:Lq/b$c;

.field b:Lq/b$c;


# direct methods
.method constructor <init>(Lq/b$c;Lq/b$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq/b$e;->a:Lq/b$c;

    iput-object p1, p0, Lq/b$e;->b:Lq/b$c;

    return-void
.end method

.method private h()Lq/b$c;
    .locals 2

    iget-object v0, p0, Lq/b$e;->b:Lq/b$c;

    iget-object v1, p0, Lq/b$e;->a:Lq/b$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lq/b$e;->f(Lq/b$c;)Lq/b$c;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c(Lq/b$c;)V
    .locals 1

    iget-object v0, p0, Lq/b$e;->a:Lq/b$c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lq/b$e;->b:Lq/b$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lq/b$e;->b:Lq/b$c;

    iput-object v0, p0, Lq/b$e;->a:Lq/b$c;

    :cond_0
    iget-object v0, p0, Lq/b$e;->a:Lq/b$c;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Lq/b$e;->e(Lq/b$c;)Lq/b$c;

    move-result-object v0

    iput-object v0, p0, Lq/b$e;->a:Lq/b$c;

    :cond_1
    iget-object v0, p0, Lq/b$e;->b:Lq/b$c;

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lq/b$e;->h()Lq/b$c;

    move-result-object p1

    iput-object p1, p0, Lq/b$e;->b:Lq/b$c;

    :cond_2
    return-void
.end method

.method abstract e(Lq/b$c;)Lq/b$c;
.end method

.method abstract f(Lq/b$c;)Lq/b$c;
.end method

.method public g()Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Lq/b$e;->b:Lq/b$c;

    invoke-direct {p0}, Lq/b$e;->h()Lq/b$c;

    move-result-object v1

    iput-object v1, p0, Lq/b$e;->b:Lq/b$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lq/b$e;->b:Lq/b$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lq/b$e;->g()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
