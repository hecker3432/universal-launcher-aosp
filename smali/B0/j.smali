.class public LB0/j;
.super LB0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(LC0/g;LD0/t;LE0/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LB0/b;-><init>(LC0/g;LD0/t;LE0/e;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(La0/p;)V
    .locals 0

    check-cast p1, La0/q;

    invoke-virtual {p0, p1}, LB0/j;->c(La0/q;)V

    return-void
.end method

.method protected c(La0/q;)V
    .locals 2

    iget-object v0, p0, LB0/b;->c:LD0/t;

    iget-object v1, p0, LB0/b;->b:LH0/d;

    invoke-interface {p1}, La0/q;->getRequestLine()La0/E;

    move-result-object p1

    invoke-interface {v0, v1, p1}, LD0/t;->b(LH0/d;La0/E;)LH0/d;

    iget-object p1, p0, LB0/b;->a:LC0/g;

    iget-object v0, p0, LB0/b;->b:LH0/d;

    invoke-interface {p1, v0}, LC0/g;->d(LH0/d;)V

    return-void
.end method
