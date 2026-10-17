.class public Lz0/o;
.super Lz0/a;
.source "SourceFile"

# interfaces
.implements Lr0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lr0/o;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lr0/o;->f(I)V

    return-void

    :cond_0
    new-instance p1, Lr0/m;

    const-string p2, "Missing value for version attribute"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "version"

    return-object v0
.end method
