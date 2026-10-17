.class public LG0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/e;


# instance fields
.field private final a:LG0/e;


# direct methods
.method public constructor <init>(LG0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG0/f;->a:LG0/e;

    return-void
.end method

.method public static a(LG0/e;)LG0/f;
    .locals 1

    const-string v0, "HTTP context"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LG0/f;

    if-eqz v0, :cond_0

    check-cast p0, LG0/f;

    return-object p0

    :cond_0
    new-instance v0, LG0/f;

    invoke-direct {v0, p0}, LG0/f;-><init>(LG0/e;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LG0/f;->a:LG0/e;

    invoke-interface {v0, p1}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Attribute class"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LG0/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()La0/j;
    .locals 2

    const-string v0, "http.connection"

    const-class v1, La0/j;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/j;

    return-object v0
.end method

.method public e()La0/q;
    .locals 2

    const-string v0, "http.request"

    const-class v1, La0/q;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/q;

    return-object v0
.end method

.method public f()La0/n;
    .locals 2

    const-string v0, "http.target_host"

    const-class v1, La0/n;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/n;

    return-object v0
.end method

.method public g()Z
    .locals 2

    const-string v0, "http.request_sent"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, LG0/f;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LG0/f;->a:LG0/e;

    invoke-interface {v0, p1, p2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
