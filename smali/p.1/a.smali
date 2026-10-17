.class public Lp/a;
.super Lp/d;
.source "SourceFile"


# static fields
.field private static volatile c:Lp/a;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lp/d;

.field private b:Lp/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/a$a;

    invoke-direct {v0}, Lp/a$a;-><init>()V

    sput-object v0, Lp/a;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lp/a$b;

    invoke-direct {v0}, Lp/a$b;-><init>()V

    sput-object v0, Lp/a;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp/d;-><init>()V

    new-instance v0, Lp/c;

    invoke-direct {v0}, Lp/c;-><init>()V

    iput-object v0, p0, Lp/a;->b:Lp/d;

    iput-object v0, p0, Lp/a;->a:Lp/d;

    return-void
.end method

.method public static d()Lp/a;
    .locals 2

    sget-object v0, Lp/a;->c:Lp/a;

    if-eqz v0, :cond_0

    sget-object v0, Lp/a;->c:Lp/a;

    return-object v0

    :cond_0
    const-class v0, Lp/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp/a;->c:Lp/a;

    if-nez v1, :cond_1

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    sput-object v1, Lp/a;->c:Lp/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lp/a;->c:Lp/a;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lp/d;

    invoke-virtual {v0, p1}, Lp/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lp/d;

    invoke-virtual {v0}, Lp/d;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lp/d;

    invoke-virtual {v0, p1}, Lp/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method
