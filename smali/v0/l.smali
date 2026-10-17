.class public abstract Lv0/l;
.super Lv0/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final b:Ljava/util/Map;

.field private transient c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Lv0/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv0/l;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, La0/c;->b:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lv0/l;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i(LH0/d;II)V
    .locals 4

    sget-object p3, LD0/g;->c:LD0/g;

    new-instance v0, LD0/v;

    invoke-virtual {p1}, LH0/d;->length()I

    move-result v1

    invoke-direct {v0, p2, v1}, LD0/v;-><init>(II)V

    invoke-interface {p3, p1, v0}, LD0/s;->b(LH0/d;LD0/v;)[La0/f;

    move-result-object p1

    iget-object p2, p0, Lv0/l;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p1, p3

    iget-object v1, p0, Lv0/l;->b:Ljava/util/Map;

    invoke-interface {v0}, La0/f;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, La0/f;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method j(La0/q;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object p1

    const-string v0, "http.auth.credential-charset"

    invoke-interface {p1, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lv0/l;->k()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public k()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lv0/l;->c:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, La0/c;->b:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lv0/l;->b:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected m()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lv0/l;->b:Ljava/util/Map;

    return-object v0
.end method
