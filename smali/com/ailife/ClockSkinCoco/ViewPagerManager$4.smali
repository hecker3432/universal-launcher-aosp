.class Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;
.super Ljava/lang/Object;
.source "ViewPagerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ViewPagerManager;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ViewPagerManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 320
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;->this$0:Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    # getter for: Lcom/ailife/ClockSkinCoco/ViewPagerManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->access$200(Lcom/ailife/ClockSkinCoco/ViewPagerManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ViewPagerManager$4;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    return-void
.end method
