.class public Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/f;


# static fields
.field public static final a:Lw0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw0/i;

    invoke-direct {v0}, Lw0/i;-><init>()V

    sput-object v0, Lw0/i;->a:Lw0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La0/s;LG0/e;)J
    .locals 2

    const-string p2, "HTTP response"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p2, LD0/d;

    const-string v0, "Keep-Alive"

    invoke-interface {p1, v0}, La0/p;->headerIterator(Ljava/lang/String;)La0/h;

    move-result-object p1

    invoke-direct {p2, p1}, LD0/d;-><init>(La0/h;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, La0/g;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, La0/g;->a()La0/f;

    move-result-object p1

    invoke-interface {p1}, La0/f;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La0/f;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    return-wide p1

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method
