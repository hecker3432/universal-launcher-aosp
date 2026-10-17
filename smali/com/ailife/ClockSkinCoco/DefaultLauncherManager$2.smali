.class Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$2;
.super Ljava/lang/Object;
.source "DefaultLauncherManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->showLauncherDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$2;->this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
