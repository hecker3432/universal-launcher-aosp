.class Ly0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/d;->p(Ln0/b;Ljava/lang/Object;)Ly0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly0/i;

.field final synthetic b:Ln0/b;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ly0/d;


# direct methods
.method constructor <init>(Ly0/d;Ly0/i;Ln0/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ly0/d$a;->d:Ly0/d;

    iput-object p2, p0, Ly0/d$a;->a:Ly0/i;

    iput-object p3, p0, Ly0/d$a;->b:Ln0/b;

    iput-object p4, p0, Ly0/d$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ly0/d$a;->d:Ly0/d;

    invoke-static {v0}, Ly0/d;->a(Ly0/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ly0/d$a;->a:Ly0/i;

    invoke-virtual {v0}, Ly0/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ly0/d$a;->d:Ly0/d;

    invoke-static {v0}, Ly0/d;->a(Ly0/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ly0/d$a;->d:Ly0/d;

    invoke-static {v1}, Ly0/d;->a(Ly0/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Ly0/b;
    .locals 7

    iget-object v0, p0, Ly0/d$a;->d:Ly0/d;

    iget-object v1, p0, Ly0/d$a;->b:Ln0/b;

    iget-object v2, p0, Ly0/d$a;->c:Ljava/lang/Object;

    iget-object v6, p0, Ly0/d$a;->a:Ly0/i;

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Ly0/d;->j(Ln0/b;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ly0/i;)Ly0/b;

    move-result-object p1

    return-object p1
.end method
