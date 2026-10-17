.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$3;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 106
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # invokes: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->selectAll()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$400(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    .line 107
    return-void
.end method
