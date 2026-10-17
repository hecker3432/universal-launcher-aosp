.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$4;
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

    .line 113
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 116
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # invokes: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->selectNone()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$500(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V

    .line 117
    return-void
.end method
