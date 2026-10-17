.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$a;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$a;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->V1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)V

    return-void
.end method
