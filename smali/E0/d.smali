.class public abstract LE0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LE0/e;)Lk0/b;
    .locals 3

    invoke-static {}, Lk0/b;->b()Lk0/b$a;

    move-result-object v0

    const-string v1, "http.connection.max-header-count"

    const/4 v2, -0x1

    invoke-interface {p0, v1, v2}, LE0/e;->c(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/b$a;->b(I)Lk0/b$a;

    move-result-object v0

    const-string v1, "http.connection.max-line-length"

    invoke-interface {p0, v1, v2}, LE0/e;->c(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lk0/b$a;->c(I)Lk0/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lk0/b$a;->a()Lk0/b;

    move-result-object p0

    return-object p0
.end method
