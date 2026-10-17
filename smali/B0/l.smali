.class public LB0/l;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:LC0/f;

.field private b:Z


# direct methods
.method public constructor <init>(LC0/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/l;->b:Z

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC0/f;

    iput-object p1, p0, LB0/l;->a:LC0/f;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, LB0/l;->a:LC0/f;

    instance-of v1, v0, LC0/a;

    if-eqz v1, :cond_0

    check-cast v0, LC0/a;

    invoke-interface {v0}, LC0/a;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/l;->b:Z

    return-void
.end method

.method public read()I
    .locals 1

    iget-boolean v0, p0, LB0/l;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LB0/l;->a:LC0/f;

    invoke-interface {v0}, LC0/f;->f()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-boolean v0, p0, LB0/l;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, LB0/l;->a:LC0/f;

    invoke-interface {v0, p1, p2, p3}, LC0/f;->e([BII)I

    move-result p1

    return p1
.end method
