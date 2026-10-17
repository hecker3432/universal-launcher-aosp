.class Lx0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/d;->d(Ln0/b;Ljava/lang/Object;)Ll0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ln0/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lx0/d;


# direct methods
.method constructor <init>(Lx0/d;Ln0/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lx0/d$a;->c:Lx0/d;

    iput-object p2, p0, Lx0/d$a;->a:Ln0/b;

    iput-object p3, p0, Lx0/d$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Ll0/n;
    .locals 0

    iget-object p1, p0, Lx0/d$a;->c:Lx0/d;

    iget-object p2, p0, Lx0/d$a;->a:Ln0/b;

    iget-object p3, p0, Lx0/d$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lx0/d;->g(Ln0/b;Ljava/lang/Object;)Ll0/n;

    move-result-object p1

    return-object p1
.end method
