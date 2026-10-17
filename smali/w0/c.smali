.class public Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# instance fields
.field public a:Lt0/b;

.field private final b:Ljava/util/Map;

.field private final c:Ll0/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lw0/c;-><init>(Ll0/q;)V

    return-void
.end method

.method public constructor <init>(Ll0/q;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lw0/c;->a:Lt0/b;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lw0/c;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lx0/j;->a:Lx0/j;

    :goto_0
    iput-object p1, p0, Lw0/c;->c:Ll0/q;

    return-void
.end method


# virtual methods
.method public a(La0/n;)Lb0/c;
    .locals 3

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lw0/c;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lw0/c;->d(La0/n;)La0/n;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb0/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lw0/c;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw0/c;->a:Lt0/b;

    const-string v2, "Unexpected error while de-serializing auth scheme"

    invoke-virtual {v1, v2, p1}, Lt0/b;->j(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0

    :goto_1
    iget-object v1, p0, Lw0/c;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw0/c;->a:Lt0/b;

    const-string v2, "Unexpected I/O error while de-serializing auth scheme"

    invoke-virtual {v1, v2, p1}, Lt0/b;->j(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public b(La0/n;Lb0/c;)V
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    iget-object p2, p0, Lw0/c;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lw0/c;->d(La0/n;)La0/n;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lw0/c;->a:Lt0/b;

    invoke-virtual {p2}, Lt0/b;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lw0/c;->a:Lt0/b;

    const-string v0, "Unexpected I/O error while serializing auth scheme"

    invoke-virtual {p2, v0, p1}, Lt0/b;->j(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw0/c;->a:Lt0/b;

    invoke-virtual {p1}, Lt0/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lw0/c;->a:Lt0/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth scheme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not serializable"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(La0/n;)V
    .locals 1

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lw0/c;->b:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lw0/c;->d(La0/n;)La0/n;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected d(La0/n;)La0/n;
    .locals 3

    invoke-virtual {p1}, La0/n;->c()I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lw0/c;->c:Ll0/q;

    invoke-interface {v0, p1}, Ll0/q;->a(La0/n;)I

    move-result v0
    :try_end_0
    .catch Ll0/r; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, La0/n;

    invoke-virtual {p1}, La0/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, La0/n;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, La0/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    :catch_0
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw0/c;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
