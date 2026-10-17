.class Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$1;
.super Ljava/lang/Object;
.source "PasswordSetupActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 156
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 148
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 152
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$1;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->updateInstructionText(Ljava/lang/String;)V
    invoke-static {p2, p1}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->access$000(Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;Ljava/lang/String;)V

    .line 153
    return-void
.end method
