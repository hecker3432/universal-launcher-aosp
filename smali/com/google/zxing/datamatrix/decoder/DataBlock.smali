.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .registers 3
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .registers 21
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    .line 49
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v1

    .line 52
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/4 v2, 0x0

    .line 53
    .local v2, "totalBlocks":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    .line 54
    .local v3, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v4, :cond_1a

    aget-object v7, v3, v6

    .line 55
    .local v7, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v8

    add-int/2addr v2, v8

    .line 54
    .end local v7    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 59
    :cond_1a
    new-array v4, v2, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    .line 60
    .local v4, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v6, 0x0

    .line 61
    .local v6, "numResultBlocks":I
    array-length v7, v3

    const/4 v8, 0x0

    :goto_1f
    if-ge v8, v7, :cond_45

    aget-object v9, v3, v8

    .line 62
    .local v9, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_24
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_42

    .line 63
    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v11

    .line 64
    .local v11, "numDataCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v12

    add-int/2addr v12, v11

    .line 65
    .local v12, "numBlockCodewords":I
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "numResultBlocks":I
    .local v13, "numResultBlocks":I
    new-instance v14, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v15, v12, [B

    invoke-direct {v14, v11, v15}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v14, v4, v6

    .line 62
    .end local v11    # "numDataCodewords":I
    .end local v12    # "numBlockCodewords":I
    add-int/lit8 v10, v10, 0x1

    move v6, v13

    goto :goto_24

    .line 61
    .end local v9    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v10    # "i":I
    .end local v13    # "numResultBlocks":I
    .restart local v6    # "numResultBlocks":I
    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 72
    :cond_45
    aget-object v7, v4, v5

    iget-object v7, v7, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v7, v7

    .line 75
    .local v7, "longerBlocksTotalCodewords":I
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v8

    sub-int v8, v7, v8

    .line 76
    .local v8, "longerBlocksNumDataCodewords":I
    add-int/lit8 v9, v8, -0x1

    .line 79
    .local v9, "shorterBlocksNumDataCodewords":I
    const/4 v10, 0x0

    .line 80
    .local v10, "rawCodewordsOffset":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_54
    if-ge v11, v9, :cond_6a

    .line 81
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_57
    if-ge v12, v6, :cond_67

    .line 82
    aget-object v13, v4, v12

    iget-object v13, v13, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v14, v10, 0x1

    .end local v10    # "rawCodewordsOffset":I
    .local v14, "rawCodewordsOffset":I
    aget-byte v10, v0, v10

    aput-byte v10, v13, v11

    .line 81
    add-int/lit8 v12, v12, 0x1

    move v10, v14

    goto :goto_57

    .line 80
    .end local v12    # "j":I
    .end local v14    # "rawCodewordsOffset":I
    .restart local v10    # "rawCodewordsOffset":I
    :cond_67
    add-int/lit8 v11, v11, 0x1

    goto :goto_54

    .line 87
    .end local v11    # "i":I
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v11

    const/16 v12, 0x18

    if-ne v11, v12, :cond_74

    const/4 v11, 0x1

    goto :goto_75

    :cond_74
    const/4 v11, 0x0

    .line 88
    .local v11, "specialVersion":Z
    :goto_75
    if-eqz v11, :cond_7a

    const/16 v12, 0x8

    goto :goto_7b

    :cond_7a
    move v12, v6

    .line 89
    .local v12, "numLongerBlocks":I
    :goto_7b
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7c
    if-ge v13, v12, :cond_8f

    .line 90
    aget-object v14, v4, v13

    iget-object v14, v14, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v15, v8, -0x1

    add-int/lit8 v16, v10, 0x1

    .end local v10    # "rawCodewordsOffset":I
    .local v16, "rawCodewordsOffset":I
    aget-byte v10, v0, v10

    aput-byte v10, v14, v15

    .line 89
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    goto :goto_7c

    .line 94
    .end local v13    # "j":I
    .end local v16    # "rawCodewordsOffset":I
    .restart local v10    # "rawCodewordsOffset":I
    :cond_8f
    aget-object v5, v4, v5

    iget-object v5, v5, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v5, v5

    .line 95
    .local v5, "max":I
    move v13, v8

    .local v13, "i":I
    :goto_95
    if-ge v13, v5, :cond_c6

    .line 96
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_98
    if-ge v14, v6, :cond_c1

    .line 97
    if-eqz v11, :cond_a0

    add-int/lit8 v15, v14, 0x8

    rem-int/2addr v15, v6

    goto :goto_a1

    :cond_a0
    move v15, v14

    .line 98
    .local v15, "jOffset":I
    :goto_a1
    if-eqz v11, :cond_ab

    move-object/from16 v16, v1

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .local v16, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/4 v1, 0x7

    if-le v15, v1, :cond_ad

    add-int/lit8 v1, v13, -0x1

    goto :goto_ae

    .end local v16    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    :cond_ab
    move-object/from16 v16, v1

    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v16    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    :cond_ad
    move v1, v13

    .line 99
    .local v1, "iOffset":I
    :goto_ae
    move/from16 v17, v1

    .end local v1    # "iOffset":I
    .local v17, "iOffset":I
    aget-object v1, v4, v15

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v18, v10, 0x1

    .end local v10    # "rawCodewordsOffset":I
    .local v18, "rawCodewordsOffset":I
    aget-byte v10, v0, v10

    aput-byte v10, v1, v17

    .line 96
    .end local v15    # "jOffset":I
    .end local v17    # "iOffset":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    move/from16 v10, v18

    goto :goto_98

    .end local v16    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v18    # "rawCodewordsOffset":I
    .local v1, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v10    # "rawCodewordsOffset":I
    :cond_c1
    move-object/from16 v16, v1

    .line 95
    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v14    # "j":I
    .restart local v16    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    add-int/lit8 v13, v13, 0x1

    goto :goto_95

    .end local v16    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .restart local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    :cond_c6
    move-object/from16 v16, v1

    .line 103
    .end local v1    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .end local v13    # "i":I
    .restart local v16    # "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    array-length v1, v0

    if-ne v10, v1, :cond_cc

    .line 107
    return-object v4

    .line 104
    :cond_cc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_d3

    :goto_d2
    throw v1

    :goto_d3
    goto :goto_d2
.end method


# virtual methods
.method getCodewords()[B
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
