.class Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;
.super Ljava/lang/Object;
.source "UBSPasswordSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->setupMorseInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_36

    .line 163
    const/4 p1, 0x0

    return p1

    .line 155
    :pswitch_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    # getter for: Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->touchDownTime:J
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->access$300(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 156
    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-gez p1, :cond_23

    .line 157
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    const-string v0, "0"

    # invokes: Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->appendToPassword(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->access$200(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;Ljava/lang/String;)V

    goto :goto_2a

    .line 159
    :cond_23
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    const-string v0, "1"

    # invokes: Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->appendToPassword(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->access$200(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;Ljava/lang/String;)V

    .line 161
    :goto_2a
    return p2

    .line 151
    :pswitch_2b
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    # setter for: Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->touchDownTime:J
    invoke-static {p1, v0, v1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->access$302(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;J)J

    .line 152
    return p2

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_a
    .end packed-switch
.end method
