.class Lcom/ailife/ClockSkinCoco/QSFragment$3;
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

    .line 303
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/QSFragment$3;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 306
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$3;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/ailife/ClockSkinCoco/FlashLightActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/QSFragment$3;->this$0:Lcom/ailife/ClockSkinCoco/QSFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/QSFragment;->mGetContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 309
    return-void
.end method
