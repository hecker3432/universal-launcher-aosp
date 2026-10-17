.class Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;->a:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;Lcom/ricktop/ClockSkinCoco/VerticalViewPager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;-><init>(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;->a:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/VerticalViewPager$g;->a:Lcom/ricktop/ClockSkinCoco/VerticalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/VerticalViewPager;->e(Lcom/ricktop/ClockSkinCoco/VerticalViewPager;)V

    return-void
.end method
