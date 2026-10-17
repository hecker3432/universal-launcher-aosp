.class public Lcom/ailife/ClockSkinCoco/AppAlphabeticalComparator;
.super Ljava/lang/Object;
.source "AppAlphabeticalComparator.java"

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

    # Get app labels (field f)
    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;
    iget-object v1, p2, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    # Handle null cases
    if-nez v0, :not_null_v0
    if-nez v1, :v0_null_v1_not
    const/4 v0, 0x0
    return v0

    :v0_null_v1_not
    const/4 v0, 0x1
    return v0

    :not_null_v0
    if-nez v1, :both_not_null
    const/4 v0, -0x1
    return v0

    :both_not_null
    # Compare labels alphabetically (case-insensitive)
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    move-result v0

    return v0
.end method
