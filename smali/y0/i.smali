.class public Ly0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ly0/h;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly0/i;->b:Z

    iget-object v0, p0, Ly0/i;->a:Ly0/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly0/h;->b()V

    :cond_0
    return-void
.end method

.method public b(Ly0/h;)V
    .locals 1

    iput-object p1, p0, Ly0/i;->a:Ly0/h;

    iget-boolean v0, p0, Ly0/i;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ly0/h;->b()V

    :cond_0
    return-void
.end method
