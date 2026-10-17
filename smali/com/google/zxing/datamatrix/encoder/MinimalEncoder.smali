.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    }
.end annotation


# static fields
.field static final C40_SHIFT2_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$600(C)Z
    .registers 2
    .param p0, "x0"    # C

    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(C)Z
    .registers 2
    .param p0, "x0"    # C

    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift1Set(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(CI)Z
    .registers 3
    .param p0, "x0"    # C
    .param p1, "x1"    # I

    .line 61
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(CI)Z
    .registers 3
    .param p0, "x0"    # C
    .param p1, "x1"    # I

    .line 61
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift2Set(CI)Z

    move-result v0

    return v0
.end method

.method static addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .registers 5
    .param p0, "edges"    # [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .param p1, "edge"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 157
    # getter for: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v0

    # getter for: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    .local v0, "vertexIndex":I
    aget-object v1, p0, v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    aget-object v1, p0, v0

    .line 159
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    # getter for: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v1

    # getter for: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v2

    if-le v1, v2, :cond_39

    .line 160
    :cond_2d
    aget-object v1, p0, v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aput-object p1, v1, v2

    .line 162
    :cond_39
    return-void
.end method

.method static addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .registers 20
    .param p0, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p1, "edges"    # [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .param p2, "from"    # I
    .param p3, "previous"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 204
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 205
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 206
    return-void

    .line 209
    :cond_1b
    invoke-virtual {v1, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v8

    .line 210
    .local v8, "ch":C
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz p3, :cond_2b

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, v2, :cond_e2

    .line 212
    :cond_2b
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    const/4 v11, 0x2

    if-eqz v0, :cond_57

    invoke-virtual {v1, v3, v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_57

    add-int/lit8 v0, v3, 0x1

    .line 213
    invoke-virtual {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 215
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    move-object/from16 v1, p0

    move/from16 v3, p2

    goto :goto_69

    .line 218
    :cond_57
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 221
    :goto_69
    new-array v0, v11, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v11, 0x0

    aput-object v2, v0, v11

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    aput-object v2, v0, v10

    move-object v12, v0

    .line 222
    .local v12, "modes":[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    array-length v13, v12

    const/4 v14, 0x0

    :goto_77
    if-ge v14, v13, :cond_9a

    aget-object v2, v12, v14

    .line 223
    .local v2, "mode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    new-array v15, v10, [I

    .line 224
    .local v15, "characterLength":[I
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_83

    const/4 v0, 0x1

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    invoke-static {v1, v3, v0, v15}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result v0

    if-lez v0, :cond_97

    .line 225
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    aget v4, v15, v11

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 222
    .end local v2    # "mode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .end local v15    # "characterLength":[I
    :cond_97
    add-int/lit8 v14, v14, 0x1

    goto :goto_77

    .line 229
    :cond_9a
    invoke-virtual {v1, v3, v9}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 230
    invoke-virtual {v1, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_d0

    add-int/lit8 v0, v3, 0x1

    .line 231
    invoke-virtual {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_d0

    add-int/lit8 v0, v3, 0x2

    .line 232
    invoke-virtual {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 233
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 236
    :cond_d0
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 242
    .end local v12    # "modes":[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    :cond_e2
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_e4
    if-ge v11, v9, :cond_10f

    .line 243
    add-int v12, p2, v11

    .line 244
    .local v12, "pos":I
    invoke-virtual {v1, v12, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {v1, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 245
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    add-int/lit8 v4, v11, 0x1

    const/4 v6, 0x0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 242
    .end local v12    # "pos":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_e4

    .line 244
    .restart local v12    # "pos":I
    :cond_10c
    move/from16 v3, p2

    goto :goto_111

    .line 242
    .end local v12    # "pos":I
    :cond_10f
    move/from16 v3, p2

    .line 250
    :goto_111
    if-ne v11, v9, :cond_134

    const/4 v0, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_134

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 251
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 253
    :cond_134
    return-void
.end method

.method static encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p2, "fnc1"    # I
    .param p3, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .param p4, "macroId"    # I

    .line 153
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .end local p0    # "input":Ljava/lang/String;
    .end local p1    # "priorityCharset":Ljava/nio/charset/Charset;
    .end local p2    # "fnc1":I
    .end local p3    # "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .end local p4    # "macroId":I
    .local v1, "input":Ljava/lang/String;
    .local v2, "priorityCharset":Ljava/nio/charset/Charset;
    .local v3, "fnc1":I
    .local v4, "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .local v5, "macroId":I
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 110
    const/4 v0, -0x1

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p2, "fnc1"    # I
    .param p3, "shape"    # Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "macroId":I
    const-string v1, "[)>\u001e05\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "\u001e\u0004"

    if-eqz v2, :cond_21

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 129
    const/4 v0, 0x5

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3e

    .line 131
    :cond_21
    const-string v1, "[)>\u001e06\u001d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 132
    const/4 v0, 0x6

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 135
    :cond_3e
    :goto_3e
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method static encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
    .registers 10
    .param p0, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 441
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v0

    .line 445
    .local v0, "inputLength":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x6

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v1, v2, v5

    const-class v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 446
    .local v1, "edges":[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    const/4 v2, 0x0

    invoke-static {p0, v1, v5, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 448
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1d
    if-gt v5, v0, :cond_43

    .line 449
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_20
    if-ge v6, v4, :cond_34

    .line 450
    aget-object v7, v1, v5

    aget-object v7, v7, v6

    if-eqz v7, :cond_31

    if-ge v5, v0, :cond_31

    .line 451
    aget-object v7, v1, v5

    aget-object v7, v7, v6

    invoke-static {p0, v1, v5, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 449
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 455
    .end local v6    # "j":I
    :cond_34
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_35
    if-ge v6, v4, :cond_40

    .line 456
    add-int/lit8 v7, v5, -0x1

    aget-object v7, v1, v7

    aput-object v2, v7, v6

    .line 455
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 448
    .end local v6    # "j":I
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 460
    .end local v5    # "i":I
    :cond_43
    const/4 v2, -0x1

    .line 461
    .local v2, "minimalJ":I
    const v5, 0x7fffffff

    .line 462
    .local v5, "minimalSize":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_48
    if-ge v6, v4, :cond_6a

    .line 463
    aget-object v7, v1, v0

    aget-object v7, v7, v6

    if-eqz v7, :cond_67

    .line 464
    aget-object v7, v1, v0

    aget-object v7, v7, v6

    .line 465
    .local v7, "edge":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    if-lt v6, v3, :cond_5f

    const/4 v8, 0x3

    if-gt v6, v8, :cond_5f

    # getter for: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v8

    add-int/2addr v8, v3

    goto :goto_63

    :cond_5f
    # getter for: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v8

    .line 467
    .local v8, "size":I
    :goto_63
    if-ge v8, v5, :cond_67

    .line 468
    move v5, v8

    .line 469
    move v2, v6

    .line 462
    .end local v7    # "edge":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .end local v8    # "size":I
    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 474
    .end local v6    # "j":I
    :cond_6a
    if-ltz v2, :cond_76

    .line 477
    new-instance v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    aget-object v4, v1, v0

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-object v3

    .line 475
    :cond_76
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_96

    :goto_95
    throw v3

    :goto_96
    goto :goto_95
.end method

.method static getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I
    .registers 11
    .param p0, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p1, "from"    # I
    .param p2, "c40"    # Z
    .param p3, "characterLength"    # [I

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "thirdsCount":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_80

    .line 174
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 175
    aput v3, p3, v3

    .line 176
    return v3

    .line 178
    :cond_12
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    .line 179
    .local v2, "ci":C
    if-eqz p2, :cond_1e

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_1e
    if-nez p2, :cond_29

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 180
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 181
    :cond_29
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v4

    invoke-static {v2, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v4

    if-nez v4, :cond_36

    .line 182
    add-int/lit8 v0, v0, 0x2

    goto :goto_57

    .line 184
    :cond_36
    and-int/lit16 v4, v2, 0xff

    .line 185
    .local v4, "asciiValue":I
    const/16 v5, 0x80

    if-lt v4, v5, :cond_55

    if-eqz p2, :cond_47

    add-int/lit8 v5, v4, -0x80

    int-to-char v5, v5

    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v5

    if-nez v5, :cond_52

    :cond_47
    if-nez p2, :cond_55

    add-int/lit8 v5, v4, -0x80

    int-to-char v5, v5

    .line 186
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 187
    :cond_52
    add-int/lit8 v0, v0, 0x3

    goto :goto_57

    .line 189
    :cond_55
    add-int/lit8 v0, v0, 0x4

    .line 193
    .end local v4    # "asciiValue":I
    :goto_57
    rem-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_6d

    add-int/lit8 v4, v0, -0x2

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_6a

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v5

    if-ne v4, v5, :cond_6a

    goto :goto_6d

    .line 173
    .end local v2    # "ci":C
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    .restart local v2    # "ci":C
    :cond_6d
    :goto_6d
    sub-int v4, v1, p1

    add-int/lit8 v4, v4, 0x1

    aput v4, p3, v3

    .line 195
    int-to-double v3, v0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    return v3

    .line 198
    .end local v1    # "i":I
    .end local v2    # "ci":C
    :cond_80
    aput v3, p3, v3

    .line 199
    return v3
.end method

.method static isExtendedASCII(CI)Z
    .registers 3
    .param p0, "ch"    # C
    .param p1, "fnc1"    # I

    .line 79
    if-eq p0, p1, :cond_c

    const/16 v0, 0x80

    if-lt p0, v0, :cond_c

    const/16 v0, 0xff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isInC40Shift1Set(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 83
    const/16 v0, 0x1f

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isInC40Shift2Set(CI)Z
    .registers 8
    .param p0, "ch"    # C
    .param p1, "fnc1"    # I

    .line 87
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x1

    if-ge v3, v1, :cond_10

    aget-char v5, v0, v3

    .line 88
    .local v5, "c40Shift2Char":C
    if-ne v5, p0, :cond_d

    .line 89
    return v4

    .line 87
    .end local v5    # "c40Shift2Char":C
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 92
    :cond_10
    if-ne p0, p1, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method private static isInTextShift1Set(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 96
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    move-result v0

    return v0
.end method

.method private static isInTextShift2Set(CI)Z
    .registers 3
    .param p0, "ch"    # C
    .param p1, "fnc1"    # I

    .line 100
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    move-result v0

    return v0
.end method
