.class Lcom/ailife/ClockSkinCoco/IconPickerActivity$1;
.super Ljava/lang/Object;
.source "IconPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/IconPickerActivity;->createUI()V
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

    .line 120
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 123
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->finish()V

    .line 124
    return-void
.end method
