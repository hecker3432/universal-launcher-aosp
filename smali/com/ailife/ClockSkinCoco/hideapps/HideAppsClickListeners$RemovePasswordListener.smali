.class public Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$RemovePasswordListener;
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
    name = "RemovePasswordListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$RemovePasswordListener;->context:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 68
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$RemovePasswordListener;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p1

    .line 69
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setPassword(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->lockSettings()V

    .line 71
    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->saveConfiguration()V

    .line 73
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$RemovePasswordListener;->context:Landroid/content/Context;

    const-string v0, "Password removed. Settings will reappear on next launch."

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 76
    return-void
.end method
