.class public abstract LB0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/d;


# instance fields
.field protected final a:LC0/g;

.field protected final b:LH0/d;

.field protected final c:LD0/t;


# direct methods
.method public constructor <init>(LC0/g;LD0/t;LE0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "Session input buffer"

    invoke-static {p1, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, LB0/b;->a:LC0/g;

    new-instance p1, LH0/d;

    const/16 p3, 0x80

    invoke-direct {p1, p3}, LH0/d;-><init>(I)V

    iput-object p1, p0, LB0/b;->b:LH0/d;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, LD0/j;->b:LD0/j;

    :goto_0
    iput-object p2, p0, LB0/b;->c:LD0/t;

    return-void
.end method


# virtual methods
.method public a(La0/p;)V
    .locals 4

    const-string v0, "HTTP message"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LB0/b;->b(La0/p;)V

    invoke-interface {p1}, La0/p;->headerIterator()La0/h;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, La0/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, La0/h;->b()La0/e;

    move-result-object v0

    iget-object v1, p0, LB0/b;->a:LC0/g;

    iget-object v2, p0, LB0/b;->c:LD0/t;

    iget-object v3, p0, LB0/b;->b:LH0/d;

    invoke-interface {v2, v3, v0}, LD0/t;->a(LH0/d;La0/e;)LH0/d;

    move-result-object v0

    invoke-interface {v1, v0}, LC0/g;->d(LH0/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LB0/b;->b:LH0/d;

    invoke-virtual {p1}, LH0/d;->h()V

    iget-object p1, p0, LB0/b;->a:LC0/g;

    iget-object v0, p0, LB0/b;->b:LH0/d;

    invoke-interface {p1, v0}, LC0/g;->d(LH0/d;)V

    return-void
.end method

.method protected abstract b(La0/p;)V
.end method
