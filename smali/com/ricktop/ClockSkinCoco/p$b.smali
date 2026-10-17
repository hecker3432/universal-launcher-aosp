.class final Lcom/ricktop/ClockSkinCoco/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/ricktop/ClockSkinCoco/v;

.field final b:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/ricktop/ClockSkinCoco/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/p$b;->b:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/p$b;->a:Lcom/ricktop/ClockSkinCoco/v;

    return-void
.end method


# virtual methods
.method a(Lcom/ricktop/ClockSkinCoco/v;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/p$b;->a:Lcom/ricktop/ClockSkinCoco/v;

    return-void
.end method
