.class Lcom/ailife/ClockSkinCoco/QSFragment$5;
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

    .line 321
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$5;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 324
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$5;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/SettingController;->checkAccessibilityPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 325
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.ailife.ClockSkinCoco.RECENTS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$5;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$5;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    :cond_29
    return-void
.end method
