.class LI/o0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:LI/o0;


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, LI/o0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LI/o0;-><init>(LI/o0;)V

    invoke-direct {p0, v0}, LI/o0$d;-><init>(LI/o0;)V

    return-void
.end method

.method constructor <init>(LI/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/o0$d;->a:LI/o0;

    return-void
.end method


# virtual methods
.method a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$d;->a:LI/o0;

    return-object v0
.end method

.method b(LB/c;)V
    .locals 0

    return-void
.end method

.method c(LB/c;)V
    .locals 0

    return-void
.end method
