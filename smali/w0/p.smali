.class public Lw0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/p;


# static fields
.field public static final a:Lw0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw0/p;

    invoke-direct {v0}, Lw0/p;-><init>()V

    sput-object v0, Lw0/p;->a:Lw0/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lb0/h;)Ljava/security/Principal;
    .locals 2

    invoke-virtual {p0}, Lb0/h;->b()Lb0/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb0/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lb0/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb0/h;->c()Lb0/m;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lb0/m;->a()Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(LG0/e;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lh0/a;->h(LG0/e;)Lh0/a;

    move-result-object p1

    invoke-virtual {p1}, Lh0/a;->t()Lb0/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lw0/p;->b(Lb0/h;)Ljava/security/Principal;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lh0/a;->r()Lb0/h;

    move-result-object v0

    invoke-static {v0}, Lw0/p;->b(Lb0/h;)Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, LG0/f;->d()La0/j;

    move-result-object p1

    invoke-interface {p1}, La0/j;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Ll0/o;

    if-eqz v1, :cond_2

    check-cast p1, Ll0/o;

    invoke-interface {p1}, Ll0/o;->t()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    :cond_2
    return-object v0
.end method
