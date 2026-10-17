.class public Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SetPasswordListener;
.super Ljava/lang/Object;
.source "HideAppsClickListeners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetPasswordListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SetPasswordListener;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 42
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SetPasswordListener;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getHiddenPackages()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_26

    .line 51
    :cond_17
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SetPasswordListener;->context:Landroid/content/Context;

    const-class v1, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SetPasswordListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void

    .line 45
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SetPasswordListener;->context:Landroid/content/Context;

    const-string v0, "Please select hidden apps first"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method
