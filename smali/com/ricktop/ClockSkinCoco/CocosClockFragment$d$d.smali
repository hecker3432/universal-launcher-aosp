.class Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/ricktop/ClockSkinCoco/j;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    iget-object v2, v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->a:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    iget-object v1, v1, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ricktop/ClockSkinCoco/j;-><init>(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    sget-object v2, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->p0:Ljava/lang/String;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->S1()I

    move-result v3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->G1()I

    move-result v4

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;

    iget-object v5, v5, Lcom/ricktop/ClockSkinCoco/CocosClockFragment$d;->b:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-static {v5}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->H1(Lcom/ricktop/ClockSkinCoco/CocosClockFragment;)Z

    move-result v5

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->I1()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/ricktop/ClockSkinCoco/j;->k(ILjava/lang/String;IIZI)V

    return-void
.end method
