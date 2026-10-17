.class public abstract Landroidx/fragment/app/j;
.super Landroidx/fragment/app/f;
.source "SourceFile"


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:I

.field final f:Landroidx/fragment/app/m;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/f;-><init>()V

    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0}, Landroidx/fragment/app/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->f:Landroidx/fragment/app/m;

    iput-object p1, p0, Landroidx/fragment/app/j;->b:Landroid/app/Activity;

    const-string p1, "context == null"

    invoke-static {p2, p1}, LH/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/j;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {p3, p1}, LH/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/j;->d:Landroid/os/Handler;

    iput p4, p0, Landroidx/fragment/app/j;->e:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/d;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/j;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method g()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroid/app/Activity;

    return-object v0
.end method

.method h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Landroid/content/Context;

    return-object v0
.end method

.method i()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/j;->d:Landroid/os/Handler;

    return-object v0
.end method

.method abstract k(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract l(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract m()Ljava/lang/Object;
.end method

.method public abstract n()Landroid/view/LayoutInflater;
.end method

.method public abstract o(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract p(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method public abstract q()V
.end method
