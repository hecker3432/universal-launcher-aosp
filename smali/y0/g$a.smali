.class Ly0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/g;->d(Ln0/b;Ljava/lang/Object;)Ll0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly0/e;

.field final synthetic b:Ln0/b;

.field final synthetic c:Ly0/g;


# direct methods
.method constructor <init>(Ly0/g;Ly0/e;Ln0/b;)V
    .locals 0

    iput-object p1, p0, Ly0/g$a;->c:Ly0/g;

    iput-object p2, p0, Ly0/g$a;->a:Ly0/e;

    iput-object p3, p0, Ly0/g$a;->b:Ln0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ly0/g$a;->a:Ly0/e;

    invoke-interface {v0}, Ly0/e;->a()V

    return-void
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Ll0/n;
    .locals 3

    iget-object v0, p0, Ly0/g$a;->b:Ln0/b;

    const-string v1, "Route"

    invoke-static {v0, v1}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ly0/g$a;->c:Ly0/g;

    iget-object v0, v0, Ly0/g;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly0/g$a;->c:Ly0/g;

    iget-object v0, v0, Ly0/g;->a:Lt0/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly0/g$a;->b:Ln0/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt0/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ly0/g$a;->a:Ly0/e;

    invoke-interface {v0, p1, p2, p3}, Ly0/e;->b(JLjava/util/concurrent/TimeUnit;)Ly0/b;

    move-result-object p1

    new-instance p2, Ly0/c;

    iget-object p3, p0, Ly0/g$a;->c:Ly0/g;

    invoke-direct {p2, p3, p1}, Ly0/c;-><init>(Ly0/g;Lx0/b;)V

    return-object p2
.end method
