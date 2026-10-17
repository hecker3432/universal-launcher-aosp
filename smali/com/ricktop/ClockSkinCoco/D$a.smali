.class Lcom/ricktop/ClockSkinCoco/D$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/D;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/D;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/D;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/D$a;->a:Lcom/ricktop/ClockSkinCoco/D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.ricktop.ClockSkinCoco.LOCATION.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location found:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onReceive weather"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/D$a;->a:Lcom/ricktop/ClockSkinCoco/D;

    aget-object v0, p1, v1

    invoke-static {p2, v0}, Lcom/ricktop/ClockSkinCoco/D;->a(Lcom/ricktop/ClockSkinCoco/D;Ljava/lang/String;)Ljava/lang/String;

    aget-object p1, p1, v1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    # Update location name (city)
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/D$a;->a:Lcom/ricktop/ClockSkinCoco/D;

    iget-object p2, p2, Lcom/ricktop/ClockSkinCoco/D;->mainLocationName:Landroid/widget/EditText;

    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Update X coordinate (latitude) if available
    array-length p2, p1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/D$a;->a:Lcom/ricktop/ClockSkinCoco/D;

    iget-object p2, p2, Lcom/ricktop/ClockSkinCoco/D;->mainLocationX:Landroid/widget/EditText;

    aget-object v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Update Y coordinate (longitude) if available
    array-length p2, p1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/D$a;->a:Lcom/ricktop/ClockSkinCoco/D;

    iget-object p2, p2, Lcom/ricktop/ClockSkinCoco/D;->mainLocationY:Landroid/widget/EditText;

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
