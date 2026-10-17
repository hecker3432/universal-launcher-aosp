.class public Lcom/ailife/ClockSkinCoco/AppPositionComparator;
.super Ljava/lang/Object;
.source "AppPositionComparator.java"

.implements Ljava/util/Comparator;

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ricktop/ClockSkinCoco/b$b;",
        ">;"
    }
.end annotation

# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;
    check-cast p2, Lcom/ricktop/ClockSkinCoco/b$b;

    # Get positions
    iget v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->h:I
    iget v1, p2, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Compare: return v0 - v1
    sub-int v0, v0, v1
    return v0
.end method

