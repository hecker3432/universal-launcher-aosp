.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$6;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 136
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$6;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 146
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 142
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$6;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->filterApps(Ljava/lang/String;)V
    invoke-static {p2, p1}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->access$300(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;Ljava/lang/String;)V

    .line 143
    return-void
.end method
