.class Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$2;
.super Ljava/lang/Object;
.source "WatchFaceSelectionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->filterItems(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;->access$100(Lcom/ailife/ClockSkinCoco/WatchFaceSelectionActivity;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 72
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 73
    return-void
.end method
