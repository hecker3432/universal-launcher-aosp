.class Lcom/ailife/ClockSkinCoco/IconPickerActivity$5;
.super Ljava/lang/Object;
.source "IconPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/IconPickerActivity;->saveCustomImage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$5;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 434
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$5;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->setResult(I)V

    .line 435
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$5;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->finish()V

    .line 436
    return-void
.end method
