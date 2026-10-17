.class Lcom/ricktop/ClockSkinCoco/B$c;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->S1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080075

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    sput p1, Lcom/ricktop/ClockSkinCoco/WatchApp;->i:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->O1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$c;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->S1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080074

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    sput p1, Lcom/ricktop/ClockSkinCoco/WatchApp;->i:I

    :cond_2
    :goto_0
    return-void
.end method
