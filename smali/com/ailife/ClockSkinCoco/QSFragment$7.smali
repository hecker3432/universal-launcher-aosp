.class Lcom/ailife/ClockSkinCoco/QSFragment$7;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 347
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$7;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 350
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$7;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->setVolume(Landroid/content/Context;)V

    .line 351
    return-void
.end method
