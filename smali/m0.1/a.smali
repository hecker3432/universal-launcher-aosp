.class public abstract Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lm0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/a$a;

    invoke-direct {v0}, Lm0/a$a;-><init>()V

    sput-object v0, Lm0/a;->a:Lm0/b;

    return-void
.end method

.method public static a(LE0/e;)Lm0/b;
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/b;

    if-nez p0, :cond_0

    sget-object p0, Lm0/a;->a:Lm0/b;

    :cond_0
    return-object p0
.end method

.method public static b(LE0/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-total"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, LE0/e;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(LE0/e;Lm0/b;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, LE0/e;->e(Ljava/lang/String;Ljava/lang/Object;)LE0/e;

    return-void
.end method

.method public static d(LE0/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, LE0/e;->b(Ljava/lang/String;I)LE0/e;

    return-void
.end method

.method public static e(LE0/e;J)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, LE0/e;->i(Ljava/lang/String;J)LE0/e;

    return-void
.end method
