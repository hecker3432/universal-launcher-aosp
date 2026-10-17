.class public abstract Lf0/e;
.super Lf0/h;
.source "SourceFile"

# interfaces
.implements La0/l;


# instance fields
.field private h:La0/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf0/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La0/k;)V
    .locals 0

    iput-object p1, p0, Lf0/e;->h:La0/k;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lf0/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/e;

    iget-object v1, p0, Lf0/e;->h:La0/k;

    if-eqz v1, :cond_0

    invoke-static {v1}, Li0/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/k;

    iput-object v1, v0, Lf0/e;->h:La0/k;

    :cond_0
    return-object v0
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

    iget-object v0, p0, Lf0/e;->h:La0/k;

    return-object v0
.end method
