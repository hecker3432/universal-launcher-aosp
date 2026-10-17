.class final Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;
.source "ModulusPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .registers 8
    .param p1, "field"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    .param p2, "coefficients"    # [I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    array-length v0, p2

    if-eqz v0, :cond_36

    .line 31
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 32
    array-length v0, p2

    .line 33
    .local v0, "coefficientsLength":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_33

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_33

    .line 35
    const/4 v2, 0x1

    .line 36
    .local v2, "firstNonZero":I
    :goto_12
    if-ge v2, v0, :cond_1b

    aget v3, p2, v2

    if-nez v3, :cond_1b

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 39
    :cond_1b
    if-ne v2, v0, :cond_24

    .line 40
    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    goto :goto_32

    .line 42
    :cond_24
    sub-int v3, v0, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 43
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v4, v4

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .end local v2    # "firstNonZero":I
    :goto_32
    goto :goto_35

    .line 50
    :cond_33
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 52
    :goto_35
    return-void

    .line 29
    .end local v0    # "coefficientsLength":I
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3d

    :goto_3c
    throw v0

    :goto_3d
    goto :goto_3c
.end method


# virtual methods
.method add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 10
    .param p1, "other"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 104
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 107
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    return-object p1

    .line 110
    :cond_11
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 111
    return-object p0

    .line 114
    :cond_18
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 115
    .local v0, "smallerCoefficients":[I
    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 116
    .local v1, "largerCoefficients":[I
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_23

    .line 117
    move-object v2, v0

    .line 118
    .local v2, "temp":[I
    move-object v0, v1

    .line 119
    move-object v1, v2

    .line 121
    .end local v2    # "temp":[I
    :cond_23
    array-length v2, v1

    new-array v2, v2, [I

    .line 122
    .local v2, "sumDiff":[I
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    .line 124
    .local v3, "lengthDiff":I
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    move v4, v3

    .local v4, "i":I
    :goto_2e
    array-length v5, v1

    if-ge v4, v5, :cond_42

    .line 127
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    sub-int v6, v4, v3

    aget v6, v0, v6

    aget v7, v1, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v5

    aput v5, v2, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 130
    .end local v4    # "i":I
    :cond_42
    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v4, v5, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v4

    .line 105
    .end local v0    # "smallerCoefficients":[I
    .end local v1    # "largerCoefficients":[I
    .end local v2    # "sumDiff":[I
    .end local v3    # "lengthDiff":I
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :goto_52
    throw v0

    :goto_53
    goto :goto_52
.end method

.method evaluateAt(I)I
    .registers 8
    .param p1, "a"    # I

    .line 83
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v0

    return v0

    .line 87
    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1d

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v3, v2

    :goto_f
    if-ge v0, v3, :cond_1c

    aget v4, v2, v0

    .line 91
    .local v4, "coefficient":I
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v5, v1, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v1

    .line 90
    .end local v4    # "coefficient":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 93
    :cond_1c
    return v1

    .line 95
    .end local v1    # "result":I
    :cond_1d
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v0, v1, v0

    .line 96
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v1

    .line 97
    .local v1, "size":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_25
    if-ge v2, v1, :cond_3a

    .line 98
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, p1, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v4

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v0

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 100
    .end local v2    # "i":I
    :cond_3a
    return v0
.end method

.method getCoefficient(I)I
    .registers 4
    .param p1, "degree"    # I

    .line 76
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 7
    .param p1, "scalar"    # I

    .line 174
    if-nez p1, :cond_9

    .line 175
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    return-object v0

    .line 177
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 178
    return-object p0

    .line 180
    :cond_d
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    .line 181
    .local v0, "size":I
    new-array v1, v0, [I

    .line 182
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_24

    .line 183
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 185
    .end local v2    # "i":I
    :cond_24
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v2
.end method

.method multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 15
    .param p1, "other"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 144
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 147
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4f

    .line 150
    :cond_17
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 151
    .local v0, "aCoefficients":[I
    array-length v1, v0

    .line 152
    .local v1, "aLength":I
    iget-object v2, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 153
    .local v2, "bCoefficients":[I
    array-length v3, v2

    .line 154
    .local v3, "bLength":I
    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 155
    .local v4, "product":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v1, :cond_47

    .line 156
    aget v6, v0, v5

    .line 157
    .local v6, "aCoeff":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_29
    if-ge v7, v3, :cond_44

    .line 158
    add-int v8, v5, v7

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    add-int v10, v5, v7

    aget v10, v4, v10

    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v12, v2, v7

    invoke-virtual {v11, v6, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v9

    aput v9, v4, v8

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 155
    .end local v6    # "aCoeff":I
    .end local v7    # "j":I
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 161
    .end local v5    # "i":I
    :cond_47
    new-instance v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v5, v6, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v5

    .line 148
    .end local v0    # "aCoefficients":[I
    .end local v1    # "aLength":I
    .end local v2    # "bCoefficients":[I
    .end local v3    # "bLength":I
    .end local v4    # "product":[I
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    return-object v0

    .line 145
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5f

    :goto_5e
    throw v0

    :goto_5f
    goto :goto_5e
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 8
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .line 189
    if-ltz p1, :cond_2c

    .line 192
    if-nez p2, :cond_b

    .line 193
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    return-object v0

    .line 195
    :cond_b
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    .line 196
    .local v0, "size":I
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 197
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_24

    .line 198
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 200
    .end local v2    # "i":I
    :cond_24
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v2

    .line 190
    .end local v0    # "size":I
    .end local v1    # "product":[I
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_33

    :goto_32
    throw v0

    :goto_33
    goto :goto_32
.end method

.method negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    .line 166
    .local v0, "size":I
    new-array v1, v0, [I

    .line 167
    .local v1, "negativeCoefficients":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_18

    .line 168
    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v3

    aput v3, v1, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 170
    .end local v2    # "i":I
    :cond_18
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v2
.end method

.method subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .registers 4
    .param p1, "other"    # Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    .line 134
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 137
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 138
    return-object p0

    .line 140
    :cond_11
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    .local v1, "degree":I
    :goto_f
    if-ltz v1, :cond_48

    .line 207
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v2

    .line 208
    .local v2, "coefficient":I
    if-eqz v2, :cond_45

    .line 209
    if-gez v2, :cond_20

    .line 210
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    neg-int v2, v2

    goto :goto_2b

    .line 213
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 214
    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2b
    :goto_2b
    const/4 v3, 0x1

    if-eqz v1, :cond_30

    if-eq v2, v3, :cond_33

    .line 218
    :cond_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    :cond_33
    if-eqz v1, :cond_45

    .line 221
    if-ne v1, v3, :cond_3d

    .line 222
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 224
    :cond_3d
    const-string v3, "x^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .end local v2    # "coefficient":I
    :cond_45
    :goto_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 230
    .end local v1    # "degree":I
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
