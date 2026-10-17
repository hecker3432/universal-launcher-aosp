.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .line 43
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 44
    .local v0, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 48
    :cond_1b
    mul-int/lit8 v2, v0, 0xc

    .line 50
    .local v2, "size":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v3, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .line 53
    .local v4, "accPos":I
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    .local v5, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v6

    .line 55
    .local v6, "firstValue":I
    const/16 v7, 0xb

    .local v7, "i":I
    :goto_34
    if-ltz v7, :cond_43

    .line 56
    shl-int v8, v1, v7

    and-int/2addr v8, v6

    if-eqz v8, :cond_3e

    .line 57
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    .line 55
    add-int/lit8 v7, v7, -0x1

    goto :goto_34

    .line 62
    .end local v7    # "i":I
    :cond_43
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8b

    .line 63
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    .local v8, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    .line 66
    .local v9, "leftValue":I
    const/16 v10, 0xb

    .local v10, "j":I
    :goto_5a
    if-ltz v10, :cond_69

    .line 67
    shl-int v11, v1, v10

    and-int/2addr v11, v9

    if-eqz v11, :cond_64

    .line 68
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_64
    add-int/lit8 v4, v4, 0x1

    .line 66
    add-int/lit8 v10, v10, -0x1

    goto :goto_5a

    .line 73
    .end local v10    # "j":I
    :cond_69
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-eqz v10, :cond_88

    .line 74
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    .line 75
    .local v10, "rightValue":I
    const/16 v11, 0xb

    .local v11, "j":I
    :goto_79
    if-ltz v11, :cond_88

    .line 76
    shl-int v12, v1, v11

    and-int/2addr v12, v10

    if-eqz v12, :cond_83

    .line 77
    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_83
    add-int/lit8 v4, v4, 0x1

    .line 75
    add-int/lit8 v11, v11, -0x1

    goto :goto_79

    .line 62
    .end local v8    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v9    # "leftValue":I
    .end local v10    # "rightValue":I
    .end local v11    # "j":I
    :cond_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 83
    .end local v7    # "i":I
    :cond_8b
    return-object v3
.end method
