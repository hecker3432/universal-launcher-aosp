.class public final LI/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:LI/o0$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, LI/o0$c;

    invoke-direct {v0}, LI/o0$c;-><init>()V

    iput-object v0, p0, LI/o0$a;->a:LI/o0$d;

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, LI/o0$b;

    invoke-direct {v0}, LI/o0$b;-><init>()V

    iput-object v0, p0, LI/o0$a;->a:LI/o0$d;

    goto :goto_0

    :cond_1
    new-instance v0, LI/o0$d;

    invoke-direct {v0}, LI/o0$d;-><init>()V

    iput-object v0, p0, LI/o0$a;->a:LI/o0$d;

    :goto_0
    return-void
.end method

.method public constructor <init>(LI/o0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, LI/o0$c;

    invoke-direct {v0, p1}, LI/o0$c;-><init>(LI/o0;)V

    iput-object v0, p0, LI/o0$a;->a:LI/o0$d;

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, LI/o0$b;

    invoke-direct {v0, p1}, LI/o0$b;-><init>(LI/o0;)V

    iput-object v0, p0, LI/o0$a;->a:LI/o0$d;

    goto :goto_0

    :cond_1
    new-instance v0, LI/o0$d;

    invoke-direct {v0, p1}, LI/o0$d;-><init>(LI/o0;)V

    iput-object v0, p0, LI/o0$a;->a:LI/o0$d;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$a;->a:LI/o0$d;

    invoke-virtual {v0}, LI/o0$d;->a()LI/o0;

    move-result-object v0

    return-object v0
.end method

.method public b(LB/c;)LI/o0$a;
    .locals 1

    iget-object v0, p0, LI/o0$a;->a:LI/o0$d;

    invoke-virtual {v0, p1}, LI/o0$d;->b(LB/c;)V

    return-object p0
.end method

.method public c(LB/c;)LI/o0$a;
    .locals 1

    iget-object v0, p0, LI/o0$a;->a:LI/o0$d;

    invoke-virtual {v0, p1}, LI/o0$d;->c(LB/c;)V

    return-object p0
.end method
