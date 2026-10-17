.class Lcom/ailife/ClockSkinTransfer/b456/c/k;
.super Lcom/ailife/ClockSkinTransfer/b456/c/j;


# direct methods
.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1

    const-string v0, "prefix"

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    const-string p1, "File.createTempFile(prefix, suffix, directory)"

    invoke-static {p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/io/File;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p0, "tmp"

    :cond_0
    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    move-object p2, v0

    check-cast p2, Ljava/io/File;

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/ailife/ClockSkinTransfer/b456/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/io/File;)Z
    .locals 4

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/g;->a(Ljava/io/File;)Lcom/ailife/ClockSkinTransfer/b456/c/d;

    move-result-object p0

    check-cast p0, Lcom/ailife/ClockSkinTransfer/b456/f/a;

    invoke-interface {p0}, Lcom/ailife/ClockSkinTransfer/b456/f/a;->a()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return v1
.end method
