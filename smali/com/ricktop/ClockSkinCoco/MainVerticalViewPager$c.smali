.class Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->a(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;->b(Lcom/ricktop/ClockSkinCoco/MainVerticalViewPager;)V

    return-void
.end method
