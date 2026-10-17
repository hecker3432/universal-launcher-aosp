.class final Lcom/google/zxing/pdf417/decoder/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field private final bottomLeft:Lcom/google/zxing/ResultPoint;

.field private final bottomRight:Lcom/google/zxing/ResultPoint;

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final maxX:I

.field private final maxY:I

.field private final minX:I

.field private final minY:I

.field private final topLeft:Lcom/google/zxing/ResultPoint;

.field private final topRight:Lcom/google/zxing/ResultPoint;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .registers 12
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    if-nez p3, :cond_a

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v2, 0x1

    .line 44
    .local v2, "leftUnspecified":Z
    :goto_d
    if-eqz p4, :cond_11

    if-nez p5, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 45
    .local v0, "rightUnspecified":Z
    :cond_12
    if-eqz v2, :cond_1c

    if-nez v0, :cond_17

    goto :goto_1c

    .line 46
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 48
    :cond_1c
    :goto_1c
    if-eqz v2, :cond_34

    .line 49
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object p2, v1

    .line 50
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-direct {v1, v4, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object p3, v1

    goto :goto_56

    .line 51
    :cond_34
    if-eqz v0, :cond_56

    .line 52
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object p4, v3

    .line 53
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object p5, v3

    .line 55
    :cond_56
    :goto_56
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    .line 56
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 57
    iput-object p3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 58
    iput-object p4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 59
    iput-object p5, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 60
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    .line 61
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    .line 62
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    .line 63
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual {p5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 3
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    .line 68
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 69
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 70
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 71
    iget-object v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 72
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    .line 73
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    .line 74
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    .line 75
    iget v0, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    .line 76
    return-void
.end method

.method static merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 8
    .param p0, "leftBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p1, "rightBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 79
    if-nez p0, :cond_3

    .line 80
    return-object p1

    .line 82
    :cond_3
    if-nez p1, :cond_6

    .line 83
    return-object p0

    .line 85
    :cond_6
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v4, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iget-object v5, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-object v0
.end method


# virtual methods
.method addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 17
    .param p1, "missingStartRows"    # I
    .param p2, "missingEndRows"    # I
    .param p3, "isLeft"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    .line 90
    .local v0, "newTopLeft":Lcom/google/zxing/ResultPoint;
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    .line 91
    .local v1, "newBottomLeft":Lcom/google/zxing/ResultPoint;
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 92
    .local v2, "newTopRight":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 94
    .local v3, "newBottomRight":Lcom/google/zxing/ResultPoint;
    if-lez p1, :cond_2e

    .line 95
    if-eqz p3, :cond_f

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    goto :goto_11

    :cond_f
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    .line 96
    .local v4, "top":Lcom/google/zxing/ResultPoint;
    :goto_11
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, p1

    .line 97
    .local v5, "newMinY":I
    if-gez v5, :cond_1a

    .line 98
    const/4 v5, 0x0

    .line 100
    :cond_1a
    new-instance v6, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    int-to-float v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 101
    .local v6, "newTop":Lcom/google/zxing/ResultPoint;
    if-eqz p3, :cond_2a

    .line 102
    move-object v0, v6

    move-object v9, v0

    move-object v11, v2

    goto :goto_30

    .line 104
    :cond_2a
    move-object v2, v6

    move-object v9, v0

    move-object v11, v2

    goto :goto_30

    .line 94
    .end local v4    # "top":Lcom/google/zxing/ResultPoint;
    .end local v5    # "newMinY":I
    .end local v6    # "newTop":Lcom/google/zxing/ResultPoint;
    :cond_2e
    move-object v9, v0

    move-object v11, v2

    .line 108
    .end local v0    # "newTopLeft":Lcom/google/zxing/ResultPoint;
    .end local v2    # "newTopRight":Lcom/google/zxing/ResultPoint;
    .local v9, "newTopLeft":Lcom/google/zxing/ResultPoint;
    .local v11, "newTopRight":Lcom/google/zxing/ResultPoint;
    :goto_30
    if-lez p2, :cond_63

    .line 109
    if-eqz p3, :cond_37

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    goto :goto_39

    :cond_37
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    .line 110
    .local v0, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_39
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, p2

    .line 111
    .local v2, "newMaxY":I
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-lt v2, v4, :cond_4f

    .line 112
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 114
    :cond_4f
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 115
    .local v4, "newBottom":Lcom/google/zxing/ResultPoint;
    if-eqz p3, :cond_5f

    .line 116
    move-object v1, v4

    move-object v10, v1

    move-object v12, v3

    goto :goto_65

    .line 118
    :cond_5f
    move-object v3, v4

    move-object v10, v1

    move-object v12, v3

    goto :goto_65

    .line 108
    .end local v0    # "bottom":Lcom/google/zxing/ResultPoint;
    .end local v2    # "newMaxY":I
    .end local v4    # "newBottom":Lcom/google/zxing/ResultPoint;
    :cond_63
    move-object v10, v1

    move-object v12, v3

    .line 122
    .end local v1    # "newBottomLeft":Lcom/google/zxing/ResultPoint;
    .end local v3    # "newBottomRight":Lcom/google/zxing/ResultPoint;
    .local v10, "newBottomLeft":Lcom/google/zxing/ResultPoint;
    .local v12, "newBottomRight":Lcom/google/zxing/ResultPoint;
    :goto_65
    new-instance v7, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-object v7
.end method

.method getBottomLeft()Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getBottomRight()Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getMaxX()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    return v0
.end method

.method getMaxY()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    return v0
.end method

.method getMinX()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    return v0
.end method

.method getMinY()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    return v0
.end method

.method getTopLeft()Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getTopRight()Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method
