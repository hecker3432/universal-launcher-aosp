.class Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;-><init>(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->O(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$c;->a:Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;->O(Lcom/ricktop/ClockSkinCoco/DirectionalViewPager;)V

    return-void
.end method
