.class Lcom/ricktop/ClockSkinCoco/H$i;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/H;


# direct methods
.method private constructor <init>(Lcom/ricktop/ClockSkinCoco/H;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/H$i;->a:Lcom/ricktop/ClockSkinCoco/H;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/ClockSkinCoco/H;Lcom/ricktop/ClockSkinCoco/H$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/H$i;-><init>(Lcom/ricktop/ClockSkinCoco/H;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H$i;->a:Lcom/ricktop/ClockSkinCoco/H;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/H;->e(Lcom/ricktop/ClockSkinCoco/H;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/H$i;->a:Lcom/ricktop/ClockSkinCoco/H;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/H;->e(Lcom/ricktop/ClockSkinCoco/H;)V

    return-void
.end method
