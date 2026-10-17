.class public Lw0/q;
.super Lw0/u;
.source "SourceFile"

# interfaces
.implements La0/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/q$a;
    }
.end annotation


# instance fields
.field private h:La0/k;

.field private i:Z


# direct methods
.method public constructor <init>(La0/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lw0/u;-><init>(La0/q;)V

    invoke-interface {p1}, La0/l;->getEntity()La0/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw0/q;->a(La0/k;)V

    return-void
.end method

.method static synthetic p(Lw0/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lw0/q;->i:Z

    return p1
.end method


# virtual methods
.method public a(La0/k;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lw0/q$a;

    invoke-direct {v0, p0, p1}, Lw0/q$a;-><init>(Lw0/q;La0/k;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lw0/q;->h:La0/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lw0/q;->i:Z

    return-void
.end method

.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, LD0/a;->getFirstHeader(Ljava/lang/String;)La0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()La0/k;
    .locals 1

    iget-object v0, p0, Lw0/q;->h:La0/k;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lw0/q;->h:La0/k;

    if-eqz v0, :cond_1

    invoke-interface {v0}, La0/k;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lw0/q;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
