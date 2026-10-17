.class final Lcom/google/zxing/aztec/encoder/BinaryShiftToken;
.super Lcom/google/zxing/aztec/encoder/Token;
.source "BinaryShiftToken.java"


# instance fields
.field private final binaryShiftByteCount:I

.field private final binaryShiftStart:I


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/Token;II)V
    .registers 4
    .param p1, "previous"    # Lcom/google/zxing/aztec/encoder/Token;
    .param p2, "binaryShiftStart"    # I
    .param p3, "binaryShiftByteCount"    # I

    .line 29
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/Token;-><init>(Lcom/google/zxing/aztec/encoder/Token;)V

    .line 30
    iput p2, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    .line 31
    iput p3, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public appendTo(Lcom/google/zxing/common/BitArray;[B)V
    .registers 8
    .param p1, "bitArray"    # Lcom/google/zxing/common/BitArray;
    .param p2, "text"    # [B

    .line 36
    iget v0, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:I

    .line 37
    .local v0, "bsbc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_39

    .line 38
    const/16 v2, 0x3e

    const/16 v3, 0x1f

    if-eqz v1, :cond_f

    if-ne v1, v3, :cond_2c

    if-gt v0, v2, :cond_2c

    .line 41
    :cond_f
    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 42
    if-le v0, v2, :cond_1d

    .line 43
    add-int/lit8 v2, v0, -0x1f

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2c

    .line 44
    :cond_1d
    if-nez v1, :cond_27

    .line 46
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2c

    .line 49
    :cond_27
    add-int/lit8 v2, v0, -0x1f

    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 52
    :cond_2c
    :goto_2c
    iget v2, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    add-int/2addr v2, v1

    aget-byte v2, p2, v2

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 54
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
