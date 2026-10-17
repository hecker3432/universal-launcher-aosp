.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .registers 49

    .line 30
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_278

    new-array v2, v0, [I

    fill-array-data v2, :array_28a

    new-array v3, v0, [I

    fill-array-data v3, :array_29c

    new-array v4, v0, [I

    fill-array-data v4, :array_2ae

    new-array v5, v0, [I

    fill-array-data v5, :array_2c0

    new-array v6, v0, [I

    fill-array-data v6, :array_2d2

    new-array v7, v0, [I

    fill-array-data v7, :array_2e4

    new-array v8, v0, [[I

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const/4 v3, 0x3

    aput-object v4, v8, v3

    const/4 v4, 0x4

    aput-object v5, v8, v4

    const/4 v5, 0x5

    aput-object v6, v8, v5

    const/4 v6, 0x6

    aput-object v7, v8, v6

    sput-object v8, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    .line 40
    new-array v7, v5, [[I

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v8

    aput-object v8, v7, v9

    filled-new-array {v1, v9, v9, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v1

    filled-new-array {v1, v9, v1, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v2

    filled-new-array {v1, v9, v9, v9, v1}, [I

    move-result-object v8

    aput-object v8, v7, v3

    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v8

    aput-object v8, v7, v4

    sput-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    .line 49
    new-array v7, v0, [I

    fill-array-data v7, :array_2f6

    new-array v8, v0, [I

    fill-array-data v8, :array_308

    new-array v10, v0, [I

    fill-array-data v10, :array_31a

    new-array v11, v0, [I

    fill-array-data v11, :array_32c

    new-array v12, v0, [I

    fill-array-data v12, :array_33e

    new-array v13, v0, [I

    fill-array-data v13, :array_350

    new-array v14, v0, [I

    fill-array-data v14, :array_362

    new-array v15, v0, [I

    fill-array-data v15, :array_374

    const/16 v16, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_386

    const/16 v17, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_398

    const/16 v18, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_3aa

    const/16 v19, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_3bc

    const/16 v20, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_3ce

    const/16 v21, 0x1

    new-array v1, v0, [I

    fill-array-data v1, :array_3e0

    const/16 v22, 0x0

    new-array v9, v0, [I

    fill-array-data v9, :array_3f2

    move-object/from16 v23, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_404

    move-object/from16 v24, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_416

    move-object/from16 v25, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_428

    move-object/from16 v26, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_43a

    move-object/from16 v27, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_44c

    move-object/from16 v28, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_45e

    move-object/from16 v29, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_470

    move-object/from16 v30, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_482

    move-object/from16 v31, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_494

    move-object/from16 v32, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4a6

    move-object/from16 v33, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4b8

    move-object/from16 v34, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4ca

    move-object/from16 v35, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4dc

    move-object/from16 v36, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_4ee

    move-object/from16 v37, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_500

    move-object/from16 v38, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_512

    move-object/from16 v39, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_524

    move-object/from16 v40, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_536

    move-object/from16 v41, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_548

    move-object/from16 v42, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_55a

    move-object/from16 v43, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_56c

    move-object/from16 v44, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_57e

    move-object/from16 v45, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_590

    move-object/from16 v46, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5a2

    move-object/from16 v47, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5b4

    const/16 v48, 0x7

    const/16 v0, 0x28

    new-array v0, v0, [[I

    aput-object v7, v0, v22

    aput-object v8, v0, v21

    aput-object v10, v0, v20

    aput-object v11, v0, v19

    aput-object v12, v0, v18

    aput-object v13, v0, v17

    aput-object v14, v0, v16

    aput-object v15, v0, v48

    const/16 v7, 0x8

    aput-object v6, v0, v7

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/16 v5, 0xa

    aput-object v4, v0, v5

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v2, 0xd

    aput-object v23, v0, v2

    const/16 v2, 0xe

    aput-object v9, v0, v2

    const/16 v2, 0xf

    aput-object v24, v0, v2

    const/16 v2, 0x10

    aput-object v25, v0, v2

    const/16 v2, 0x11

    aput-object v26, v0, v2

    const/16 v2, 0x12

    aput-object v27, v0, v2

    const/16 v2, 0x13

    aput-object v28, v0, v2

    const/16 v2, 0x14

    aput-object v29, v0, v2

    const/16 v2, 0x15

    aput-object v30, v0, v2

    const/16 v2, 0x16

    aput-object v31, v0, v2

    const/16 v2, 0x17

    aput-object v32, v0, v2

    const/16 v2, 0x18

    aput-object v33, v0, v2

    const/16 v2, 0x19

    aput-object v34, v0, v2

    const/16 v2, 0x1a

    aput-object v35, v0, v2

    const/16 v2, 0x1b

    aput-object v36, v0, v2

    const/16 v2, 0x1c

    aput-object v37, v0, v2

    const/16 v2, 0x1d

    aput-object v38, v0, v2

    const/16 v2, 0x1e

    aput-object v39, v0, v2

    const/16 v2, 0x1f

    aput-object v40, v0, v2

    const/16 v2, 0x20

    aput-object v41, v0, v2

    const/16 v2, 0x21

    aput-object v42, v0, v2

    const/16 v2, 0x22

    aput-object v43, v0, v2

    const/16 v2, 0x23

    aput-object v44, v0, v2

    const/16 v2, 0x24

    aput-object v45, v0, v2

    const/16 v2, 0x25

    aput-object v46, v0, v2

    const/16 v2, 0x26

    aput-object v47, v0, v2

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    .line 93
    const/16 v0, 0xf

    new-array v0, v0, [[I

    const/4 v1, 0x0

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    filled-new-array {v7, v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x7

    filled-new-array {v7, v2}, [I

    move-result-object v3

    aput-object v3, v0, v16

    filled-new-array {v7, v7}, [I

    move-result-object v3

    aput-object v3, v0, v2

    filled-new-array {v2, v7}, [I

    move-result-object v2

    aput-object v2, v0, v7

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x4

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/4 v1, 0x3

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x2

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x1

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/4 v1, 0x0

    filled-new-array {v1, v7}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_278
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_28a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_29c
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2ae
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2c0
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_2d2
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2e4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2f6
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_308
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_31a
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_32c
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_33e
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_350
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_362
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_374
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_386
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_398
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3aa
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3bc
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3ce
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3e0
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3f2
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_404
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_416
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_428
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_43a
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_44c
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_45e
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_470
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_482
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_494
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_4a6
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_4b8
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_4ca
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_4dc
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_4ee
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_500
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_512
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_524
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_536
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_548
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_55a
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_56c
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_57e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_590
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_5a2
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_5b4
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .param p0, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p2, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p3, "maskPattern"    # I
    .param p4, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 137
    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 138
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 140
    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 142
    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 144
    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 145
    return-void
.end method

.method static calculateBCHCode(II)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "poly"    # I

    .line 305
    if-eqz p1, :cond_19

    .line 310
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    .line 311
    .local v0, "msbSetInPoly":I
    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    .line 313
    :goto_9
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_18

    .line 314
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_9

    .line 317
    :cond_18
    return p0

    .line 306
    .end local v0    # "msbSetInPoly":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 polynomial"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 2
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    .line 128
    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 2
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 157
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 160
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 162
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 4
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-eqz v0, :cond_17

    .line 381
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 382
    return-void

    .line 379
    :cond_17
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 11
    .param p0, "dataBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "bitIndex":I
    const/4 v1, -0x1

    .line 228
    .local v1, "direction":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 229
    .local v2, "x":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 230
    .local v3, "y":I
    :goto_e
    if-lez v2, :cond_55

    .line 232
    const/4 v4, 0x6

    if-ne v2, v4, :cond_15

    .line 233
    add-int/lit8 v2, v2, -0x1

    .line 235
    :cond_15
    :goto_15
    if-ltz v3, :cond_50

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 236
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4e

    .line 237
    sub-int v5, v2, v4

    .line 239
    .local v5, "xx":I
    invoke-virtual {p2, v5, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 240
    goto :goto_4b

    .line 243
    :cond_2e
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    if-ge v0, v6, :cond_3b

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    .line 245
    .local v6, "bit":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 249
    .end local v6    # "bit":Z
    :cond_3b
    const/4 v6, 0x0

    .line 253
    .restart local v6    # "bit":Z
    :goto_3c
    const/4 v7, -0x1

    if-eq p1, v7, :cond_48

    invoke-static {p1, v5, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 254
    xor-int/lit8 v7, v6, 0x1

    move v6, v7

    .line 256
    :cond_48
    invoke-virtual {p2, v5, v3, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 236
    .end local v5    # "xx":I
    .end local v6    # "bit":Z
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 258
    .end local v4    # "i":I
    :cond_4e
    add-int/2addr v3, v1

    goto :goto_15

    .line 260
    :cond_50
    neg-int v1, v1

    .line 261
    add-int/2addr v3, v1

    .line 262
    add-int/lit8 v2, v2, -0x2

    goto :goto_e

    .line 265
    :cond_55
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ne v0, v4, :cond_5c

    .line 268
    return-void

    .line 266
    :cond_5c
    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not all bits consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_84

    :goto_83
    throw v4

    :goto_84
    goto :goto_83
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_20

    .line 388
    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 391
    add-int v1, p0, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :cond_1a
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    .line 393
    .end local v0    # "x":I
    :cond_20
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 10
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 407
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1a

    .line 408
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v2, v2, v0

    .line 409
    .local v2, "patternY":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-ge v3, v1, :cond_17

    .line 410
    add-int v4, p0, v3

    add-int v5, p1, v0

    aget v6, v2, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 407
    .end local v2    # "patternY":[I
    .end local v3    # "x":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "y":I
    :cond_1a
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 10
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 416
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1a

    .line 417
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v2, v2, v0

    .line 418
    .local v2, "patternY":[I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-ge v3, v1, :cond_17

    .line 419
    add-int v4, p0, v3

    add-int v5, p1, v0

    aget v6, v2, v3

    invoke-virtual {p2, v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 416
    .end local v2    # "patternY":[I
    .end local v3    # "x":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "y":I
    :cond_1a
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 429
    .local v0, "pdpWidth":I
    invoke-static {v1, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 431
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 433
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 436
    const/16 v2, 0x8

    .line 438
    .local v2, "hspWidth":I
    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 440
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 443
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 446
    const/4 v3, 0x7

    .line 448
    .local v3, "vspSize":I
    invoke-static {v3, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 450
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 452
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v3, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 454
    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 363
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-ge v0, v1, :cond_2c

    .line 364
    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v1, v1, 0x2

    .line 366
    .local v1, "bit":I
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 367
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 370
    :cond_1c
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 371
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 363
    .end local v1    # "bit":I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 12
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 169
    .local v0, "typeInfoBits":Lcom/google/zxing/common/BitArray;
    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 174
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    .line 177
    .local v2, "bit":Z
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v4, v4, v1

    .line 178
    .local v4, "coordinates":[I
    const/4 v5, 0x0

    aget v5, v4, v5

    .line 179
    .local v5, "x1":I
    aget v6, v4, v3

    .line 180
    .local v6, "y1":I
    invoke-virtual {p2, v5, v6, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 184
    const/16 v7, 0x8

    if-ge v1, v7, :cond_33

    .line 186
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v3

    .line 187
    .local v7, "x2":I
    const/16 v3, 0x8

    .local v3, "y2":I
    goto :goto_3e

    .line 190
    .end local v3    # "y2":I
    .end local v7    # "x2":I
    :cond_33
    const/16 v7, 0x8

    .line 191
    .restart local v7    # "x2":I
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    add-int/lit8 v8, v1, -0x8

    add-int/2addr v3, v8

    .line 193
    .restart local v3    # "y2":I
    :goto_3e
    invoke-virtual {p2, v7, v3, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 171
    .end local v2    # "bit":Z
    .end local v3    # "y2":I
    .end local v4    # "coordinates":[I
    .end local v5    # "x1":I
    .end local v6    # "y1":I
    .end local v7    # "x2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 195
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1f

    .line 399
    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 402
    add-int v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    :cond_19
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    .line 404
    .end local v0    # "y":I
    :cond_1f
    return-void
.end method

.method static findMSBSet(I)I
    .registers 2
    .param p0, "value"    # I

    .line 276
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private static isEmpty(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 357
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .registers 9
    .param p0, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .param p1, "maskPattern"    # I
    .param p2, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 325
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 328
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p1

    .line 329
    .local v0, "typeInfo":I
    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 331
    const/16 v1, 0x537

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v1

    .line 332
    .local v1, "bchCode":I
    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 334
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 335
    .local v2, "maskBits":Lcom/google/zxing/common/BitArray;
    const/16 v3, 0x5412

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 336
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    .line 338
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ne v3, v4, :cond_32

    .line 341
    return-void

    .line 339
    :cond_32
    new-instance v3, Lcom/google/zxing/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "should not happen but we got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    .end local v0    # "typeInfo":I
    .end local v1    # "bchCode":I
    .end local v2    # "maskBits":Lcom/google/zxing/common/BitArray;
    :cond_4f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .registers 6
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "bits"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 347
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/16 v1, 0x1f25

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    .line 348
    .local v0, "bchCode":I
    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 350
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_20

    .line 353
    return-void

    .line 351
    :cond_20
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should not happen but we got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 13
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 458
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 459
    return-void

    .line 461
    :cond_8
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 462
    .local v0, "index":I
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v1, v1, v0

    .line 463
    .local v1, "coordinates":[I
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_3a

    aget v5, v1, v4

    .line 464
    .local v5, "y":I
    if-ltz v5, :cond_37

    .line 465
    array-length v6, v1

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v6, :cond_37

    aget v8, v1, v7

    .line 466
    .local v8, "x":I
    if-ltz v8, :cond_34

    invoke-virtual {p1, v8, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    invoke-static {v9}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 470
    add-int/lit8 v9, v8, -0x2

    add-int/lit8 v10, v5, -0x2

    invoke-static {v9, v10, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 465
    .end local v8    # "x":I
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 463
    .end local v5    # "y":I
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 475
    :cond_3a
    return-void
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 8
    .param p0, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p1, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_8

    .line 201
    return-void

    .line 203
    :cond_8
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 204
    .local v0, "versionInfoBits":Lcom/google/zxing/common/BitArray;
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    .line 206
    const/16 v1, 0x11

    .line 207
    .local v1, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    const/4 v3, 0x6

    if-ge v2, v3, :cond_3a

    .line 208
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_17
    const/4 v4, 0x3

    if-ge v3, v4, :cond_37

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    .line 211
    .local v4, "bit":Z
    add-int/lit8 v1, v1, -0x1

    .line 213
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 215
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 208
    .end local v4    # "bit":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 207
    .end local v3    # "j":I
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 218
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method
