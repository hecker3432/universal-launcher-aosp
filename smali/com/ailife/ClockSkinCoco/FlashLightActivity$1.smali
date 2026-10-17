.class Lcom/ailife/ClockSkinCoco/FlashLightActivity$1;
.super Ljava/lang/Object;
.source "FlashLightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/FlashLightActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/FlashLightActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/FlashLightActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/FlashLightActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/FlashLightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/FlashLightActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/FlashLightActivity;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->finish()V

    return-void
.end method
