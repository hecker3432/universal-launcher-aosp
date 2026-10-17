.class Lcom/loopj/android/http/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/a;-><init>(Lo0/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loopj/android/http/a;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/a$c;->a:Lcom/loopj/android/http/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La0/q;LG0/e;)V
    .locals 3

    const-string p1, "http.auth.target-scope"

    invoke-interface {p2, p1}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/h;

    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p2, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/h;

    const-string v1, "http.target_host"

    invoke-interface {p2, v1}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La0/n;

    invoke-virtual {p1}, Lb0/h;->b()Lb0/c;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lb0/g;

    invoke-virtual {p2}, La0/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, La0/n;->c()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lb0/g;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lc0/h;->a(Lb0/g;)Lb0/m;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lv0/b;

    invoke-direct {v0}, Lv0/b;-><init>()V

    invoke-virtual {p1, v0}, Lb0/h;->f(Lb0/c;)V

    invoke-virtual {p1, p2}, Lb0/h;->g(Lb0/m;)V

    :cond_0
    return-void
.end method
