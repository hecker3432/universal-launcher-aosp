.class public abstract Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/l;


# instance fields
.field private a:Lb0/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb0/m;La0/q;LG0/e;)La0/e;
    .locals 0

    invoke-interface {p0, p1, p2}, Lb0/c;->d(Lb0/m;La0/q;)La0/e;

    move-result-object p1

    return-object p1
.end method

.method public f(La0/e;)V
    .locals 3

    const-string v0, "Header"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, La0/e;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lb0/k;->a:Lb0/k;

    iput-object v0, p0, Lv0/a;->a:Lb0/k;

    goto :goto_0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lb0/k;->b:Lb0/k;

    iput-object v0, p0, Lv0/a;->a:Lb0/k;

    :goto_0
    instance-of v0, p1, La0/d;

    if-eqz v0, :cond_1

    check-cast p1, La0/d;

    invoke-interface {p1}, La0/d;->c()LH0/d;

    move-result-object v0

    invoke-interface {p1}, La0/d;->b()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, LH0/d;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    invoke-virtual {v0, p1}, LH0/d;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0}, LH0/d;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, LH0/d;->charAt(I)C

    move-result v1

    invoke-static {v1}, LG0/d;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_2
    invoke-virtual {v0}, LH0/d;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, LH0/d;->charAt(I)C

    move-result v2

    invoke-static {v2}, LG0/d;->a(C)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, v1}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, LH0/d;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lv0/a;->i(LH0/d;II)V

    return-void

    :cond_4
    new-instance v0, Lb0/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scheme identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb0/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Lb0/o;

    const-string v0, "Header value is null"

    invoke-direct {p1, v0}, Lb0/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lb0/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lb0/o;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lv0/a;->a:Lb0/k;

    if-eqz v0, :cond_0

    sget-object v1, Lb0/k;->b:Lb0/k;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract i(LH0/d;II)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lb0/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
