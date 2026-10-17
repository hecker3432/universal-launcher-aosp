.class Lcom/ailife/ClockSkinCoco/QSFragment$12;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/QSFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/QSFragment;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/QSFragment;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$12;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 389
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$12;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->vibrateOnLongPress()V

    .line 390
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$12;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->wifiMore(Landroid/content/Context;)V

    .line 391
    const/4 p1, 0x1

    return p1
.end method
