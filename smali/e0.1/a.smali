.class public Le0/a;
.super Ls0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, LG0/d;->a:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p1, v0}, Li0/e;->g(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0, p2}, Ls0/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ls0/e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ls0/g;-><init>(Ljava/lang/String;Ls0/e;)V

    return-void
.end method
