.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 32
    const/4 v0, 0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 33
    const/4 v1, 0x3

    filled-new-array {v1, v0, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    .line 40
    const/16 v2, 0xa

    new-array v2, v2, [[I

    filled-new-array {v0, v0, v1, v1, v0}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    filled-new-array {v1, v0, v0, v0, v1}, [I

    move-result-object v3

    aput-object v3, v2, v0

    filled-new-array {v0, v1, v0, v0, v1}, [I

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    filled-new-array {v1, v1, v0, v0, v0}, [I

    move-result-object v3

    aput-object v3, v2, v1

    filled-new-array {v0, v0, v1, v0, v1}, [I

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    filled-new-array {v1, v0, v1, v0, v0}, [I

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    filled-new-array {v0, v1, v1, v0, v0}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    filled-new-array {v0, v0, v0, v1, v1}, [I

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    filled-new-array {v1, v0, v0, v1, v0}, [I

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    filled-new-array {v0, v1, v0, v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 13
    .param p1, "contents"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 61
    .local v0, "length":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_79

    .line 64
    const/16 v1, 0x50

    if-gt v0, v1, :cond_60

    .line 69
    invoke-static {p1}, Lcom/google/zxing/oned/ITFWriter;->checkNumeric(Ljava/lang/String;)V

    .line 71
    mul-int/lit8 v1, v0, 0x9

    add-int/lit8 v1, v1, 0x9

    new-array v1, v1, [Z

    .line 72
    .local v1, "result":[Z
    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v2

    .line 73
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v0, :cond_5a

    .line 74
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 75
    .local v5, "one":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 76
    .local v7, "two":I
    new-array v6, v6, [I

    .line 77
    .local v6, "encoding":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_37
    const/4 v9, 0x5

    if-ge v8, v9, :cond_52

    .line 78
    mul-int/lit8 v9, v8, 0x2

    sget-object v10, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v10, v10, v5

    aget v10, v10, v8

    aput v10, v6, v9

    .line 79
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v4

    sget-object v10, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v10, v10, v7

    aget v10, v10, v8

    aput v10, v6, v9

    .line 77
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 81
    .end local v8    # "j":I
    :cond_52
    invoke-static {v1, v2, v6, v4}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v2, v8

    .line 73
    .end local v5    # "one":I
    .end local v6    # "encoding":[I
    .end local v7    # "two":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_1e

    .line 83
    .end local v3    # "i":I
    :cond_5a
    sget-object v3, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v1, v2, v3, v4}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    .line 85
    return-object v1

    .line 65
    .end local v1    # "result":[Z
    .end local v2    # "pos":I
    :cond_60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The length of the input should be even"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_82

    :goto_81
    throw v1

    :goto_82
    goto :goto_81
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
