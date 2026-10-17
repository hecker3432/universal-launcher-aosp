.class Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;
.super Ljava/lang/Object;
.source "UBSPasswordSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->setupKeypadInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

.field final synthetic val$digit:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;->val$digit:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;->val$digit:Ljava/lang/String;

    # invokes: Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->appendToPassword(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->access$200(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;Ljava/lang/String;)V

    .line 131
    return-void
.end method
