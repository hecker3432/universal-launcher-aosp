.class public Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SelectHiddenAppsListener;
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
    name = "SelectHiddenAppsListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SelectHiddenAppsListener;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 25
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SelectHiddenAppsListener;->context:Landroid/content/Context;

    const-class v1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsClickListeners$SelectHiddenAppsListener;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
