.class public Lw0/j;
.super Lw0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ll0/b;LE0/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw0/a;-><init>(Ll0/b;LE0/e;)V

    return-void
.end method

.method public static t0(LE0/e;)V
    .locals 3

    sget-object v0, La0/v;->f:La0/v;

    invoke-static {p0, v0}, LE0/f;->e(LE0/e;La0/C;)V

    sget-object v0, LG0/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LE0/f;->c(LE0/e;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, LE0/c;->j(LE0/e;Z)V

    const/16 v0, 0x2000

    invoke-static {p0, v0}, LE0/c;->i(LE0/e;I)V

    const-string v0, "cz.msebera.android.httpclient.client"

    const-class v1, Lw0/j;

    const-string v2, "Apache-HttpClient"

    invoke-static {v2, v0, v1}, LH0/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LE0/f;->d(LE0/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected P()LE0/e;
    .locals 1

    new-instance v0, LE0/g;

    invoke-direct {v0}, LE0/g;-><init>()V

    invoke-static {v0}, Lw0/j;->t0(LE0/e;)V

    return-object v0
.end method

.method protected Q()LG0/b;
    .locals 2

    new-instance v0, LG0/b;

    invoke-direct {v0}, LG0/b;-><init>()V

    new-instance v1, Lh0/f;

    invoke-direct {v1}, Lh0/f;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, LG0/j;

    invoke-direct {v1}, LG0/j;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, LG0/l;

    invoke-direct {v1}, LG0/l;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, Lh0/e;

    invoke-direct {v1}, Lh0/e;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, LG0/m;

    invoke-direct {v1}, LG0/m;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, LG0/k;

    invoke-direct {v1}, LG0/k;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, Lh0/b;

    invoke-direct {v1}, Lh0/b;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, Lh0/i;

    invoke-direct {v1}, Lh0/i;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->e(La0/u;)V

    new-instance v1, Lh0/c;

    invoke-direct {v1}, Lh0/c;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, Lh0/h;

    invoke-direct {v1}, Lh0/h;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    new-instance v1, Lh0/g;

    invoke-direct {v1}, Lh0/g;-><init>()V

    invoke-virtual {v0, v1}, LG0/b;->c(La0/r;)V

    return-object v0
.end method
