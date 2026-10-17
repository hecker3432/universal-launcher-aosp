.class final Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .registers 8
    .param p1, "field"    # Lcom/google/zxing/common/reedsolomon/GenericGF;
    .param p2, "coefficients"    # [I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    array-length v0, p2

    if-eqz v0, :cond_36

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    array-length v0, p2

    .line 48
    .local v0, "coefficientsLength":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_33

    const/4 v1, 0x0

    aget v2, p2, v1

    if-nez v2, :cond_33

    .line 50
    const/4 v2, 0x1

    .line 51
    .local v2, "firstNonZero":I
    :goto_12
    if-ge v2, v0, :cond_1b

    aget v3, p2, v2

    if-nez v3, :cond_1b

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 54
    :cond_1b
    if-ne v2, v0, :cond_24

    .line 55
    filled-new-array {v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    goto :goto_32

    .line 57
    :cond_24
    sub-int v3, v0, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 58
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v4, v4

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .end local v2    # "firstNonZero":I
    :goto_32
    goto :goto_35

    .line 65
    :cond_33
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 67
    :goto_35
    return-void

    .line 44
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
.method addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 9
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 119
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 123
    return-object p1

    .line 125
    :cond_11
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 126
    return-object p0

    .line 129
    :cond_18
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 130
    .local v0, "smallerCoefficients":[I
    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 131
    .local v1, "largerCoefficients":[I
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_23

    .line 132
    move-object v2, v0

    .line 133
    .local v2, "temp":[I
    move-object v0, v1

    .line 134
    move-object v1, v2

    .line 136
    .end local v2    # "temp":[I
    :cond_23
    array-length v2, v1

    new-array v2, v2, [I

    .line 137
    .local v2, "sumDiff":[I
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    .line 139
    .local v3, "lengthDiff":I
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v4, v3

    .local v4, "i":I
    :goto_2e
    array-length v5, v1

    if-ge v4, v5, :cond_40

    .line 142
    sub-int v5, v4, v3

    aget v5, v0, v5

    aget v6, v1, v4

    invoke-static {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v5

    aput v5, v2, v4

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 145
    .end local v4    # "i":I
    :cond_40
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v4

    .line 120
    .end local v0    # "smallerCoefficients":[I
    .end local v1    # "largerCoefficients":[I
    .end local v2    # "sumDiff":[I
    .end local v3    # "lengthDiff":I
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 10
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 201
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 204
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_69

    .line 208
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 209
    .local v0, "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, p0

    .line 211
    .local v1, "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v2

    .line 212
    .local v2, "denominatorLeadingTerm":I
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v3

    .line 214
    .local v3, "inverseDenominatorLeadingTerm":I
    :goto_25
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    if-lt v4, v5, :cond_5f

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 215
    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    sub-int/2addr v4, v5

    .line 216
    .local v4, "degreeDifference":I
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    .line 217
    .local v5, "scale":I
    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    .line 218
    .local v6, "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    iget-object v7, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v4, v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    .line 219
    .local v7, "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    .line 220
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    .line 221
    .end local v4    # "degreeDifference":I
    .end local v5    # "scale":I
    .end local v6    # "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v7    # "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    goto :goto_25

    .line 223
    :cond_5f
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    return-object v4

    .line 205
    .end local v0    # "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v1    # "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v2    # "denominatorLeadingTerm":I
    .end local v3    # "inverseDenominatorLeadingTerm":I
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :goto_79
    throw v0

    :goto_7a
    goto :goto_79
.end method

.method evaluateAt(I)I
    .registers 7
    .param p1, "a"    # I

    .line 98
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v0

    return v0

    .line 102
    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1b

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v3, v2

    :goto_f
    if-ge v0, v3, :cond_1a

    aget v4, v2, v0

    .line 106
    .local v4, "coefficient":I
    invoke-static {v1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v1

    .line 105
    .end local v4    # "coefficient":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 108
    :cond_1a
    return v1

    .line 110
    .end local v1    # "result":I
    :cond_1b
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v0, v1, v0

    .line 111
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    .line 112
    .local v1, "size":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_23
    if-ge v2, v1, :cond_36

    .line 113
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3, p1, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v0

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 115
    .end local v2    # "i":I
    :cond_36
    return v0
.end method

.method getCoefficient(I)I
    .registers 4
    .param p1, "degree"    # I

    .line 91
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 7
    .param p1, "scalar"    # I

    .line 171
    if-nez p1, :cond_9

    .line 172
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    return-object v0

    .line 174
    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 175
    return-object p0

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    .line 178
    .local v0, "size":I
    new-array v1, v0, [I

    .line 179
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_24

    .line 180
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 182
    .end local v2    # "i":I
    :cond_24
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v2
.end method

.method multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 14
    .param p1, "other"    # Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 149
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 152
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4d

    .line 155
    :cond_17
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 156
    .local v0, "aCoefficients":[I
    array-length v1, v0

    .line 157
    .local v1, "aLength":I
    iget-object v2, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 158
    .local v2, "bCoefficients":[I
    array-length v3, v2

    .line 159
    .local v3, "bLength":I
    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 160
    .local v4, "product":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v1, :cond_45

    .line 161
    aget v6, v0, v5

    .line 162
    .local v6, "aCoeff":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_29
    if-ge v7, v3, :cond_42

    .line 163
    add-int v8, v5, v7

    add-int v9, v5, v7

    aget v9, v4, v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v11, v2, v7

    .line 164
    invoke-virtual {v10, v6, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    .line 163
    invoke-static {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v9

    aput v9, v4, v8

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 160
    .end local v6    # "aCoeff":I
    .end local v7    # "j":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 167
    .end local v5    # "i":I
    :cond_45
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v6, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v5

    .line 153
    .end local v0    # "aCoefficients":[I
    .end local v1    # "aLength":I
    .end local v2    # "bCoefficients":[I
    .end local v3    # "bLength":I
    .end local v4    # "product":[I
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    return-object v0

    .line 150
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 8
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .line 186
    if-ltz p1, :cond_2c

    .line 189
    if-nez p2, :cond_b

    .line 190
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    return-object v0

    .line 192
    :cond_b
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v0, v0

    .line 193
    .local v0, "size":I
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 194
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_24

    .line 195
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 197
    .end local v2    # "i":I
    :cond_24
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    return-object v2

    .line 187
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

.method public toString()Ljava/lang/String;
    .registers 7

    .line 228
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    const-string v0, "0"

    return-object v0

    .line 231
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v1

    .local v1, "degree":I
    :goto_18
    if-ltz v1, :cond_78

    .line 233
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v2

    .line 234
    .local v2, "coefficient":I
    if-eqz v2, :cond_75

    .line 235
    if-gez v2, :cond_35

    .line 236
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v3

    if-ne v1, v3, :cond_2e

    .line 237
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 239
    :cond_2e
    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :goto_33
    neg-int v2, v2

    goto :goto_40

    .line 243
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_40

    .line 244
    const-string v3, " + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_40
    :goto_40
    const/4 v3, 0x1

    if-eqz v1, :cond_45

    if-eq v2, v3, :cond_63

    .line 248
    :cond_45
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v4

    .line 249
    .local v4, "alphaPower":I
    if-nez v4, :cond_53

    .line 250
    const/16 v5, 0x31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 251
    :cond_53
    if-ne v4, v3, :cond_5b

    .line 252
    const/16 v5, 0x61

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 254
    :cond_5b
    const-string v5, "a^"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .end local v4    # "alphaPower":I
    :cond_63
    :goto_63
    if-eqz v1, :cond_75

    .line 259
    if-ne v1, v3, :cond_6d

    .line 260
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 262
    :cond_6d
    const-string v3, "x^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .end local v2    # "coefficient":I
    :cond_75
    :goto_75
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 268
    .end local v1    # "degree":I
    :cond_78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
