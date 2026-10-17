.class Lcom/ricktop/ClockSkinCoco/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ricktop/ClockSkinCoco/t;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/t;->b()V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 1

    sget-object v0, Lcom/ricktop/ClockSkinCoco/t;->a:Lcom/ricktop/ClockSkinCoco/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ricktop/ClockSkinCoco/t;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/t;-><init>()V

    sput-object v0, Lcom/ricktop/ClockSkinCoco/t;->a:Lcom/ricktop/ClockSkinCoco/t;

    :cond_0
    return-void
.end method
