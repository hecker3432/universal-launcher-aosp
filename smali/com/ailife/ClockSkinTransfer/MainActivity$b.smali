.class final Lcom/ailife/ClockSkinTransfer/MainActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinTransfer/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/MainActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinTransfer/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$b;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$b;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->a(Lcom/ailife/ClockSkinTransfer/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$b;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->b(Lcom/ailife/ClockSkinTransfer/MainActivity;)V

    :cond_0
    return-void
.end method
