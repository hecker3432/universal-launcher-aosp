.class Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$1;
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

    .line 102
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$1;->this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 106
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$1;->this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    # getter for: Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->access$000(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "user_wants_set_as_default"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$1;->this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    # invokes: Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->openLauncherChooser()V
    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->access$100(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)V

    return-void
.end method
