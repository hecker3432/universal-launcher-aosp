.class public LY/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:LY/b;

.field private static e:LY/c;


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LY/c$b;

    invoke-direct {v0, p0}, LY/c$b;-><init>(LY/c;)V

    iput-object v0, p0, LY/c;->c:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {p0}, LY/c;->c()Z

    return-void
.end method

.method static synthetic a(LY/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, LY/c;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(LY/b;)LY/b;
    .locals 0

    sput-object p0, LY/c;->d:LY/b;

    return-object p0
.end method

.method private c()Z
    .locals 4

    const-string v0, "oiface"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, LY/c;->a:Landroid/os/IBinder;

    invoke-static {v0}, LY/b$a;->i(Landroid/os/IBinder;)LY/b;

    move-result-object v0

    sput-object v0, LY/c;->d:LY/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, LY/c$a;

    invoke-direct {v2, p0}, LY/c$a;-><init>(LY/c;)V

    invoke-interface {v0, v2}, LY/b;->g(LY/a;)V

    iget-object v0, p0, LY/c;->a:Landroid/os/IBinder;

    iget-object v2, p0, LY/c;->c:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService registerEngineClient error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OppoManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, LY/c;->d:LY/b;

    :cond_0
    return v1
.end method

.method public static d()LY/c;
    .locals 2

    sget-object v0, LY/c;->d:LY/b;

    if-nez v0, :cond_1

    const-class v0, LY/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LY/c;->d:LY/b;

    if-nez v1, :cond_0

    new-instance v1, LY/c;

    invoke-direct {v1}, LY/c;-><init>()V

    sput-object v1, LY/c;->e:LY/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LY/c;->e:LY/c;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, LY/c;->d:LY/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, LY/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, LY/c;->d:LY/b;

    invoke-interface {v0, p1}, LY/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    sput-object v0, LY/c;->d:LY/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGameInfo error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
