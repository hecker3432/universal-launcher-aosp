.class Li/f$l$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/f$l;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/f$l;


# direct methods
.method constructor <init>(Li/f$l;)V
    .locals 0

    iput-object p1, p0, Li/f$l$a;->a:Li/f$l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Li/f$l$a;->a:Li/f$l;

    invoke-virtual {p1}, Li/f$l;->d()V

    return-void
.end method
