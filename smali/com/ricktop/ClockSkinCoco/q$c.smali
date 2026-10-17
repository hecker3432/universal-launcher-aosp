.class Lcom/ricktop/ClockSkinCoco/q$c;
.super Landroidx/fragment/app/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic j:Lcom/ricktop/ClockSkinCoco/q;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/q;Landroidx/fragment/app/m;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/q$c;->j:Lcom/ricktop/ClockSkinCoco/q;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/m;I)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/p;->f()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public l()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s(I)Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/p;->d(I)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object v0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/r;->e()Lcom/ricktop/ClockSkinCoco/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ricktop/ClockSkinCoco/p;->d(I)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object v1

    iget-object v1, v1, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/q$c;->j:Lcom/ricktop/ClockSkinCoco/q;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/q;->C1(Lcom/ricktop/ClockSkinCoco/q;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ricktop/ClockSkinCoco/v;->F1(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)Lcom/ricktop/ClockSkinCoco/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/p$b;->a(Lcom/ricktop/ClockSkinCoco/v;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Item("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/q$c;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notif"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
