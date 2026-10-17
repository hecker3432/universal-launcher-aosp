.class Lcom/ricktop/ClockSkinCoco/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/p$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/p$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/p$a;-><init>(Lcom/ricktop/ClockSkinCoco/p;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->b:Ljava/util/Comparator;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;
    .locals 2

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/p$b;

    if-nez p2, :cond_1

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-ne p3, v1, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    return-object p4
.end method


# virtual methods
.method public a(Lcom/ricktop/ClockSkinCoco/p$b;)I
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/p;->b:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ricktop/ClockSkinCoco/p$b;

    invoke-interface {v2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;IJ)I
    .locals 2

    const/4 p4, -0x1

    if-nez p1, :cond_0

    return p4

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/p$b;

    if-nez p2, :cond_1

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-ne p3, v0, :cond_3

    return p5

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    return p4
.end method

.method public d(I)Lcom/ricktop/ClockSkinCoco/p$b;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/p$b;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ricktop/ClockSkinCoco/p;->b(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method


.method public g(Lcom/ricktop/ClockSkinCoco/p$b;)I
    .locals 7

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ricktop/ClockSkinCoco/p;->e(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/ricktop/ClockSkinCoco/p$b;

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/p;->a(Lcom/ricktop/ClockSkinCoco/p$b;)I

    move-result p1

    return p1
.end method
