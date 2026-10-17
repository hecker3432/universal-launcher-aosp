.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 46
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "UPPER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LOWER"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "DIGIT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "MIXED"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "PUNCT"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 59
    new-array v1, v0, [[I

    const v2, 0x5001c

    const v8, 0x5001e

    const v9, 0x5001d

    const v10, 0xa03be

    filled-new-array {v3, v2, v8, v9, v10}, [I

    move-result-object v11

    aput-object v11, v1, v3

    const v11, 0x901ee

    filled-new-array {v11, v3, v8, v9, v10}, [I

    move-result-object v11

    aput-object v11, v1, v4

    const v11, 0x901dd

    const v12, 0xe3bbe

    const v13, 0x4000e

    const v14, 0x901dc

    filled-new-array {v13, v14, v3, v11, v12}, [I

    move-result-object v11

    aput-object v11, v1, v5

    filled-new-array {v9, v2, v10, v3, v8}, [I

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0xa03fe

    const v8, 0xa03fd

    const v9, 0x5001f

    const v10, 0xa03fc

    filled-new-array {v9, v10, v2, v8, v3}, [I

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 100
    new-array v1, v5, [I

    const/16 v2, 0x100

    aput v2, v1, v4

    aput v0, v1, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 102
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v4, v0, v1

    .line 103
    const/16 v0, 0x41

    .local v0, "c":I
    :goto_83
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_93

    .line 104
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v2, v2, v3

    add-int/lit8 v8, v0, -0x41

    add-int/2addr v8, v5

    aput v8, v2, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 106
    .end local v0    # "c":I
    :cond_93
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v4

    aput v4, v0, v1

    .line 107
    const/16 v0, 0x61

    .restart local v0    # "c":I
    :goto_9b
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_ab

    .line 108
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v2, v2, v4

    add-int/lit8 v8, v0, -0x61

    add-int/2addr v8, v5

    aput v8, v2, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 110
    .end local v0    # "c":I
    :cond_ab
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    aput v4, v0, v1

    .line 111
    const/16 v0, 0x30

    .restart local v0    # "c":I
    :goto_b3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_c3

    .line 112
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v1, v1, v5

    add-int/lit8 v2, v0, -0x30

    add-int/2addr v2, v5

    aput v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 114
    .end local v0    # "c":I
    :cond_c3
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2c

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 115
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v0, v0, v5

    const/16 v1, 0x2e

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 116
    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_14e

    .line 121
    .local v1, "mixedTable":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_df
    array-length v8, v1

    if-ge v2, v8, :cond_ed

    .line 122
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v6

    aget v9, v1, v2

    aput v2, v8, v9

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_df

    .line 124
    .end local v2    # "i":I
    :cond_ed
    const/16 v2, 0x1f

    new-array v2, v2, [I

    fill-array-data v2, :array_18a

    .line 129
    .local v2, "punctTable":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f5
    array-length v9, v2

    if-ge v8, v9, :cond_107

    .line 130
    aget v9, v2, v8

    if-lez v9, :cond_104

    .line 131
    sget-object v9, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v9, v9, v7

    aget v10, v2, v8

    aput v8, v9, v10

    .line 129
    :cond_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_f5

    .line 138
    .end local v1    # "mixedTable":[I
    .end local v2    # "punctTable":[I
    .end local v8    # "i":I
    :cond_107
    new-array v1, v5, [I

    const/4 v2, 0x6

    aput v2, v1, v4

    aput v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 140
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v2, v1

    const/4 v8, 0x0

    :goto_11c
    if-ge v8, v2, :cond_127

    aget-object v9, v1, v8

    .line 141
    .local v9, "table":[I
    const/4 v10, -0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    .line 140
    .end local v9    # "table":[I
    add-int/lit8 v8, v8, 0x1

    goto :goto_11c

    .line 143
    :cond_127
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v1, v1, v3

    aput v3, v1, v7

    .line 145
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v1, v1, v4

    aput v3, v1, v7

    .line 146
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v1, v1, v4

    aput v0, v1, v3

    .line 148
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v0, v0, v6

    aput v3, v0, v7

    .line 150
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v0, v0, v5

    aput v3, v0, v7

    .line 151
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v0, v0, v5

    const/16 v1, 0xf

    aput v1, v0, v3

    .line 152
    return-void

    :array_14e
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_18a
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "text"    # [B

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    .line 160
    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .registers 3
    .param p1, "text"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 164
    iput-object p2, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    .line 165
    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 305
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 306
    .local v0, "result":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 307
    .local v2, "newState":Lcom/google/zxing/aztec/encoder/State;
    const/4 v3, 0x1

    .line 308
    .local v3, "add":Z
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 309
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/aztec/encoder/State;

    .line 310
    .local v5, "oldState":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v5, v2}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 311
    const/4 v3, 0x0

    .line 312
    goto :goto_38

    .line 314
    :cond_2e
    invoke-virtual {v2, v5}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 315
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 317
    .end local v5    # "oldState":Lcom/google/zxing/aztec/encoder/State;
    :cond_37
    goto :goto_1a

    .line 318
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :cond_38
    :goto_38
    if-eqz v3, :cond_3d

    .line 319
    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 321
    .end local v2    # "newState":Lcom/google/zxing/aztec/encoder/State;
    .end local v3    # "add":Z
    :cond_3d
    goto :goto_9

    .line 322
    :cond_3e
    return-object v0
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .registers 11
    .param p1, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 236
    .local v0, "ch":C
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 237
    .local v1, "charInCurrentTable":Z
    :goto_16
    const/4 v2, 0x0

    .line 238
    .local v2, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v3, 0x0

    .local v3, "mode":I
    :goto_18
    const/4 v4, 0x4

    if-gt v3, v4, :cond_53

    .line 239
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v4, v4, v3

    aget v4, v4, v0

    .line 240
    .local v4, "charInMode":I
    if-lez v4, :cond_50

    .line 241
    if-nez v2, :cond_29

    .line 243
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 246
    :cond_29
    if-eqz v1, :cond_34

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v5

    if-eq v3, v5, :cond_34

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3b

    .line 251
    :cond_34
    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 252
    .local v5, "latchState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v5    # "latchState":Lcom/google/zxing/aztec/encoder/State;
    :cond_3b
    if-nez v1, :cond_50

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v3

    if-ltz v5, :cond_50

    .line 258
    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    .line 259
    .local v5, "shiftState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v4    # "charInMode":I
    .end local v5    # "shiftState":Lcom/google/zxing/aztec/encoder/State;
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 263
    .end local v3    # "mode":I
    :cond_53
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v3

    if-gtz v3, :cond_65

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, v0

    if-nez v3, :cond_6c

    .line 267
    :cond_65
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    .line 268
    .local v3, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v3    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_6c
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .registers 8
    .param p0, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 283
    .local v0, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_19

    .line 287
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_19
    const/4 v2, 0x3

    if-eq p2, v2, :cond_1e

    if-ne p2, v1, :cond_2d

    .line 291
    :cond_1e
    rsub-int/lit8 v1, p2, 0x10

    .line 292
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 293
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 294
    .local v1, "digitState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v1    # "digitState":Lcom/google/zxing/aztec/encoder/State;
    :cond_2d
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v1

    if-lez v1, :cond_40

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 300
    .local v1, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v1    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :cond_40
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .registers 6
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 224
    .local p1, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 225
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 226
    .local v2, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-direct {p0, v2, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    .line 227
    .end local v2    # "state":Lcom/google/zxing/aztec/encoder/State;
    goto :goto_9

    .line 228
    :cond_19
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .registers 6
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 273
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 274
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 275
    .local v2, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-static {v2, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    .line 276
    .end local v2    # "state":Lcom/google/zxing/aztec/encoder/State;
    goto :goto_9

    .line 277
    :cond_19
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .registers 8

    .line 171
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    .line 172
    .local v0, "initialState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_32

    .line 173
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 174
    .local v1, "eci":Lcom/google/zxing/common/CharacterSetECI;
    if-eqz v1, :cond_17

    .line 177
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/zxing/aztec/encoder/State;->appendFLGn(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    goto :goto_32

    .line 175
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No ECI code for character set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v1    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_32
    :goto_32
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_37
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v3, v3

    if-ge v2, v3, :cond_79

    .line 182
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_4b

    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    .line 183
    .local v3, "nextChar":I
    :goto_4c
    iget-object v4, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v4, v4, v2

    const/16 v6, 0x20

    sparse-switch v4, :sswitch_data_8c

    .line 197
    const/4 v5, 0x0

    .local v5, "pairCode":I
    goto :goto_69

    .line 194
    .end local v5    # "pairCode":I
    :sswitch_57
    if-ne v3, v6, :cond_5a

    const/4 v5, 0x5

    .line 195
    .restart local v5    # "pairCode":I
    :cond_5a
    goto :goto_69

    .line 188
    .end local v5    # "pairCode":I
    :sswitch_5b
    if-ne v3, v6, :cond_5e

    const/4 v5, 0x3

    .line 189
    .restart local v5    # "pairCode":I
    :cond_5e
    goto :goto_69

    .line 191
    .end local v5    # "pairCode":I
    :sswitch_5f
    if-ne v3, v6, :cond_62

    const/4 v5, 0x4

    .line 192
    .restart local v5    # "pairCode":I
    :cond_62
    goto :goto_69

    .line 185
    .end local v5    # "pairCode":I
    :sswitch_63
    const/16 v4, 0xa

    if-ne v3, v4, :cond_68

    const/4 v5, 0x2

    .line 186
    .restart local v5    # "pairCode":I
    :cond_68
    nop

    .line 199
    :goto_69
    if-lez v5, :cond_72

    .line 202
    invoke-static {v1, v2, v5}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v1

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 206
    :cond_72
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v1

    .line 180
    .end local v3    # "nextChar":I
    .end local v5    # "pairCode":I
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 210
    .end local v2    # "index":I
    :cond_79
    new-instance v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v2, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 217
    .local v2, "minState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v2, v3}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_8c
    .sparse-switch
        0xd -> :sswitch_63
        0x2c -> :sswitch_5f
        0x2e -> :sswitch_5b
        0x3a -> :sswitch_57
    .end sparse-switch
.end method
