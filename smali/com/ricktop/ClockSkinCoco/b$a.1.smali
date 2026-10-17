.class Lcom/ricktop/ClockSkinCoco/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/b;->d(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ricktop/ClockSkinCoco/b$b;Lcom/ricktop/ClockSkinCoco/b$b;)I
    .locals 3

    # Get custom positions
    iget v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    iget v1, p2, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Check if both have valid positions (>= 0)
    const/4 v2, -0x1

    if-eq v0, v2, :check_pos2

    if-eq v1, v2, :pos1_only

    # Both have positions - compare them
    if-ge v0, v1, :check_greater

    const/4 p1, -0x1

    return p1

    :check_greater
    if-le v0, v1, :fallback_original

    const/4 p1, 0x1

    return p1

    :pos1_only
    # Only app1 has position - it comes first
    const/4 p1, -0x1

    return p1

    :check_pos2
    # App1 doesn't have position, check if app2 does
    if-eq v1, v2, :fallback_original

    # Only app2 has position - it comes first
    const/4 p1, 0x1

    return p1

    :fallback_original
    # Neither has position or positions are equal - use original logic
    # Original logic: check pin status, then alphabetical

    iget-boolean v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->d:Z

    iget-boolean v1, p2, Lcom/ricktop/ClockSkinCoco/b$b;->d:Z

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/ricktop/ClockSkinCoco/b$b;->g:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    check-cast p2, Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/b$a;->a(Lcom/ricktop/ClockSkinCoco/b$b;Lcom/ricktop/ClockSkinCoco/b$b;)I

    move-result p1

    return p1
.end method
