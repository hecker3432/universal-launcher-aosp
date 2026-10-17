.class public abstract Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt0/b;

.field protected final b:Ljava/util/concurrent/locks/Lock;

.field protected c:Ljava/util/Set;

.field protected d:Lx0/l;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ly0/a;->a:Lt0/b;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ly0/a;->c:Ljava/util/Set;

    new-instance v0, Lx0/l;

    invoke-direct {v0}, Lx0/l;-><init>()V

    iput-object v0, p0, Ly0/a;->d:Lx0/l;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ly0/a;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method
