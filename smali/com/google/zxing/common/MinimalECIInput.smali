.class public Lcom/google/zxing/common/MinimalECIInput;
.super Ljava/lang/Object;
.source "MinimalECIInput.java"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    }
.end annotation


# static fields
.field private static final COST_PER_ECI:I = 0x3


# instance fields
.field private final bytes:[I

.field private final fnc1:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .registers 9
    .param p1, "stringToEncode"    # Ljava/lang/String;
    .param p2, "priorityCharset"    # Ljava/nio/charset/Charset;
    .param p3, "fnc1"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p3, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    .line 49
    new-instance v0, Lcom/google/zxing/common/ECIEncoderSet;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 50
    .local v0, "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_30

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 54
    .local v2, "c":C
    iget-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    if-ne v2, p3, :cond_2a

    const/16 v4, 0x3e8

    goto :goto_2b

    :cond_2a
    move v4, v2

    :goto_2b
    aput v4, v3, v1

    .line 52
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .end local v1    # "i":I
    :cond_30
    goto :goto_37

    .line 57
    :cond_31
    invoke-static {p1, v0, p3}, Lcom/google/zxing/common/MinimalECIInput;->encodeMinimally(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    .line 59
    :goto_37
    return-void
.end method

.method static addEdge([[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;)V
    .registers 5
    .param p0, "edges"    # [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .param p1, "to"    # I
    .param p2, "edge"    # Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 233
    aget-object v0, p0, p1

    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    aget-object v0, p0, p1

    .line 234
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    aget-object v0, v0, v1

    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I
    invoke-static {v0}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v0

    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    if-le v0, v1, :cond_24

    .line 235
    :cond_1c
    aget-object v0, p0, p1

    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {p2}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v1

    aput-object p2, v0, v1

    .line 237
    :cond_24
    return-void
.end method

.method static addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V
    .registers 16
    .param p0, "stringToEncode"    # Ljava/lang/String;
    .param p1, "encoderSet"    # Lcom/google/zxing/common/ECIEncoderSet;
    .param p2, "edges"    # [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .param p3, "from"    # I
    .param p4, "previous"    # Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .param p5, "fnc1"    # I

    .line 246
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 248
    .local v1, "ch":C
    const/4 v0, 0x0

    .line 249
    .local v0, "start":I
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v2

    .line 250
    .local v2, "end":I
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v3

    if-ltz v3, :cond_24

    if-eq v1, p5, :cond_1b

    .line 251
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v3

    .line 250
    invoke-virtual {p1, v1, v3}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 252
    :cond_1b
    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    move-result v0

    .line 253
    add-int/lit8 v2, v0, 0x1

    move v7, v0

    move v8, v2

    goto :goto_26

    .line 256
    :cond_24
    move v7, v0

    move v8, v2

    .end local v0    # "start":I
    .end local v2    # "end":I
    .local v7, "start":I
    .local v8, "end":I
    :goto_26
    move v0, v7

    move v3, v0

    .local v3, "i":I
    :goto_28
    if-ge v3, v8, :cond_4b

    .line 257
    if-eq v1, p5, :cond_37

    invoke-virtual {p1, v1, v3}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_37

    :cond_33
    move-object v2, p1

    move-object v4, p4

    move v5, p5

    goto :goto_45

    .line 258
    :cond_37
    :goto_37
    add-int/lit8 v9, p3, 0x1

    new-instance v0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    .end local p1    # "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    .end local p4    # "previous":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .end local p5    # "fnc1":I
    .local v2, "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    .local v4, "previous":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .local v5, "fnc1":I
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;-><init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$1;)V

    invoke-static {p2, v9, v0}, Lcom/google/zxing/common/MinimalECIInput;->addEdge([[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;)V

    .line 256
    :goto_45
    add-int/lit8 v3, v3, 0x1

    move-object p1, v2

    move-object p4, v4

    move p5, v5

    goto :goto_28

    .line 261
    .end local v2    # "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    .end local v3    # "i":I
    .end local v4    # "previous":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .end local v5    # "fnc1":I
    .restart local p1    # "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    .restart local p4    # "previous":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .restart local p5    # "fnc1":I
    :cond_4b
    return-void
.end method

.method static encodeMinimally(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;I)[I
    .registers 14
    .param p0, "stringToEncode"    # Ljava/lang/String;
    .param p1, "encoderSet"    # Lcom/google/zxing/common/ECIEncoderSet;
    .param p2, "fnc1"    # I

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 267
    .local v0, "inputLength":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    .line 268
    .local v7, "edges":[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move v10, p2

    .end local p0    # "stringToEncode":Ljava/lang/String;
    .end local p1    # "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    .end local p2    # "fnc1":I
    .local v5, "stringToEncode":Ljava/lang/String;
    .local v6, "encoderSet":Lcom/google/zxing/common/ECIEncoderSet;
    .local v10, "fnc1":I
    invoke-static/range {v5 .. v10}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    .line 270
    const/4 p0, 0x1

    move v8, p0

    .local v8, "i":I
    :goto_26
    if-gt v8, v0, :cond_55

    .line 271
    const/4 p0, 0x0

    .local p0, "j":I
    :goto_29
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result p1

    if-ge p0, p1, :cond_41

    .line 272
    aget-object p1, v7, v8

    aget-object p1, p1, p0

    if-eqz p1, :cond_3e

    if-ge v8, v0, :cond_3e

    .line 273
    aget-object p1, v7, v8

    aget-object v9, p1, p0

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    .line 271
    :cond_3e
    add-int/lit8 p0, p0, 0x1

    goto :goto_29

    .line 277
    .end local p0    # "j":I
    :cond_41
    const/4 p0, 0x0

    .restart local p0    # "j":I
    :goto_42
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result p1

    if-ge p0, p1, :cond_52

    .line 278
    add-int/lit8 p1, v8, -0x1

    aget-object p1, v7, p1

    const/4 p2, 0x0

    aput-object p2, p1, p0

    .line 277
    add-int/lit8 p0, p0, 0x1

    goto :goto_42

    .line 270
    .end local p0    # "j":I
    :cond_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 281
    .end local v8    # "i":I
    :cond_55
    const/4 p0, -0x1

    .line 282
    .local p0, "minimalJ":I
    const p1, 0x7fffffff

    .line 283
    .local p1, "minimalSize":I
    const/4 p2, 0x0

    .local p2, "j":I
    :goto_5a
    invoke-virtual {v6}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    move-result v1

    if-ge p2, v1, :cond_78

    .line 284
    aget-object v1, v7, v0

    aget-object v1, v1, p2

    if-eqz v1, :cond_75

    .line 285
    aget-object v1, v7, v0

    aget-object v1, v1, p2

    .line 286
    .local v1, "edge":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v3

    if-ge v3, p1, :cond_75

    .line 287
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result p1

    .line 288
    move p0, p2

    .line 283
    .end local v1    # "edge":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    :cond_75
    add-int/lit8 p2, p2, 0x1

    goto :goto_5a

    .line 292
    .end local p2    # "j":I
    :cond_78
    if-ltz p0, :cond_f9

    .line 295
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local p2, "intsAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v1, v7, v0

    aget-object v1, v1, p0

    .line 297
    .local v1, "current":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    :goto_83
    if-eqz v1, :cond_df

    .line 298
    invoke-virtual {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->isFNC1()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 299
    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b3

    .line 301
    :cond_95
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->c:C
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$300(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)C

    move-result v3

    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v8

    invoke-virtual {v6, v3, v8}, Lcom/google/zxing/common/ECIEncoderSet;->encode(CI)[B

    move-result-object v3

    .line 302
    .local v3, "bytes":[B
    array-length v8, v3

    sub-int/2addr v8, v4

    .restart local v8    # "i":I
    :goto_a3
    if-ltz v8, :cond_b3

    .line 303
    aget-byte v9, v3, v8

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 302
    add-int/lit8 v8, v8, -0x1

    goto :goto_a3

    .line 306
    .end local v3    # "bytes":[B
    .end local v8    # "i":I
    :cond_b3
    :goto_b3
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    move-result-object v3

    if-nez v3, :cond_bb

    const/4 v3, 0x0

    goto :goto_c3

    :cond_bb
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    move-result-object v3

    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {v3}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v3

    .line 307
    .local v3, "previousEncoderIndex":I
    :goto_c3
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v8

    if-eq v3, v8, :cond_da

    .line 308
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/zxing/common/ECIEncoderSet;->getECIValue(I)I

    move-result v8

    add-int/lit16 v8, v8, 0x100

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 310
    :cond_da
    # getter for: Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    invoke-static {v1}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    move-result-object v1

    .line 311
    .end local v3    # "previousEncoderIndex":I
    goto :goto_83

    .line 312
    :cond_df
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 313
    .local v2, "ints":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e6
    array-length v4, v2

    if-ge v3, v4, :cond_f8

    .line 314
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 316
    .end local v3    # "i":I
    :cond_f8
    return-object v2

    .line 293
    .end local v1    # "current":Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .end local v2    # "ints":[I
    .end local p2    # "intsAL":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_f9
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_119

    :goto_118
    throw p2

    :goto_119
    goto :goto_118
.end method


# virtual methods
.method public charAt(I)C
    .registers 5
    .param p1, "index"    # I

    .line 104
    if-ltz p1, :cond_3c

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isFNC1(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    goto :goto_1b

    :cond_17
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    :goto_1b
    int-to-char v0, v0

    return v0

    .line 108
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a character but an ECI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getECIValue(I)I
    .registers 5
    .param p1, "index"    # I

    .line 202
    if-ltz p1, :cond_34

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-ge p1, v0, :cond_34

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 208
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    add-int/lit16 v0, v0, -0x100

    return v0

    .line 206
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an ECI but a character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFNC1Character()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    return v0
.end method

.method public haveNCharacters(II)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "n"    # I

    .line 76
    add-int v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_b

    .line 77
    return v3

    .line 79
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, p2, :cond_1a

    .line 80
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 81
    return v3

    .line 79
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 84
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public isECI(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 159
    if-ltz p1, :cond_1c

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-ge p1, v0, :cond_1c

    .line 162
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 160
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFNC1(I)Z
    .registers 5
    .param p1, "index"    # I

    .line 177
    if-ltz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    .line 180
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    aget v0, v0, p1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 178
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 134
    if-ltz p1, :cond_42

    if-gt p1, p2, :cond_42

    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v0

    if-gt p2, v0, :cond_42

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "result":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_10
    if-ge v1, p2, :cond_41

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 140
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a character but an ECI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v1    # "i":I
    :cond_41
    return-object v0

    .line 135
    .end local v0    # "result":Ljava/lang/StringBuilder;
    :cond_42
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/google/zxing/common/MinimalECIInput;->length()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 215
    if-lez v1, :cond_13

    .line 216
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_13
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 219
    const-string v2, "ECI("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->getECIValue(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 222
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_43

    .line 223
    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 227
    :cond_43
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 230
    .end local v1    # "i":I
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
