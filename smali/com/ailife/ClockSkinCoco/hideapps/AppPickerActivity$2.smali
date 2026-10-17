.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 88
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 91
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # setter for: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->hideNonLaunchableApps:Z
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$102(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Z)Z

    .line 92
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->searchBox:Landroid/widget/EditText;
    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$200(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filterApps(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$300(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Ljava/lang/String;)V

    .line 93
    return-void
.end method
