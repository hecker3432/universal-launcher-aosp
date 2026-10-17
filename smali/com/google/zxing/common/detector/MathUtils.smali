.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static distance(FFFF)F
    .registers 12
    .param p0, "aX"    # F
    .param p1, "aY"    # F
    .param p2, "bX"    # F
    .param p3, "bY"    # F

    .line 48
    sub-float v0, p0, p2

    float-to-double v0, v0

    .line 49
    .local v0, "xDiff":D
    sub-float v2, p1, p3

    float-to-double v2, v2

    .line 50
    .local v2, "yDiff":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method public static distance(IIII)F
    .registers 12
    .param p0, "aX"    # I
    .param p1, "aY"    # I
    .param p2, "bX"    # I
    .param p3, "bY"    # I

    .line 61
    sub-int v0, p0, p2

    int-to-double v0, v0

    .line 62
    .local v0, "xDiff":D
    sub-int v2, p1, p3

    int-to-double v2, v2

    .line 63
    .local v2, "yDiff":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method public static round(F)I
    .registers 2
    .param p0, "d"    # F

    .line 37
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_8

    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_a

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_a
    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static sum([I)I
    .registers 5
    .param p0, "array"    # [I

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_b

    aget v3, p0, v2

    .line 73
    .local v3, "a":I
    add-int/2addr v0, v3

    .line 72
    .end local v3    # "a":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 75
    :cond_b
    return v0
.end method
