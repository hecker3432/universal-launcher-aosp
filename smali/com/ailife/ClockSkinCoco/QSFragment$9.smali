.class Lcom/ailife/ClockSkinCoco/QSFragment$9;
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

    .line 362
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$9;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 366
    :try_start_0
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$9;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->toggleAirplaneMode(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    .line 367
    :catch_a
    move-exception p1

    :goto_b
    nop

    .line 368
    return-void
.end method
