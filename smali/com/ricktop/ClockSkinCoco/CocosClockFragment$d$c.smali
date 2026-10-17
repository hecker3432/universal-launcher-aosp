.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->F1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Ljava/lang/String;)V

    return-void
.end method
