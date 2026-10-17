.class public Lz0/B;
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
    .locals 1

    instance-of v0, p1, Lr0/n;

    if-eqz v0, :cond_0

    check-cast p1, Lr0/n;

    invoke-interface {p1, p2}, Lr0/n;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "commenturl"

    return-object v0
.end method
