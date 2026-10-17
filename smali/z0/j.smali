.class public Lz0/j;
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
.method public a(Lr0/c;Lr0/f;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lr0/c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lr0/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(Lr0/o;Ljava/lang/String;)V
    .locals 0

    const-string p2, "Cookie"

    invoke-static {p1, p2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lr0/o;->g(Z)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "secure"

    return-object v0
.end method
