.class final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Edge"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final allCodewordCapacities:[I

.field private static final rectangularCodewordCapacities:[I

.field private static final squareCodewordCapacities:[I


# instance fields
.field private final cachedTotalSize:I

.field private final characterLength:I

.field private final fromPosition:I

.field private final input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

.field private final mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field private final previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 480
    const-class v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;

    .line 481
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    .line 483
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->squareCodewordCapacities:[I

    .line 485
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_8e

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->rectangularCodewordCapacities:[I

    return-void

    nop

    :array_1e
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0xc
        0x10
        0x12
        0x16
        0x1e
        0x20
        0x24
        0x2c
        0x31
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    :array_5a
    .array-data 4
        0x3
        0x5
        0x8
        0xc
        0x12
        0x16
        0x1e
        0x24
        0x2c
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    :array_8e
    .array-data 4
        0x5
        0xa
        0x10
        0x21
        0x20
        0x31
    .end array-data
.end method

.method private constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .registers 12
    .param p1, "input"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p2, "mode"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .param p3, "fromPosition"    # I
    .param p4, "characterLength"    # I
    .param p5, "previous"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 495
    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 496
    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    .line 497
    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    .line 498
    iput-object p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 499
    nop

    .line 501
    const/4 v0, 0x0

    if-eqz p5, :cond_14

    iget v1, p5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 503
    .local v1, "size":I
    :goto_15
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    .line 519
    .local v2, "previousMode":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ca

    goto/16 :goto_c7

    .line 565
    :pswitch_26
    add-int/lit8 v1, v1, 0x3

    .line 566
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_41

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_31

    goto :goto_41

    .line 568
    :cond_31
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_3d

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_3d

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_c7

    .line 571
    :cond_3d
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_c7

    .line 567
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c7

    .line 549
    :pswitch_45
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne p2, v3, :cond_4c

    .line 550
    add-int/lit8 v1, v1, 0x2

    goto :goto_5b

    .line 552
    :cond_4c
    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 553
    .local v4, "charLen":[I
    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne p2, v5, :cond_54

    const/4 v0, 0x1

    :cond_54
    invoke-static {p1, p3, v0, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 556
    .end local v4    # "charLen":[I
    :goto_5b
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_75

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_64

    goto :goto_75

    .line 558
    :cond_64
    if-eq v2, p2, :cond_c7

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_72

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_72

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_c7

    .line 561
    :cond_72
    add-int/lit8 v1, v1, 0x2

    goto :goto_c7

    .line 557
    :cond_75
    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 532
    :pswitch_78
    add-int/lit8 v1, v1, 0x1

    .line 533
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_81

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 535
    :cond_81
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getB256Size()I

    move-result v0

    const/16 v3, 0xfa

    if-ne v0, v3, :cond_8b

    .line 536
    add-int/lit8 v1, v1, 0x1

    .line 538
    :cond_8b
    :goto_8b
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_92

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 540
    :cond_92
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_9e

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_9e

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_c7

    .line 543
    :cond_9e
    add-int/lit8 v1, v1, 0x2

    goto :goto_c7

    .line 521
    :pswitch_a1
    add-int/lit8 v1, v1, 0x1

    .line 522
    invoke-virtual {p1, p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual {p1, p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 523
    :cond_b7
    add-int/lit8 v1, v1, 0x1

    .line 525
    :cond_b9
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_c5

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v0, :cond_c5

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v0, :cond_c7

    .line 528
    :cond_c5
    add-int/lit8 v1, v1, 0x1

    .line 575
    :cond_c7
    :goto_c7
    iput v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    .line 576
    return-void

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_78
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_26
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .param p2, "x1"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .param p6, "x5"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;

    .line 480
    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 480
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 480
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 480
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 480
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 480
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    .line 480
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return v0
.end method

.method static getBytes(I)[B
    .registers 4
    .param p0, "c"    # I

    .line 713
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 714
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 715
    return-object v0
.end method

.method static getBytes(II)[B
    .registers 5
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .line 719
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 720
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 721
    const/4 v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 722
    return-object v0
.end method

.method private static getC40Value(ZICI)I
    .registers 15
    .param p0, "c40"    # Z
    .param p1, "setIndex"    # I
    .param p2, "c"    # C
    .param p3, "fnc1"    # I

    .line 759
    if-ne p2, p3, :cond_6

    .line 760
    nop

    .line 761
    const/16 v0, 0x1b

    return v0

    .line 763
    :cond_6
    const/16 v0, 0x7f

    const/16 v1, 0x5f

    const/16 v2, 0x5a

    const/16 v3, 0x39

    const/16 v4, 0x2f

    const/16 v5, 0x20

    const/16 v6, 0x1f

    const/16 v7, 0x40

    const/4 v8, 0x3

    if-eqz p0, :cond_3f

    .line 764
    if-gt p2, v6, :cond_1c

    :cond_1b
    goto :goto_3d

    :cond_1c
    if-ne p2, v5, :cond_1f

    goto :goto_3e

    :cond_1f
    if-gt p2, v4, :cond_24

    add-int/lit8 v8, p2, -0x21

    goto :goto_3e

    :cond_24
    if-gt p2, v3, :cond_29

    add-int/lit8 v8, p2, -0x2c

    goto :goto_3e

    :cond_29
    if-gt p2, v7, :cond_2e

    add-int/lit8 v8, p2, -0x2b

    goto :goto_3e

    :cond_2e
    if-gt p2, v2, :cond_33

    add-int/lit8 v8, p2, -0x33

    goto :goto_3e

    :cond_33
    if-gt p2, v1, :cond_38

    add-int/lit8 v8, p2, -0x45

    goto :goto_3e

    :cond_38
    if-gt p2, v0, :cond_1b

    add-int/lit8 v8, p2, -0x60

    goto :goto_3e

    :goto_3d
    move v8, p2

    :goto_3e
    return v8

    .line 773
    :cond_3f
    const/4 v9, 0x0

    if-nez p2, :cond_45

    :goto_42
    const/4 v8, 0x0

    goto/16 :goto_9c

    :cond_45
    if-nez p1, :cond_4c

    if-gt p2, v8, :cond_4c

    add-int/lit8 v8, p2, -0x1

    goto :goto_9c

    :cond_4c
    const/4 v10, 0x1

    if-ne p1, v10, :cond_52

    if-gt p2, v6, :cond_52

    :cond_51
    goto :goto_9b

    :cond_52
    if-ne p2, v5, :cond_55

    goto :goto_9c

    :cond_55
    const/16 v5, 0x21

    if-lt p2, v5, :cond_5e

    if-gt p2, v4, :cond_5e

    add-int/lit8 v8, p2, -0x21

    goto :goto_9c

    :cond_5e
    const/16 v4, 0x30

    if-lt p2, v4, :cond_67

    if-gt p2, v3, :cond_67

    add-int/lit8 v8, p2, -0x2c

    goto :goto_9c

    :cond_67
    const/16 v3, 0x3a

    if-lt p2, v3, :cond_70

    if-gt p2, v7, :cond_70

    add-int/lit8 v8, p2, -0x2b

    goto :goto_9c

    :cond_70
    const/16 v3, 0x41

    if-lt p2, v3, :cond_79

    if-gt p2, v2, :cond_79

    add-int/lit8 v8, p2, -0x40

    goto :goto_9c

    :cond_79
    const/16 v2, 0x5b

    if-lt p2, v2, :cond_82

    if-gt p2, v1, :cond_82

    add-int/lit8 v8, p2, -0x45

    goto :goto_9c

    :cond_82
    const/16 v1, 0x60

    if-ne p2, v1, :cond_87

    goto :goto_42

    :cond_87
    const/16 v1, 0x61

    if-lt p2, v1, :cond_92

    const/16 v1, 0x7a

    if-gt p2, v1, :cond_92

    add-int/lit8 v8, p2, -0x53

    goto :goto_9c

    :cond_92
    const/16 v1, 0x7b

    if-lt p2, v1, :cond_51

    if-gt p2, v0, :cond_51

    add-int/lit8 v8, p2, -0x60

    goto :goto_9c

    :goto_9b
    move v8, p2

    :goto_9c
    return v8
.end method

.method static getShiftValue(CZI)I
    .registers 4
    .param p0, "c"    # C
    .param p1, "c40"    # Z
    .param p2, "fnc1"    # I

    .line 752
    if-eqz p1, :cond_8

    # invokes: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$600(C)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_8
    if-nez p1, :cond_12

    .line 753
    # invokes: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift1Set(C)Z
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$700(C)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_25

    :cond_12
    if-eqz p1, :cond_1a

    .line 754
    # invokes: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z
    invoke-static {p0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$800(CI)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1a
    if-nez p1, :cond_24

    .line 755
    # invokes: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift2Set(CI)Z
    invoke-static {p0, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->access$900(CI)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x2

    .line 752
    :goto_25
    return v0
.end method

.method private static getX12Value(C)I
    .registers 2
    .param p0, "c"    # C

    .line 732
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2f

    :cond_6
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_2f

    :cond_c
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_12

    const/4 v0, 0x2

    goto :goto_2f

    :cond_12
    const/16 v0, 0x20

    if-ne p0, v0, :cond_18

    const/4 v0, 0x3

    goto :goto_2f

    :cond_18
    const/16 v0, 0x30

    if-lt p0, v0, :cond_23

    const/16 v0, 0x39

    if-gt p0, v0, :cond_23

    add-int/lit8 v0, p0, -0x2c

    goto :goto_2f

    :cond_23
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2e

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2e

    add-int/lit8 v0, p0, -0x33

    goto :goto_2f

    :cond_2e
    move v0, p0

    :goto_2f
    return v0
.end method

.method static setC40Word([BIIII)V
    .registers 8
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "c1"    # I
    .param p3, "c2"    # I
    .param p4, "c3"    # I

    .line 726
    and-int/lit16 v0, p2, 0xff

    mul-int/lit16 v0, v0, 0x640

    and-int/lit16 v1, p3, 0xff

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 727
    .local v0, "val16":I
    div-int/lit16 v1, v0, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 728
    add-int/lit8 v1, p1, 0x1

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 729
    return-void
.end method


# virtual methods
.method getB256Size()I
    .registers 5

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "cnt":I
    move-object v1, p0

    .line 582
    .local v1, "current":Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
    :goto_2
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v3, :cond_13

    const/16 v2, 0xfa

    if-gt v0, v2, :cond_13

    .line 583
    add-int/lit8 v0, v0, 0x1

    .line 584
    iget-object v1, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    goto :goto_2

    .line 586
    :cond_13
    return v0
.end method

.method getC40Words(ZI)[B
    .registers 11
    .param p1, "c40"    # Z
    .param p2, "fnc1"    # I

    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, "c40Values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_ae

    .line 791
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    .line 792
    .local v2, "ci":C
    if-eqz p1, :cond_1c

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_1c
    if-nez p1, :cond_32

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 793
    :cond_24
    invoke-static {p1, v3, v2, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_aa

    .line 794
    :cond_32
    invoke-static {v2, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v4

    if-nez v4, :cond_51

    .line 795
    invoke-static {v2, p1, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getShiftValue(CZI)I

    move-result v3

    .line 796
    .local v3, "shiftValue":I
    int-to-byte v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-static {p1, v3, v2, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    .end local v3    # "shiftValue":I
    goto :goto_aa

    .line 799
    :cond_51
    and-int/lit16 v4, v2, 0xff

    add-int/lit8 v4, v4, -0x80

    int-to-char v4, v4

    .line 800
    .local v4, "asciiValue":C
    const/16 v5, 0x1e

    const/4 v6, 0x1

    if-eqz p1, :cond_61

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    if-nez v7, :cond_69

    :cond_61
    if-nez p1, :cond_84

    .line 801
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 802
    :cond_69
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-static {p1, v3, v4, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 806
    :cond_84
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-static {v4, p1, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getShiftValue(CZI)I

    move-result v3

    .line 809
    .restart local v3    # "shiftValue":I
    int-to-byte v5, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-static {p1, v3, v4, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v2    # "ci":C
    .end local v3    # "shiftValue":I
    .end local v4    # "asciiValue":C
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 815
    .end local v1    # "i":I
    :cond_ae
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_be

    .line 816
    nop

    .line 817
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_be
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 821
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 822
    .local v2, "byteIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_ca
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_100

    .line 823
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v1, v2, v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    .line 824
    add-int/lit8 v2, v2, 0x2

    .line 822
    add-int/lit8 v3, v3, 0x3

    goto :goto_ca

    .line 826
    .end local v3    # "i":I
    :cond_100
    return-object v1
.end method

.method getCodewordsRemaining(I)I
    .registers 3
    .param p1, "minimum"    # I

    .line 709
    invoke-virtual {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method getDataBytes()[B
    .registers 5

    .line 900
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_c4

    .line 924
    goto/16 :goto_c0

    .line 922
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEDFBytes()[B

    move-result-object v0

    return-object v0

    .line 920
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Words()[B

    move-result-object v0

    return-object v0

    .line 918
    :pswitch_1b
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(ZI)[B

    move-result-object v0

    return-object v0

    .line 916
    :pswitch_26
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(ZI)[B

    move-result-object v0

    return-object v0

    .line 914
    :pswitch_31
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 902
    :pswitch_3e
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 903
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getECIValue(I)I

    move-result v0

    add-int/2addr v0, v2

    const/16 v1, 0xf1

    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 904
    :cond_58
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 905
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x7f

    const/16 v1, 0xeb

    invoke-static {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 906
    :cond_7d
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a1

    .line 907
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x30

    add-int/lit16 v0, v0, 0x82

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 908
    :cond_a1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isFNC1(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 909
    const/16 v0, 0xe8

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 911
    :cond_b2
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 925
    :goto_c0
    new-array v0, v1, [B

    return-object v0

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_31
        :pswitch_26
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method getEDFBytes()[B
    .registers 12

    .line 830
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 831
    .local v0, "numberOfThirds":I
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 832
    .local v1, "result":[B
    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    .line 833
    .local v2, "pos":I
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 834
    .local v3, "endPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    if-ge v5, v0, :cond_78

    .line 835
    const/4 v6, 0x4

    new-array v7, v6, [I

    .line 836
    .local v7, "edfValues":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2d
    const/4 v9, 0x0

    if-ge v8, v6, :cond_4b

    .line 837
    if-gt v2, v3, :cond_40

    .line 838
    iget-object v9, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v10, v2, 0x1

    .end local v2    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    and-int/lit8 v2, v2, 0x3f

    aput v2, v7, v8

    move v2, v10

    goto :goto_48

    .line 840
    .end local v10    # "pos":I
    .restart local v2    # "pos":I
    :cond_40
    add-int/lit8 v10, v3, 0x1

    if-ne v2, v10, :cond_46

    const/16 v9, 0x1f

    :cond_46
    aput v9, v7, v8

    .line 836
    :goto_48
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    .line 843
    .end local v8    # "j":I
    :cond_4b
    aget v6, v7, v9

    shl-int/lit8 v6, v6, 0x12

    .line 844
    .local v6, "val24":I
    aget v8, v7, v4

    shl-int/lit8 v8, v8, 0xc

    or-int/2addr v6, v8

    .line 845
    const/4 v8, 0x2

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    .line 846
    const/4 v8, 0x3

    aget v8, v7, v8

    or-int/2addr v6, v8

    .line 847
    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 848
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 849
    add-int/lit8 v8, v5, 0x2

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 834
    .end local v6    # "val24":I
    .end local v7    # "edfValues":[I
    add-int/lit8 v5, v5, 0x3

    goto :goto_27

    .line 851
    .end local v5    # "i":I
    :cond_78
    return-object v1
.end method

.method getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, v1, :cond_22

    .line 605
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_e

    .line 606
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0

    .line 608
    :cond_e
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLastASCII()I

    move-result v0

    .line 609
    .local v0, "lastASCII":I
    if-lez v0, :cond_22

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getCodewordsRemaining(I)I

    move-result v1

    rsub-int/lit8 v2, v0, 0x2

    if-gt v1, v2, :cond_22

    .line 610
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v1

    .line 613
    .end local v0    # "lastASCII":I
    :cond_22
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v0, v1, :cond_5f

    .line 618
    :cond_34
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v1

    if-lt v0, v1, :cond_4c

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getCodewordsRemaining(I)I

    move-result v0

    if-nez v0, :cond_4c

    .line 619
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0

    .line 621
    :cond_4c
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLastASCII()I

    move-result v0

    .line 622
    .restart local v0    # "lastASCII":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getCodewordsRemaining(I)I

    move-result v1

    if-nez v1, :cond_5f

    .line 623
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v1

    .line 626
    .end local v0    # "lastASCII":I
    :cond_5f
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method getLastASCII()I
    .registers 8

    .line 638
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v0

    .line 639
    .local v0, "length":I
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v1, v2

    .line 640
    .local v1, "from":I
    sub-int v2, v0, v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-gt v2, v3, :cond_113

    if-lt v1, v0, :cond_15

    goto/16 :goto_113

    .line 643
    :cond_15
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 644
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    iget-object v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v5

    invoke-static {v2, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 645
    return v4

    .line 647
    :cond_2d
    return v3

    .line 649
    :cond_2e
    sub-int v2, v0, v1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_77

    .line 650
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v6

    invoke-static {v2, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v2

    if-nez v2, :cond_76

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 651
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v6

    .line 650
    invoke-static {v2, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_76

    .line 654
    :cond_5a
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 655
    return v3

    .line 657
    :cond_75
    return v5

    .line 652
    :cond_76
    :goto_76
    return v4

    .line 659
    :cond_77
    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_db

    .line 660
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x2

    .line 661
    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 662
    return v5

    .line 664
    :cond_ab
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_da

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_da

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    .line 665
    invoke-virtual {v2, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v2

    if-nez v2, :cond_da

    .line 666
    return v5

    .line 668
    :cond_da
    return v4

    .line 670
    :cond_db
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v2, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_112

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_112

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x2

    .line 671
    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_112

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 672
    return v5

    .line 674
    :cond_112
    return v4

    .line 641
    :cond_113
    :goto_113
    return v4
.end method

.method getLatchBytes()[B
    .registers 8

    .line 855
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xee

    const/16 v3, 0xef

    const/16 v4, 0xe6

    const/16 v5, 0xe7

    packed-switch v0, :pswitch_data_7c

    goto :goto_78

    .line 892
    :pswitch_1a
    goto :goto_78

    .line 874
    :pswitch_1b
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v6

    if-eq v0, v6, :cond_78

    .line 875
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/16 v6, 0xfe

    packed-switch v0, :pswitch_data_8c

    .line 887
    goto :goto_78

    :pswitch_33
    invoke-static {v6, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 885
    :pswitch_38
    invoke-static {v6, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 883
    :pswitch_3d
    invoke-static {v6, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 881
    :pswitch_42
    invoke-static {v6, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 879
    :pswitch_47
    invoke-static {v6, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(II)[B

    move-result-object v0

    return-object v0

    .line 877
    :pswitch_4c
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 858
    :pswitch_51
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    iget-object v6, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_9c

    .line 870
    goto :goto_78

    .line 868
    :pswitch_5f
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 866
    :pswitch_64
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 864
    :pswitch_69
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 862
    :pswitch_6e
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 860
    :pswitch_73
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getBytes(I)[B

    move-result-object v0

    return-object v0

    .line 895
    :cond_78
    :goto_78
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_51
        :pswitch_51
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x2
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
    .end packed-switch
.end method

.method getMinSymbolSize(I)I
    .registers 7
    .param p1, "minimum"    # I

    .line 681
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint:[I

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    # invokes: Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getShapeHint()Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->access$500(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_48

    goto :goto_30

    .line 690
    :pswitch_13
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->rectangularCodewordCapacities:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_30

    aget v4, v0, v3

    .line 691
    .local v4, "capacity":I
    if-lt v4, p1, :cond_1e

    .line 692
    return v4

    .line 690
    .end local v4    # "capacity":I
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 683
    :pswitch_21
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->squareCodewordCapacities:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_2f

    aget v4, v0, v3

    .line 684
    .restart local v4    # "capacity":I
    if-lt v4, p1, :cond_2c

    .line 685
    return v4

    .line 683
    .end local v4    # "capacity":I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 688
    :cond_2f
    nop

    .line 697
    :cond_30
    :goto_30
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    array-length v2, v0

    :goto_33
    if-ge v1, v2, :cond_3d

    aget v3, v0, v1

    .line 698
    .local v3, "capacity":I
    if-lt v3, p1, :cond_3a

    .line 699
    return v3

    .line 697
    .end local v3    # "capacity":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 702
    :cond_3d
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_21
        :pswitch_13
    .end packed-switch
.end method

.method getMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    return-object v0
.end method

.method getPreviousMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    .line 594
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method getPreviousStartMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_b

    :cond_7
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    iget-object v0, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    :goto_b
    return-object v0
.end method

.method getX12Words()[B
    .registers 8

    .line 741
    nop

    .line 742
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 743
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_4a

    .line 744
    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    div-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v2

    iget-object v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    div-int/lit8 v5, v1, 0x2

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 745
    invoke-virtual {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget v5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    div-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    .line 746
    invoke-virtual {v4, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v4

    .line 744
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    .line 743
    add-int/lit8 v1, v1, 0x2

    goto :goto_a

    .line 748
    .end local v1    # "i":I
    :cond_4a
    return-object v0
.end method
