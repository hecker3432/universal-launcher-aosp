.class public final Lcom/ricktop/ClockSkinCoco/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:[C

.field private b:[I

.field private c:[I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i$b;->a:[C

    const/16 v0, 0x64

    const/16 v1, 0x12c

    filled-new-array {v0, v1, v1, v0}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/i$b;->b:[I

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/i$b;->c:[I

    const v0, 0x7f080081

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/i$b;->d:I

    return-void

    nop

    :array_0
    .array-data 2
        0x62s
        0x65s
        0x63s
        0x72s
    .end array-data
.end method


# virtual methods
.method public final a(FF)C
    .locals 7

    const/16 v0, 0xc8

    int-to-float v0, v0

    sub-float v1, v0, p1

    mul-float v1, v1, v1

    const/16 v2, 0x26

    int-to-float v2, v2

    sub-float/2addr v2, p2

    mul-float v2, v2, v2

    add-float/2addr v1, v2

    const v2, 0x47c35000    # 100000.0f

    const/16 v3, 0x6e

    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    const/16 v2, 0x73

    goto :goto_0

    :cond_0
    const v1, 0x47c35000    # 100000.0f

    const/16 v2, 0x6e

    :goto_0
    sub-float/2addr v0, p2

    mul-float v0, v0, v0

    cmpg-float v4, v0, v1

    if-gez v4, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/i$b;->b:[I

    array-length v0, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/i$b;->b:[I

    aget v4, v4, v2

    int-to-float v5, v4

    sub-float/2addr v5, p1

    int-to-float v4, v4

    sub-float/2addr v4, p1

    mul-float v5, v5, v4

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/i$b;->c:[I

    aget v4, v4, v2

    int-to-float v6, v4

    sub-float/2addr v6, p2

    int-to-float v4, v4

    sub-float/2addr v4, p2

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    cmpg-float v4, v5, v1

    if-gez v4, :cond_2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/i$b;->a:[C

    aget-char v1, v1, v2

    move v3, v1

    move v1, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return v3
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/i$b;->d:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/i$b;->d:I

    return-void
.end method
