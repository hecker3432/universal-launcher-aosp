.class public Lw0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/n;


# static fields
.field public static final b:Lw0/m;

.field private static final c:[Ljava/lang/String;


# instance fields
.field public a:Lt0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw0/m;

    invoke-direct {v0}, Lw0/m;-><init>()V

    sput-object v0, Lw0/m;->b:Lw0/m;

    const-string v0, "GET"

    const-string v1, "HEAD"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw0/m;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lw0/m;->a:Lt0/b;

    return-void
.end method


# virtual methods
.method public a(La0/q;La0/s;LG0/e;)Lf0/i;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lw0/m;->d(La0/q;La0/s;LG0/e;)Ljava/net/URI;

    move-result-object p3

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lf0/g;

    invoke-direct {p1, p3}, Lf0/g;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lf0/f;

    invoke-direct {p1, p3}, Lf0/f;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_1
    invoke-interface {p2}, La0/s;->h()La0/F;

    move-result-object p2

    invoke-interface {p2}, La0/F;->b()I

    move-result p2

    const/16 v0, 0x133

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Lf0/j;->b(La0/q;)Lf0/j;

    move-result-object p1

    invoke-virtual {p1, p3}, Lf0/j;->d(Ljava/net/URI;)Lf0/j;

    move-result-object p1

    invoke-virtual {p1}, Lf0/j;->a()Lf0/i;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lf0/f;

    invoke-direct {p1, p3}, Lf0/f;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method public b(La0/q;La0/s;LG0/e;)Z
    .locals 2

    const-string p3, "HTTP request"

    invoke-static {p1, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP response"

    invoke-static {p2, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, La0/s;->h()La0/F;

    move-result-object p3

    invoke-interface {p3}, La0/F;->b()I

    move-result p3

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p1

    invoke-interface {p1}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "location"

    invoke-interface {p2, v0}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object p2

    const/16 v0, 0x133

    if-eq p3, v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0, p1}, Lw0/m;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    :pswitch_2
    invoke-virtual {p0, p1}, Lw0/m;->e(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    :try_start_0
    new-instance v0, Li0/c;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Li0/c;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Li0/c;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li0/c;->r(Ljava/lang/String;)Li0/c;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Li0/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LH0/i;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Li0/c;->s(Ljava/lang/String;)Li0/c;

    :cond_1
    invoke-virtual {v0}, Li0/c;->b()Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance v1, La0/B;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid redirect URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(La0/q;La0/s;LG0/e;)Ljava/net/URI;
    .locals 5

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lh0/a;->h(LG0/e;)Lh0/a;

    move-result-object v0

    const-string v1, "location"

    invoke-interface {p2, v1}, La0/p;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lw0/m;->a:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->e()Z

    move-result v1

    const-string v2, "\'"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw0/m;->a:Lt0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect requested to location \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lh0/a;->s()Ld0/a;

    move-result-object v1

    invoke-virtual {p0, p2}, Lw0/m;->c(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ld0/a;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, LG0/f;->f()La0/n;

    move-result-object v3

    const-string v4, "Target host"

    invoke-static {v3, v4}, LH0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p1

    invoke-interface {p1}, La0/E;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v4, v3, p1}, Li0/d;->f(Ljava/net/URI;La0/n;Z)Ljava/net/URI;

    move-result-object p1

    invoke-static {p1, p2}, Li0/d;->c(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, La0/B;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Relative redirect location \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' not allowed"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string p1, "http.protocol.redirect-locations"

    invoke-virtual {v0, p1}, LG0/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/t;

    if-nez v0, :cond_3

    new-instance v0, Lw0/t;

    invoke-direct {v0}, Lw0/t;-><init>()V

    invoke-interface {p3, p1, v0}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Ld0/a;->f()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, p2}, Lw0/t;->b(Ljava/net/URI;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lc0/d;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Circular redirect to \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc0/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {v0, p2}, Lw0/t;->a(Ljava/net/URI;)V

    return-object p2

    :goto_2
    new-instance p2, La0/B;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    new-instance p1, La0/B;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received redirect response "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, La0/s;->h()La0/F;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but no location header"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lw0/m;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
