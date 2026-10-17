.class public Lw0/f;
.super LE0/a;
.source "SourceFile"


# instance fields
.field protected final a:LE0/e;

.field protected final b:LE0/e;

.field protected final c:LE0/e;

.field protected final d:LE0/e;


# direct methods
.method public constructor <init>(LE0/e;LE0/e;LE0/e;LE0/e;)V
    .locals 0

    invoke-direct {p0}, LE0/a;-><init>()V

    iput-object p1, p0, Lw0/f;->a:LE0/e;

    iput-object p2, p0, Lw0/f;->b:LE0/e;

    iput-object p3, p0, Lw0/f;->c:LE0/e;

    iput-object p4, p0, Lw0/f;->d:LE0/e;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Setting parameters in a stack is not supported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Parameter name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lw0/f;->d:LE0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lw0/f;->c:LE0/e;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lw0/f;->b:LE0/e;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lw0/f;->a:LE0/e;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    return-object v0
.end method
