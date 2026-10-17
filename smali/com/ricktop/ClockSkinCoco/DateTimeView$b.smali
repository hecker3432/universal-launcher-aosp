.class Lcom/ricktop/ClockSkinCoco/DateTimeView$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/DateTimeView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/DateTimeView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$b;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$b;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->f(Lcom/ricktop/ClockSkinCoco/DateTimeView;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/DateTimeView$b;->a:Lcom/ricktop/ClockSkinCoco/DateTimeView;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/DateTimeView;->g(Lcom/ricktop/ClockSkinCoco/DateTimeView;)V

    return-void
.end method
