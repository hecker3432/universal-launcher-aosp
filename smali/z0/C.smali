.class public Lz0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr0/c;Lr0/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lr0/c;Lr0/f;)V
    .locals 0

    return-void
.end method

.method public c(Lr0/o;Ljava/lang/String;)V
    .locals 0

    instance-of p2, p1, Lr0/n;

    if-eqz p2, :cond_0

    check-cast p1, Lr0/n;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lr0/n;->h(Z)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "discard"

    return-object v0
.end method
