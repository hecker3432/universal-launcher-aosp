.class public final Lcom/ricktop/ClockSkinCoco/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/i;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/i$c;->a:Lcom/ricktop/ClockSkinCoco/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i$c;->a:Lcom/ricktop/ClockSkinCoco/i;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/i;->E1(Lcom/ricktop/ClockSkinCoco/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i$c;->a:Lcom/ricktop/ClockSkinCoco/i;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/i;->D1(Lcom/ricktop/ClockSkinCoco/i;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i$c;->a:Lcom/ricktop/ClockSkinCoco/i;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/ricktop/ClockSkinCoco/i;->F1(Lcom/ricktop/ClockSkinCoco/i;J)V

    :cond_0
    return-void
.end method
