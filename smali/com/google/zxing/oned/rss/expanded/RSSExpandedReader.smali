.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final DATA_CHARACTER_MODULES:F = 17.0f

.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_MODULES:F = 15.0f

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_FINDER_PATTERN_DISTANCE_VARIANCE:F = 0.1f

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 35

    .line 58
    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 59
    const/16 v5, 0x68

    const/16 v6, 0xcc

    const/16 v7, 0x14

    const/16 v8, 0x34

    filled-new-array {v2, v7, v8, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 60
    const/16 v5, 0xb84

    const/16 v6, 0xf94

    const/4 v8, 0x0

    const/16 v9, 0x15c

    const/16 v10, 0x56c

    filled-new-array {v8, v9, v10, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 63
    const/4 v5, 0x6

    new-array v6, v5, [[I

    const/16 v9, 0x8

    filled-new-array {v4, v9, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v8

    filled-new-array {v3, v5, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v4

    filled-new-array {v3, v2, v5, v4}, [I

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    filled-new-array {v3, v11, v9, v4}, [I

    move-result-object v10

    aput-object v10, v6, v3

    filled-new-array {v11, v5, v1, v4}, [I

    move-result-object v10

    aput-object v10, v6, v2

    const/16 v10, 0x9

    filled-new-array {v11, v11, v10, v4}, [I

    move-result-object v12

    aput-object v12, v6, v1

    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 73
    new-array v6, v9, [I

    fill-array-data v6, :array_198

    new-array v12, v9, [I

    fill-array-data v12, :array_1ac

    new-array v13, v9, [I

    fill-array-data v13, :array_1c0

    new-array v14, v9, [I

    fill-array-data v14, :array_1d4

    new-array v15, v9, [I

    fill-array-data v15, :array_1e8

    const/16 v16, 0x5

    new-array v1, v9, [I

    fill-array-data v1, :array_1fc

    const/16 v17, 0x14

    new-array v7, v9, [I

    fill-array-data v7, :array_210

    const/16 v18, 0x4

    new-array v2, v9, [I

    fill-array-data v2, :array_224

    const/16 v19, 0x3

    new-array v3, v9, [I

    fill-array-data v3, :array_238

    const/16 v20, 0x2

    new-array v11, v9, [I

    fill-array-data v11, :array_24c

    const/16 v21, 0x1

    new-array v4, v9, [I

    fill-array-data v4, :array_260

    const/16 v22, 0x0

    new-array v8, v9, [I

    fill-array-data v8, :array_274

    const/16 v23, 0x9

    new-array v10, v9, [I

    fill-array-data v10, :array_288

    const/16 v24, 0x7

    new-array v0, v9, [I

    fill-array-data v0, :array_29c

    const/16 v25, 0x6

    new-array v5, v9, [I

    fill-array-data v5, :array_2b0

    move-object/from16 v26, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_2c4

    move-object/from16 v27, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_2d8

    move-object/from16 v28, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_2ec

    move-object/from16 v29, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_300

    move-object/from16 v30, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_314

    move-object/from16 v31, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_328

    move-object/from16 v32, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_33c

    move-object/from16 v33, v0

    new-array v0, v9, [I

    fill-array-data v0, :array_350

    const/16 v34, 0x8

    const/16 v9, 0x17

    new-array v9, v9, [[I

    aput-object v6, v9, v22

    aput-object v12, v9, v21

    aput-object v13, v9, v20

    aput-object v14, v9, v19

    aput-object v15, v9, v18

    aput-object v1, v9, v16

    aput-object v7, v9, v25

    aput-object v2, v9, v24

    aput-object v3, v9, v34

    aput-object v11, v9, v23

    const/16 v1, 0xa

    aput-object v4, v9, v1

    const/16 v2, 0xb

    aput-object v8, v9, v2

    const/16 v2, 0xc

    aput-object v10, v9, v2

    const/16 v2, 0xd

    aput-object v26, v9, v2

    const/16 v2, 0xe

    aput-object v5, v9, v2

    const/16 v2, 0xf

    aput-object v27, v9, v2

    const/16 v2, 0x10

    aput-object v28, v9, v2

    const/16 v2, 0x11

    aput-object v29, v9, v2

    const/16 v2, 0x12

    aput-object v30, v9, v2

    const/16 v2, 0x13

    aput-object v31, v9, v2

    aput-object v32, v9, v17

    const/16 v2, 0x15

    aput-object v33, v9, v2

    const/16 v2, 0x16

    aput-object v0, v9, v2

    sput-object v9, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 108
    const/4 v0, 0x6

    new-array v2, v0, [I

    fill-array-data v2, :array_364

    const/4 v0, 0x7

    new-array v3, v0, [I

    fill-array-data v3, :array_374

    const/16 v0, 0x8

    new-array v4, v0, [I

    fill-array-data v4, :array_386

    const/16 v0, 0x9

    new-array v5, v0, [I

    fill-array-data v5, :array_39a

    new-array v0, v1, [I

    fill-array-data v0, :array_3b0

    const/16 v6, 0xb

    new-array v6, v6, [I

    fill-array-data v6, :array_3c8

    new-array v1, v1, [[I

    const/4 v7, 0x0

    filled-new-array {v7, v7}, [I

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v8, 0x1

    filled-new-array {v7, v8, v8}, [I

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    filled-new-array {v7, v10, v8, v9}, [I

    move-result-object v11

    aput-object v11, v1, v10

    const/4 v11, 0x4

    filled-new-array {v7, v11, v8, v9, v10}, [I

    move-result-object v7

    aput-object v7, v1, v9

    aput-object v2, v1, v11

    aput-object v3, v1, v16

    const/16 v25, 0x6

    aput-object v4, v1, v25

    const/16 v24, 0x7

    aput-object v5, v1, v24

    const/16 v34, 0x8

    aput-object v0, v1, v34

    const/16 v23, 0x9

    aput-object v6, v1, v23

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    nop

    :array_198
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1ac
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_1c0
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_1d4
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_1e8
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_1fc
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_210
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_224
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_238
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_24c
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_260
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_274
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_288
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_29c
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_2b0
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_2c4
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_2d8
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_2ec
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_300
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_314
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_328
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_33c
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_350
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_364
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_374
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_386
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_39a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_3b0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_3c8
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .registers 13
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 744
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 745
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    .line 747
    .local v1, "evenSum":I
    const/4 v2, 0x0

    .line 748
    .local v2, "incrementOdd":Z
    const/4 v3, 0x0

    .line 750
    .local v3, "decrementOdd":Z
    const/4 v4, 0x4

    const/16 v5, 0xd

    if-le v0, v5, :cond_19

    .line 751
    const/4 v3, 0x1

    goto :goto_1c

    .line 752
    :cond_19
    if-ge v0, v4, :cond_1c

    .line 753
    const/4 v2, 0x1

    .line 755
    :cond_1c
    :goto_1c
    const/4 v6, 0x0

    .line 756
    .local v6, "incrementEven":Z
    const/4 v7, 0x0

    .line 757
    .local v7, "decrementEven":Z
    if-le v1, v5, :cond_22

    .line 758
    const/4 v7, 0x1

    goto :goto_25

    .line 759
    :cond_22
    if-ge v1, v4, :cond_25

    .line 760
    const/4 v6, 0x1

    .line 763
    :cond_25
    :goto_25
    add-int v4, v0, v1

    sub-int/2addr v4, p1

    .line 764
    .local v4, "mismatch":I
    and-int/lit8 v5, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    .line 765
    .local v5, "oddParityBad":Z
    :goto_31
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_36

    const/4 v8, 0x1

    .line 766
    .local v8, "evenParityBad":Z
    :cond_36
    packed-switch v4, :pswitch_data_c4

    .line 814
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 768
    :pswitch_3e
    if-eqz v5, :cond_49

    .line 769
    if-nez v8, :cond_44

    .line 772
    const/4 v3, 0x1

    goto :goto_7a

    .line 770
    :cond_44
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 774
    :cond_49
    if-eqz v8, :cond_4d

    .line 777
    const/4 v7, 0x1

    .line 779
    goto :goto_7a

    .line 775
    :cond_4d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 794
    :pswitch_52
    if-eqz v5, :cond_63

    .line 795
    if-eqz v8, :cond_5e

    .line 799
    if-ge v0, v1, :cond_5b

    .line 800
    const/4 v2, 0x1

    .line 801
    const/4 v7, 0x1

    goto :goto_7a

    .line 803
    :cond_5b
    const/4 v3, 0x1

    .line 804
    const/4 v6, 0x1

    goto :goto_7a

    .line 796
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 807
    :cond_63
    if-nez v8, :cond_66

    goto :goto_7a

    .line 808
    :cond_66
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 781
    :pswitch_6b
    if-eqz v5, :cond_76

    .line 782
    if-nez v8, :cond_71

    .line 785
    const/4 v2, 0x1

    goto :goto_7a

    .line 783
    :cond_71
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 787
    :cond_76
    if-eqz v8, :cond_bf

    .line 790
    const/4 v6, 0x1

    .line 792
    nop

    .line 817
    :goto_7a
    if-eqz v2, :cond_8f

    .line 818
    if-nez v3, :cond_8a

    .line 821
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_8f

    .line 819
    :cond_8a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 823
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_9c

    .line 824
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 826
    :cond_9c
    if-eqz v6, :cond_b1

    .line 827
    if-nez v7, :cond_ac

    .line 830
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_b1

    .line 828
    :cond_ac
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 832
    :cond_b1
    :goto_b1
    if-eqz v7, :cond_be

    .line 833
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 835
    :cond_be
    return-void

    .line 788
    :cond_bf
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :pswitch_data_c4
    .packed-switch -0x1
        :pswitch_6b
        :pswitch_52
        :pswitch_3e
    .end packed-switch
.end method

.method private checkChecksum()Z
    .registers 11

    .line 411
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 412
    .local v0, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 413
    .local v2, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v3

    .line 415
    .local v3, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    if-nez v3, :cond_14

    .line 416
    return v1

    .line 419
    :cond_14
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v4

    .line 420
    .local v4, "checksum":I
    const/4 v5, 0x2

    .line 422
    .local v5, "s":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1a
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_45

    .line 423
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 424
    .local v7, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    add-int/2addr v4, v8

    .line 425
    add-int/lit8 v5, v5, 0x1

    .line 426
    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    .line 427
    .local v8, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    if-eqz v8, :cond_42

    .line 428
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    add-int/2addr v4, v9

    .line 429
    add-int/lit8 v5, v5, 0x1

    .line 422
    .end local v7    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v8    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 433
    .end local v6    # "i":I
    :cond_45
    rem-int/lit16 v4, v4, 0xd3

    .line 435
    add-int/lit8 v6, v5, -0x4

    mul-int/lit16 v6, v6, 0xd3

    add-int/2addr v6, v4

    .line 437
    .local v6, "checkCharacterValue":I
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_53

    const/4 v1, 0x1

    :cond_53
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .registers 9
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 223
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 224
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 225
    .local v1, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 227
    .local v3, "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    .end local v3    # "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    goto :goto_1a

    .line 229
    :cond_30
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 232
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 233
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v2

    .line 236
    :cond_4b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v2, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v3, v0, 0x1

    :try_start_55
    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3
    :try_end_59
    .catch Lcom/google/zxing/NotFoundException; {:try_start_55 .. :try_end_59} :catch_5a

    return-object v3

    .line 241
    :catch_5a
    move-exception v3

    .line 223
    .end local v1    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "i":I
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method private checkRows(Z)Ljava/util/List;
    .registers 5
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_11

    .line 197
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_11
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    if-eqz p1, :cond_1d

    .line 203
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 206
    :cond_1d
    const/4 v0, 0x0

    .line 208
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1
    :try_end_28
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1e .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 211
    goto :goto_2b

    .line 209
    :catch_2a
    move-exception v1

    .line 213
    :goto_2b
    if-eqz p1, :cond_32

    .line 214
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 217
    :cond_32
    return-object v0
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 392
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 394
    .local v0, "binary":Lcom/google/zxing/common/BitArray;
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v1

    .line 395
    .local v1, "decoder":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "resultingString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 398
    .local v4, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 400
    .local v5, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/Result;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    aget-object v9, v4, v3

    aput-object v9, v8, v3

    aget-object v9, v4, v6

    aput-object v9, v8, v6

    const/4 v9, 0x2

    aget-object v3, v5, v3

    aput-object v3, v8, v9

    const/4 v3, 0x3

    aget-object v6, v5, v6

    aput-object v6, v8, v3

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v6, 0x0

    invoke-direct {v7, v2, v6, v8, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 406
    .local v7, "result":Lcom/google/zxing/Result;
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v6, "]e0"

    invoke-virtual {v7, v3, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 407
    return-object v7
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .registers 21
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 498
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v2

    .line 499
    .local v2, "counters":[I
    const/4 v3, 0x0

    aput v3, v2, v3

    .line 500
    const/4 v4, 0x1

    aput v3, v2, v4

    .line 501
    const/4 v5, 0x2

    aput v3, v2, v5

    .line 502
    const/4 v6, 0x3

    aput v3, v2, v6

    .line 504
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 507
    .local v7, "width":I
    if-ltz p3, :cond_1f

    .line 508
    move/from16 v8, p3

    move-object/from16 v9, p2

    .local v8, "rowOffset":I
    goto :goto_41

    .line 509
    .end local v8    # "rowOffset":I
    :cond_1f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 510
    const/4 v8, 0x0

    move-object/from16 v9, p2

    .restart local v8    # "rowOffset":I
    goto :goto_41

    .line 512
    .end local v8    # "rowOffset":I
    :cond_29
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 513
    .local v8, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v10

    aget v10, v10, v4

    move v8, v10

    .line 515
    .local v8, "rowOffset":I
    :goto_41
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    rem-int/2addr v10, v5

    if-eqz v10, :cond_4a

    const/4 v10, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v10, 0x0

    .line 516
    .local v10, "searchingEvenPair":Z
    :goto_4b
    iget-boolean v11, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v11, :cond_55

    .line 517
    if-nez v10, :cond_53

    const/4 v11, 0x1

    goto :goto_54

    :cond_53
    const/4 v11, 0x0

    :goto_54
    move v10, v11

    .line 520
    :cond_55
    const/4 v11, 0x0

    .line 521
    .local v11, "isWhite":Z
    :goto_56
    if-ge v8, v7, :cond_64

    .line 522
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    xor-int/2addr v12, v4

    move v11, v12

    .line 523
    if-nez v11, :cond_61

    .line 524
    goto :goto_64

    .line 526
    :cond_61
    add-int/lit8 v8, v8, 0x1

    goto :goto_56

    .line 529
    :cond_64
    :goto_64
    const/4 v12, 0x0

    .line 530
    .local v12, "counterPosition":I
    move v13, v8

    .line 531
    .local v13, "patternStart":I
    move v14, v8

    .local v14, "x":I
    :goto_67
    if-ge v14, v7, :cond_b3

    .line 532
    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    if-eq v15, v11, :cond_75

    .line 533
    aget v15, v2, v12

    add-int/2addr v15, v4

    aput v15, v2, v12

    goto :goto_b0

    .line 535
    :cond_75
    if-ne v12, v6, :cond_a6

    .line 536
    if-eqz v10, :cond_7c

    .line 537
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 540
    :cond_7c
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v15

    if-eqz v15, :cond_8b

    .line 541
    iget-object v5, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v13, v5, v3

    .line 542
    iget-object v3, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v14, v3, v4

    .line 543
    return-void

    .line 546
    :cond_8b
    if-eqz v10, :cond_90

    .line 547
    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 550
    :cond_90
    aget v15, v2, v3

    aget v16, v2, v4

    add-int v15, v15, v16

    add-int/2addr v13, v15

    .line 551
    aget v15, v2, v5

    aput v15, v2, v3

    .line 552
    aget v15, v2, v6

    aput v15, v2, v4

    .line 553
    aput v3, v2, v5

    .line 554
    aput v3, v2, v6

    .line 555
    add-int/lit8 v12, v12, -0x1

    goto :goto_a8

    .line 557
    :cond_a6
    add-int/lit8 v12, v12, 0x1

    .line 559
    :goto_a8
    aput v4, v2, v12

    .line 560
    if-nez v11, :cond_ae

    const/4 v15, 0x1

    goto :goto_af

    :cond_ae
    const/4 v15, 0x0

    :goto_af
    move v11, v15

    .line 531
    :goto_b0
    add-int/lit8 v14, v14, 0x1

    goto :goto_67

    .line 563
    .end local v14    # "x":I
    :cond_b3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    goto :goto_b9

    :goto_b8
    throw v3

    :goto_b9
    goto :goto_b8
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .registers 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .line 442
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 443
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 444
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    goto :goto_17

    .line 446
    .end local v0    # "currentPos":I
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 447
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 449
    :goto_17
    return v0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .registers 4
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .line 739
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    if-nez p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 362
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 363
    .local v1, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v2, 0x1

    .line 364
    .local v2, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 365
    .local v4, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v5, 0x0

    .line 366
    .local v5, "found":Z
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 367
    .local v7, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v4, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 368
    const/4 v5, 0x1

    .line 369
    goto :goto_3f

    .line 371
    .end local v7    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3e
    goto :goto_2a

    .line 372
    :cond_3f
    :goto_3f
    if-nez v5, :cond_43

    .line 373
    const/4 v2, 0x0

    .line 374
    goto :goto_44

    .line 376
    .end local v4    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v5    # "found":Z
    :cond_43
    goto :goto_15

    .line 377
    :cond_44
    :goto_44
    if-eqz v2, :cond_48

    .line 379
    const/4 v0, 0x1

    return v0

    .line 381
    .end local v1    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "allFound":Z
    :cond_48
    goto :goto_4

    .line 382
    :cond_49
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidSequence(Ljava/util/List;Z)Z
    .registers 13
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;Z)Z"
        }
    .end annotation

    .line 253
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_40

    aget-object v4, v0, v3

    .line 254
    .local v4, "sequence":[I
    const/4 v5, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v4

    if-eqz p1, :cond_14

    if-ne v6, v7, :cond_18

    goto :goto_16

    :cond_14
    if-gt v6, v7, :cond_18

    :goto_16
    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    .line 255
    .local v6, "sizeOk":Z
    :goto_19
    if-eqz v6, :cond_3d

    .line 256
    const/4 v7, 0x1

    .line 257
    .local v7, "stop":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3a

    .line 258
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v9

    aget v10, v4, v8

    if-eq v9, v10, :cond_37

    .line 259
    const/4 v7, 0x0

    .line 260
    goto :goto_3a

    .line 257
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 263
    .end local v8    # "j":I
    :cond_3a
    :goto_3a
    if-eqz v7, :cond_3d

    .line 264
    return v5

    .line 253
    .end local v4    # "sequence":[I
    .end local v6    # "sizeOk":Z
    .end local v7    # "stop":Z
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 269
    :cond_40
    return v2
.end method

.method private static mayFollow(Ljava/util/List;I)Z
    .registers 13
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)Z"
        }
    .end annotation

    .line 276
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 277
    return v1

    .line 280
    :cond_8
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    .line 281
    .local v5, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v1

    array-length v7, v5

    if-gt v6, v7, :cond_52

    .line 283
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "i":I
    :goto_1d
    array-length v7, v5

    if-ge v6, v7, :cond_52

    .line 284
    aget v7, v5, v6

    if-ne v7, p1, :cond_4f

    .line 287
    const/4 v7, 0x1

    .line 288
    .local v7, "matched":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4c

    .line 289
    sub-int v9, v6, v8

    sub-int/2addr v9, v1

    aget v9, v5, v9

    .line 290
    .local v9, "allowed":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v8

    sub-int/2addr v10, v1

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v10

    .line 291
    .local v10, "actual":I
    if-eq v9, v10, :cond_49

    .line 292
    const/4 v7, 0x0

    .line 293
    goto :goto_4c

    .line 288
    .end local v9    # "allowed":I
    .end local v10    # "actual":I
    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 296
    .end local v8    # "j":I
    :cond_4c
    :goto_4c
    if-eqz v7, :cond_4f

    .line 297
    return v1

    .line 283
    .end local v7    # "matched":Z
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 280
    .end local v5    # "sequence":[I
    .end local v6    # "i":I
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 305
    :cond_55
    return v3
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZLjava/util/List;)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 23
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "oddPattern"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/oned/rss/FinderPattern;"
        }
    .end annotation

    .line 584
    .local p4, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_28

    .line 587
    iget-object v5, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v5, v5, v0

    sub-int/2addr v5, v4

    .line 589
    .local v5, "firstElementStart":I
    :goto_f
    if-ltz v5, :cond_1a

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 590
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 593
    :cond_1a
    add-int/2addr v5, v4

    .line 594
    iget-object v6, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v6, v6, v0

    sub-int/2addr v6, v5

    .line 595
    .local v6, "firstCounter":I
    move v7, v5

    .line 596
    .local v7, "start":I
    iget-object v8, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v5, v8, v4

    .line 598
    .local v5, "end":I
    move v12, v5

    move v11, v7

    goto :goto_3d

    .line 601
    .end local v5    # "end":I
    .end local v6    # "firstCounter":I
    .end local v7    # "start":I
    :cond_28
    iget-object v5, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v5, v0

    .line 603
    .restart local v7    # "start":I
    iget-object v5, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v5, v5, v4

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v5

    .line 604
    .restart local v5    # "end":I
    iget-object v6, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v6, v6, v4

    sub-int v6, v5, v6

    move v12, v5

    move v11, v7

    .line 608
    .end local v5    # "end":I
    .end local v7    # "start":I
    .restart local v6    # "firstCounter":I
    .local v11, "start":I
    .local v12, "end":I
    :goto_3d
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v5

    .line 609
    .local v5, "counters":[I
    array-length v7, v5

    sub-int/2addr v7, v4

    invoke-static {v5, v0, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    aput v6, v5, v0

    .line 614
    const/4 v7, 0x0

    :try_start_49
    sget-object v8, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v5, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I

    move-result v9
    :try_end_4f
    .catch Lcom/google/zxing/NotFoundException; {:try_start_49 .. :try_end_4f} :catch_b4

    .line 617
    .local v9, "value":I
    nop

    .line 620
    invoke-static {v3, v9}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->mayFollow(Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_57

    .line 621
    return-object v7

    .line 626
    :cond_57
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a8

    .line 627
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 628
    .local v8, "prev":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v10

    aget v0, v10, v0

    .line 629
    .local v0, "prevStart":I
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v10

    aget v4, v10, v4

    .line 630
    .local v4, "prevEnd":I
    sub-int v10, v4, v0

    .line 631
    .local v10, "prevWidth":I
    int-to-float v13, v10

    const/high16 v14, 0x41700000    # 15.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x41880000    # 17.0f

    mul-float v13, v13, v14

    .line 632
    .local v13, "charWidth":F
    int-to-float v14, v4

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v16, v13, v15

    const v17, 0x3f666666    # 0.9f

    mul-float v16, v16, v17

    add-float v14, v14, v16

    .line 633
    .local v14, "minX":F
    move-object/from16 v16, v7

    int-to-float v7, v4

    mul-float v15, v15, v13

    const v17, 0x3f8ccccd    # 1.1f

    mul-float v15, v15, v17

    add-float/2addr v7, v15

    .line 634
    .local v7, "maxX":F
    int-to-float v15, v11

    cmpg-float v15, v15, v14

    if-ltz v15, :cond_a7

    int-to-float v15, v11

    cmpl-float v15, v15, v7

    if-lez v15, :cond_a8

    .line 635
    :cond_a7
    return-object v16

    .line 639
    .end local v0    # "prevStart":I
    .end local v4    # "prevEnd":I
    .end local v7    # "maxX":F
    .end local v8    # "prev":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v10    # "prevWidth":I
    .end local v13    # "charWidth":F
    .end local v14    # "minX":F
    :cond_a8
    new-instance v8, Lcom/google/zxing/oned/rss/FinderPattern;

    filled-new-array {v11, v12}, [I

    move-result-object v10

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v8

    .line 615
    .end local v9    # "value":I
    :catch_b4
    move-exception v0

    move-object/from16 v16, v7

    .line 616
    .local v0, "ignored":Lcom/google/zxing/NotFoundException;
    return-object v16
.end method

.method private static removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 342
    .local p0, "pairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 344
    .local v1, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_41

    .line 345
    const/4 v2, 0x1

    .line 346
    .local v2, "allFound":Z
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 347
    .local v4, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-interface {p0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 348
    const/4 v2, 0x0

    .line 349
    goto :goto_3c

    .line 351
    .end local v4    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3b
    goto :goto_27

    .line 352
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 357
    .end local v1    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "allFound":Z
    :cond_41
    goto :goto_4

    .line 358
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_42
    return-void
.end method

.method private static reverseCounters([I)V
    .registers 5
    .param p0, "counters"    # [I

    .line 567
    array-length v0, p0

    .line 568
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_19

    .line 569
    aget v2, p0, v1

    .line 570
    .local v2, "tmp":I
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v1

    .line 571
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 568
    .end local v2    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 573
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method private storeRow(I)V
    .registers 8
    .param p1, "rowNumber"    # I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "insertPos":I
    const/4 v1, 0x0

    .line 312
    .local v1, "prevIsSame":Z
    const/4 v2, 0x0

    .line 313
    .local v2, "nextIsSame":Z
    :goto_3
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 314
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 315
    .local v3, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_20

    .line 316
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    .line 317
    goto :goto_2a

    .line 319
    :cond_20
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v1

    .line 320
    nop

    .end local v3    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    add-int/lit8 v0, v0, 0x1

    .line 321
    goto :goto_3

    .line 322
    :cond_2a
    :goto_2a
    if-nez v2, :cond_4e

    if-eqz v1, :cond_2f

    goto :goto_4e

    .line 331
    :cond_2f
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 332
    return-void

    .line 335
    :cond_3a
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v4, v5, p1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;I)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 337
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 338
    return-void

    .line 323
    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 28
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "isOddPattern"    # Z
    .param p4, "leftChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 646
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v1

    .line 647
    .local v1, "counters":[I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 649
    const/4 v3, 0x1

    if-eqz p4, :cond_17

    .line 650
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-static {v0, v4, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_32

    .line 652
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {v0, v4, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 654
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v1

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_23
    if-ge v4, v5, :cond_32

    .line 655
    aget v6, v1, v4

    .line 656
    .local v6, "temp":I
    aget v7, v1, v5

    aput v7, v1, v4

    .line 657
    aput v6, v1, v5

    .line 654
    .end local v6    # "temp":I
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    .line 661
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_32
    :goto_32
    const/16 v4, 0x11

    .line 662
    .local v4, "numModules":I
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 665
    .local v5, "elementWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    .line 666
    .local v6, "expectedElementWidth":F
    sub-float v7, v5, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v7, v6

    const v8, 0x3e99999a    # 0.3f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_150

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v7

    .line 671
    .local v7, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    .line 672
    .local v9, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    .line 673
    .local v10, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v11

    .line 675
    .local v11, "evenRoundingErrors":[F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6b
    array-length v13, v1

    if-ge v12, v13, :cond_b5

    .line 676
    aget v13, v1, v12

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v13, v13, v14

    div-float/2addr v13, v5

    .line 677
    .local v13, "value":F
    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v13

    float-to-int v14, v14

    .line 678
    .local v14, "count":I
    if-ge v14, v3, :cond_87

    .line 679
    cmpg-float v15, v13, v8

    if-ltz v15, :cond_82

    .line 682
    const/4 v14, 0x1

    goto :goto_9a

    .line 680
    :cond_82
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 683
    :cond_87
    const/16 v15, 0x8

    if-le v14, v15, :cond_9a

    .line 684
    const v15, 0x410b3333    # 8.7f

    cmpl-float v15, v13, v15

    if-gtz v15, :cond_95

    .line 687
    const/16 v14, 0x8

    goto :goto_9a

    .line 685
    :cond_95
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 689
    :cond_9a
    :goto_9a
    div-int/lit8 v15, v12, 0x2

    .line 690
    .local v15, "offset":I
    and-int/lit8 v16, v12, 0x1

    if-nez v16, :cond_a8

    .line 691
    aput v14, v7, v15

    .line 692
    int-to-float v8, v14

    sub-float v8, v13, v8

    aput v8, v10, v15

    goto :goto_af

    .line 694
    :cond_a8
    aput v14, v9, v15

    .line 695
    int-to-float v8, v14

    sub-float v8, v13, v8

    aput v8, v11, v15

    .line 675
    .end local v13    # "value":F
    .end local v14    # "count":I
    .end local v15    # "offset":I
    :goto_af
    add-int/lit8 v12, v12, 0x1

    const v8, 0x3e99999a    # 0.3f

    goto :goto_6b

    .line 699
    .end local v12    # "i":I
    :cond_b5
    move-object/from16 v8, p0

    invoke-direct {v8, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v12

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    if-eqz p3, :cond_c5

    const/4 v15, 0x0

    goto :goto_c6

    :cond_c5
    const/4 v15, 0x2

    :goto_c6
    add-int/2addr v12, v15

    xor-int/lit8 v15, p4, 0x1

    add-int/2addr v12, v15

    sub-int/2addr v12, v3

    .line 703
    .local v12, "weightRowNumber":I
    const/4 v15, 0x0

    .line 704
    .local v15, "oddSum":I
    const/16 v16, 0x0

    .line 705
    .local v16, "oddChecksumPortion":I
    const/16 v17, 0x2

    array-length v14, v7

    sub-int/2addr v14, v3

    .local v14, "i":I
    :goto_d2
    if-ltz v14, :cond_ef

    .line 706
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v18

    if-eqz v18, :cond_e8

    .line 707
    sget-object v18, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v18, v18, v12

    mul-int/lit8 v19, v14, 0x2

    aget v18, v18, v19

    .line 708
    .local v18, "weight":I
    aget v19, v7, v14

    mul-int v19, v19, v18

    add-int v16, v16, v19

    .line 710
    .end local v18    # "weight":I
    :cond_e8
    aget v18, v7, v14

    add-int v15, v15, v18

    .line 705
    add-int/lit8 v14, v14, -0x1

    goto :goto_d2

    .line 712
    .end local v14    # "i":I
    :cond_ef
    const/4 v14, 0x0

    .line 713
    .local v14, "evenChecksumPortion":I
    array-length v2, v9

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f2
    if-ltz v2, :cond_10d

    .line 714
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v19

    if-eqz v19, :cond_10a

    .line 715
    sget-object v19, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v19, v19, v12

    mul-int/lit8 v20, v2, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v19, v19, v20

    .line 716
    .local v19, "weight":I
    aget v20, v9, v2

    mul-int v20, v20, v19

    add-int v14, v14, v20

    .line 713
    .end local v19    # "weight":I
    :cond_10a
    add-int/lit8 v2, v2, -0x1

    goto :goto_f2

    .line 719
    .end local v2    # "i":I
    :cond_10d
    add-int v2, v16, v14

    .line 721
    .local v2, "checksumPortion":I
    and-int/lit8 v19, v15, 0x1

    if-nez v19, :cond_149

    const/16 v3, 0xd

    if-gt v15, v3, :cond_149

    if-lt v15, v13, :cond_149

    .line 725
    rsub-int/lit8 v3, v15, 0xd

    div-int/lit8 v3, v3, 0x2

    .line 726
    .local v3, "group":I
    sget-object v13, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v13, v13, v3

    .line 727
    .local v13, "oddWidest":I
    rsub-int/lit8 v0, v13, 0x9

    .line 728
    .local v0, "evenWidest":I
    move-object/from16 v17, v1

    const/4 v1, 0x1

    .end local v1    # "counters":[I
    .local v17, "counters":[I
    invoke-static {v7, v13, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 729
    .local v1, "vOdd":I
    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "vOdd":I
    .local v19, "vOdd":I
    invoke-static {v9, v0, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 730
    .local v1, "vEven":I
    sget-object v18, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v18, v18, v3

    .line 731
    .local v18, "tEven":I
    sget-object v20, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v20, v20, v3

    .line 732
    .local v20, "gSum":I
    mul-int v21, v19, v18

    add-int v21, v21, v1

    move/from16 v22, v0

    .end local v0    # "evenWidest":I
    .local v22, "evenWidest":I
    add-int v0, v21, v20

    .line 734
    .local v0, "value":I
    move/from16 v21, v1

    .end local v1    # "vEven":I
    .local v21, "vEven":I
    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    .line 721
    .end local v0    # "value":I
    .end local v3    # "group":I
    .end local v13    # "oddWidest":I
    .end local v17    # "counters":[I
    .end local v18    # "tEven":I
    .end local v19    # "vOdd":I
    .end local v20    # "gSum":I
    .end local v21    # "vEven":I
    .end local v22    # "evenWidest":I
    .local v1, "counters":[I
    :cond_149
    move-object/from16 v17, v1

    .line 722
    .end local v1    # "counters":[I
    .restart local v17    # "counters":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 667
    .end local v2    # "checksumPortion":I
    .end local v7    # "oddCounts":[I
    .end local v9    # "evenCounts":[I
    .end local v10    # "oddRoundingErrors":[F
    .end local v11    # "evenRoundingErrors":[F
    .end local v12    # "weightRowNumber":I
    .end local v14    # "evenChecksumPortion":I
    .end local v15    # "oddSum":I
    .end local v16    # "oddChecksumPortion":I
    .end local v17    # "counters":[I
    .restart local v1    # "counters":[I
    :cond_150
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    goto :goto_156

    :goto_155
    throw v0

    :goto_156
    goto :goto_155
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 5
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 137
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 139
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_b
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    return-object v0

    .line 140
    :catch_c
    move-exception v0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .registers 7
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "done":Z
    :goto_6
    if-nez v0, :cond_20

    .line 160
    :try_start_8
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v2, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Lcom/google/zxing/NotFoundException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_1e

    .line 161
    :catch_14
    move-exception v1

    .line 162
    .local v1, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 166
    const/4 v0, 0x1

    .line 167
    .end local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :goto_1e
    goto :goto_6

    .line 163
    .restart local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :cond_1f
    throw v1

    .line 170
    .end local v1    # "nfe":Lcom/google/zxing/NotFoundException;
    :cond_20
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 171
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v1

    .line 174
    :cond_32
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 175
    .local v1, "tryStackedDecode":Z
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(I)V

    .line 176
    if-eqz v1, :cond_4d

    .line 179
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v3

    .line 180
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-eqz v3, :cond_46

    .line 181
    return-object v3

    .line 183
    :cond_46
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    .line 184
    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local v2, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-eqz v2, :cond_4d

    .line 185
    return-object v2

    .line 189
    .end local v2    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :cond_4d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    goto :goto_53

    :goto_52
    throw v2

    :goto_53
    goto :goto_52
.end method

.method getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .registers 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 455
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 456
    .local v0, "isOddPattern":Z
    :goto_d
    iget-boolean v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v3, :cond_17

    .line 457
    if-nez v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move v0, v3

    .line 461
    :cond_17
    const/4 v3, 0x0

    .line 463
    .local v3, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v4, 0x1

    .line 464
    .local v4, "keepFinding":Z
    const/4 v5, -0x1

    .line 466
    .local v5, "forcedOffset":I
    :cond_1a
    invoke-direct {p0, p1, p2, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 467
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZLjava/util/List;)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    .line 468
    .local v6, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez v6, :cond_2c

    .line 469
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v7, v2

    invoke-static {p1, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v5

    goto :goto_3d

    .line 472
    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1, v6, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7
    :try_end_30
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2c .. :try_end_30} :catch_34

    .line 473
    .end local v3    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .local v7, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    const/4 v3, 0x0

    .line 476
    .end local v4    # "keepFinding":Z
    .local v3, "keepFinding":Z
    move v4, v3

    move-object v3, v7

    goto :goto_3d

    .line 474
    .end local v7    # "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .local v3, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .restart local v4    # "keepFinding":Z
    :catch_34
    move-exception v7

    .line 475
    .local v7, "ignored":Lcom/google/zxing/NotFoundException;
    iget-object v8, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v8, v8, v2

    invoke-static {p1, v8}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v5

    .line 478
    .end local v7    # "ignored":Lcom/google/zxing/NotFoundException;
    :goto_3d
    if-nez v4, :cond_1a

    .line 483
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_5c

    .line 484
    :cond_57
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 489
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {p0, p1, v6, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1
    :try_end_60
    .catch Lcom/google/zxing/NotFoundException; {:try_start_5c .. :try_end_60} :catch_61

    .line 492
    .local v1, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_64

    .line 490
    .end local v1    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_61
    move-exception v1

    .line 491
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 493
    .local v1, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_64
    new-instance v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v2, v3, v1, v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;)V

    return-object v2
.end method
