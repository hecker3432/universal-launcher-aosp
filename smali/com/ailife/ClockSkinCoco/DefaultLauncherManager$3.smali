.class Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$3;
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

    .line 120
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$3;->this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 123
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager$3;->this$0:Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;

    # getter for: Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->prefs:Landroid/content/SharedPreferences;
    invoke-static {p2}, Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;->access$000(Lcom/ailife/ClockSkinCoco/DefaultLauncherManager;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "never_ask_again"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p2, "DefaultLauncherManager"

    const-string v0, "User chose \'Never Ask Again\'"

    .line 124
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
