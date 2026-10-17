.class Lcom/ricktop/ClockSkinCoco/x$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/x;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/x;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/x;->R1(Lcom/ricktop/ClockSkinCoco/x;I)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/x;->P1(Lcom/ricktop/ClockSkinCoco/x;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/x;->T1(Lcom/ricktop/ClockSkinCoco/x;I)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v1, v0}, Lcom/ricktop/ClockSkinCoco/x;->T1(Lcom/ricktop/ClockSkinCoco/x;I)I

    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->E1(Lcom/ricktop/ClockSkinCoco/x;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/x;->P1(Lcom/ricktop/ClockSkinCoco/x;)V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/x;->L1(Lcom/ricktop/ClockSkinCoco/x;I)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/x;->N1(Lcom/ricktop/ClockSkinCoco/x;I)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/y;->a(Landroid/telephony/SignalStrength;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ricktop/ClockSkinCoco/x;->O1(Lcom/ricktop/ClockSkinCoco/x;I)I

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/z;->a(Landroid/telephony/SignalStrength;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/z;->a(Landroid/telephony/SignalStrength;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/x;->L1(Lcom/ricktop/ClockSkinCoco/x;I)I

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/x;->N1(Lcom/ricktop/ClockSkinCoco/x;I)I

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ricktop/ClockSkinCoco/x;->O1(Lcom/ricktop/ClockSkinCoco/x;I)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/x$b;->a:Lcom/ricktop/ClockSkinCoco/x;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/x;->P1(Lcom/ricktop/ClockSkinCoco/x;)V

    return-void
.end method
