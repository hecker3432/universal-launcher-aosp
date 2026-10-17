.class Lcom/ricktop/ClockSkinCoco/B$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/B;->c0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/B;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Z1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Z1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->U1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    const v1, 0x7f080124

    invoke-static {v0, v1}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Z1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->U1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    const v1, 0x7f08011f

    invoke-static {v0, v1}, Lz/b;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/B$e$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/B$e$a;-><init>(Lcom/ricktop/ClockSkinCoco/B$e;)V

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/B;->W1(Lcom/ricktop/ClockSkinCoco/B;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->X1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/B;->V1(Lcom/ricktop/ClockSkinCoco/B;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
