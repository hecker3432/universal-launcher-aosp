.class Lcom/ricktop/ClockSkinCoco/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/p;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/p;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/p$a;->a:Lcom/ricktop/ClockSkinCoco/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ricktop/ClockSkinCoco/p$b;Lcom/ricktop/ClockSkinCoco/p$b;)I
    .locals 2

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iget-object p1, p2, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ricktop/ClockSkinCoco/p$b;

    check-cast p2, Lcom/ricktop/ClockSkinCoco/p$b;

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/p$a;->a(Lcom/ricktop/ClockSkinCoco/p$b;Lcom/ricktop/ClockSkinCoco/p$b;)I

    move-result p1

    return p1
.end method
