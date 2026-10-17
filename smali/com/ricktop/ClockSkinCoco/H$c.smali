.class Lcom/ricktop/ClockSkinCoco/H$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/H;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/H;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H$c;->a:Lcom/ricktop/ClockSkinCoco/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H$c;->a:Lcom/ricktop/ClockSkinCoco/H;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/H;->a(Lcom/ricktop/ClockSkinCoco/H;I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H$c;->a:Lcom/ricktop/ClockSkinCoco/H;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/H;->b(Lcom/ricktop/ClockSkinCoco/H;)V

    return-void
.end method
