.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .registers 111

    .line 40
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_480

    new-array v2, v0, [I

    fill-array-data v2, :array_490

    new-array v3, v0, [I

    fill-array-data v3, :array_4a0

    new-array v4, v0, [I

    fill-array-data v4, :array_4b0

    new-array v5, v0, [I

    fill-array-data v5, :array_4c0

    new-array v6, v0, [I

    fill-array-data v6, :array_4d0

    new-array v7, v0, [I

    fill-array-data v7, :array_4e0

    new-array v8, v0, [I

    fill-array-data v8, :array_4f0

    new-array v9, v0, [I

    fill-array-data v9, :array_500

    new-array v10, v0, [I

    fill-array-data v10, :array_510

    new-array v11, v0, [I

    fill-array-data v11, :array_520

    new-array v12, v0, [I

    fill-array-data v12, :array_530

    new-array v13, v0, [I

    fill-array-data v13, :array_540

    new-array v14, v0, [I

    fill-array-data v14, :array_550

    new-array v15, v0, [I

    fill-array-data v15, :array_560

    move-object/from16 v16, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_570

    move-object/from16 v17, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_580

    move-object/from16 v18, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_590

    move-object/from16 v19, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5a0

    move-object/from16 v20, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5b0

    move-object/from16 v21, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5c0

    move-object/from16 v22, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5d0

    move-object/from16 v23, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5e0

    move-object/from16 v24, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_5f0

    move-object/from16 v25, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_600

    move-object/from16 v26, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_610

    move-object/from16 v27, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_620

    move-object/from16 v28, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_630

    move-object/from16 v29, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_640

    move-object/from16 v30, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_650

    move-object/from16 v31, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_660

    move-object/from16 v32, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_670

    move-object/from16 v33, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_680

    move-object/from16 v34, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_690

    move-object/from16 v35, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6a0

    move-object/from16 v36, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6b0

    move-object/from16 v37, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6c0

    move-object/from16 v38, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6d0

    move-object/from16 v39, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6e0

    move-object/from16 v40, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_6f0

    move-object/from16 v41, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_700

    move-object/from16 v42, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_710

    move-object/from16 v43, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_720

    move-object/from16 v44, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_730

    move-object/from16 v45, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_740

    move-object/from16 v46, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_750

    move-object/from16 v47, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_760

    move-object/from16 v48, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_770

    move-object/from16 v49, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_780

    move-object/from16 v50, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_790

    move-object/from16 v51, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7a0

    move-object/from16 v52, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7b0

    move-object/from16 v53, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7c0

    move-object/from16 v54, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7d0

    move-object/from16 v55, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7e0

    move-object/from16 v56, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_7f0

    move-object/from16 v57, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_800

    move-object/from16 v58, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_810

    move-object/from16 v59, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_820

    move-object/from16 v60, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_830

    move-object/from16 v61, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_840

    move-object/from16 v62, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_850

    move-object/from16 v63, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_860

    move-object/from16 v64, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_870

    move-object/from16 v65, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_880

    move-object/from16 v66, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_890

    move-object/from16 v67, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8a0

    move-object/from16 v68, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8b0

    move-object/from16 v69, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8c0

    move-object/from16 v70, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8d0

    move-object/from16 v71, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8e0

    move-object/from16 v72, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_8f0

    move-object/from16 v73, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_900

    move-object/from16 v74, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_910

    move-object/from16 v75, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_920

    move-object/from16 v76, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_930

    move-object/from16 v77, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_940

    move-object/from16 v78, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_950

    move-object/from16 v79, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_960

    move-object/from16 v80, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_970

    move-object/from16 v81, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_980

    move-object/from16 v82, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_990

    move-object/from16 v83, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9a0

    move-object/from16 v84, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9b0

    move-object/from16 v85, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9c0

    move-object/from16 v86, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9d0

    move-object/from16 v87, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9e0

    move-object/from16 v88, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_9f0

    move-object/from16 v89, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a00

    move-object/from16 v90, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a10

    move-object/from16 v91, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a20

    move-object/from16 v92, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a30

    move-object/from16 v93, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a40

    move-object/from16 v94, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a50

    move-object/from16 v95, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a60

    move-object/from16 v96, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a70

    move-object/from16 v97, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a80

    move-object/from16 v98, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_a90

    move-object/from16 v99, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_aa0

    move-object/from16 v100, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ab0

    move-object/from16 v101, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ac0

    move-object/from16 v102, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ad0

    move-object/from16 v103, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_ae0

    move-object/from16 v104, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_af0

    move-object/from16 v105, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_b00

    move-object/from16 v106, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_b10

    const/16 v107, 0x6

    const/4 v0, 0x7

    move-object/from16 v108, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_b20

    const/16 v109, 0x7

    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/16 v110, 0x0

    aput-object v16, v0, v110

    const/16 v16, 0x1

    aput-object v2, v0, v16

    const/4 v2, 0x2

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object v4, v0, v2

    const/4 v2, 0x4

    aput-object v5, v0, v2

    const/4 v2, 0x5

    aput-object v6, v0, v2

    aput-object v7, v0, v107

    aput-object v8, v0, v109

    const/16 v2, 0x8

    aput-object v9, v0, v2

    const/16 v2, 0x9

    aput-object v10, v0, v2

    const/16 v2, 0xa

    aput-object v11, v0, v2

    const/16 v2, 0xb

    aput-object v12, v0, v2

    const/16 v2, 0xc

    aput-object v13, v0, v2

    const/16 v2, 0xd

    aput-object v14, v0, v2

    const/16 v2, 0xe

    aput-object v15, v0, v2

    const/16 v2, 0xf

    aput-object v17, v0, v2

    const/16 v2, 0x10

    aput-object v18, v0, v2

    const/16 v2, 0x11

    aput-object v19, v0, v2

    const/16 v2, 0x12

    aput-object v20, v0, v2

    const/16 v2, 0x13

    aput-object v21, v0, v2

    const/16 v2, 0x14

    aput-object v22, v0, v2

    const/16 v2, 0x15

    aput-object v23, v0, v2

    const/16 v2, 0x16

    aput-object v24, v0, v2

    const/16 v2, 0x17

    aput-object v25, v0, v2

    const/16 v2, 0x18

    aput-object v26, v0, v2

    const/16 v2, 0x19

    aput-object v27, v0, v2

    const/16 v2, 0x1a

    aput-object v28, v0, v2

    const/16 v2, 0x1b

    aput-object v29, v0, v2

    const/16 v2, 0x1c

    aput-object v30, v0, v2

    const/16 v2, 0x1d

    aput-object v31, v0, v2

    const/16 v2, 0x1e

    aput-object v32, v0, v2

    const/16 v2, 0x1f

    aput-object v33, v0, v2

    const/16 v2, 0x20

    aput-object v34, v0, v2

    const/16 v2, 0x21

    aput-object v35, v0, v2

    const/16 v2, 0x22

    aput-object v36, v0, v2

    const/16 v2, 0x23

    aput-object v37, v0, v2

    const/16 v2, 0x24

    aput-object v38, v0, v2

    const/16 v2, 0x25

    aput-object v39, v0, v2

    const/16 v2, 0x26

    aput-object v40, v0, v2

    const/16 v2, 0x27

    aput-object v41, v0, v2

    const/16 v2, 0x28

    aput-object v42, v0, v2

    const/16 v2, 0x29

    aput-object v43, v0, v2

    const/16 v2, 0x2a

    aput-object v44, v0, v2

    const/16 v2, 0x2b

    aput-object v45, v0, v2

    const/16 v2, 0x2c

    aput-object v46, v0, v2

    const/16 v2, 0x2d

    aput-object v47, v0, v2

    const/16 v2, 0x2e

    aput-object v48, v0, v2

    const/16 v2, 0x2f

    aput-object v49, v0, v2

    const/16 v2, 0x30

    aput-object v50, v0, v2

    const/16 v2, 0x31

    aput-object v51, v0, v2

    const/16 v2, 0x32

    aput-object v52, v0, v2

    const/16 v2, 0x33

    aput-object v53, v0, v2

    const/16 v2, 0x34

    aput-object v54, v0, v2

    const/16 v2, 0x35

    aput-object v55, v0, v2

    const/16 v2, 0x36

    aput-object v56, v0, v2

    const/16 v2, 0x37

    aput-object v57, v0, v2

    const/16 v2, 0x38

    aput-object v58, v0, v2

    const/16 v2, 0x39

    aput-object v59, v0, v2

    const/16 v2, 0x3a

    aput-object v60, v0, v2

    const/16 v2, 0x3b

    aput-object v61, v0, v2

    const/16 v2, 0x3c

    aput-object v62, v0, v2

    const/16 v2, 0x3d

    aput-object v63, v0, v2

    const/16 v2, 0x3e

    aput-object v64, v0, v2

    const/16 v2, 0x3f

    aput-object v65, v0, v2

    const/16 v2, 0x40

    aput-object v66, v0, v2

    const/16 v2, 0x41

    aput-object v67, v0, v2

    const/16 v2, 0x42

    aput-object v68, v0, v2

    const/16 v2, 0x43

    aput-object v69, v0, v2

    const/16 v2, 0x44

    aput-object v70, v0, v2

    const/16 v2, 0x45

    aput-object v71, v0, v2

    const/16 v2, 0x46

    aput-object v72, v0, v2

    const/16 v2, 0x47

    aput-object v73, v0, v2

    const/16 v2, 0x48

    aput-object v74, v0, v2

    const/16 v2, 0x49

    aput-object v75, v0, v2

    const/16 v2, 0x4a

    aput-object v76, v0, v2

    const/16 v2, 0x4b

    aput-object v77, v0, v2

    const/16 v2, 0x4c

    aput-object v78, v0, v2

    const/16 v2, 0x4d

    aput-object v79, v0, v2

    const/16 v2, 0x4e

    aput-object v80, v0, v2

    const/16 v2, 0x4f

    aput-object v81, v0, v2

    const/16 v2, 0x50

    aput-object v82, v0, v2

    const/16 v2, 0x51

    aput-object v83, v0, v2

    const/16 v2, 0x52

    aput-object v84, v0, v2

    const/16 v2, 0x53

    aput-object v85, v0, v2

    const/16 v2, 0x54

    aput-object v86, v0, v2

    const/16 v2, 0x55

    aput-object v87, v0, v2

    const/16 v2, 0x56

    aput-object v88, v0, v2

    const/16 v2, 0x57

    aput-object v89, v0, v2

    const/16 v2, 0x58

    aput-object v90, v0, v2

    const/16 v2, 0x59

    aput-object v91, v0, v2

    const/16 v2, 0x5a

    aput-object v92, v0, v2

    const/16 v2, 0x5b

    aput-object v93, v0, v2

    const/16 v2, 0x5c

    aput-object v94, v0, v2

    const/16 v2, 0x5d

    aput-object v95, v0, v2

    const/16 v2, 0x5e

    aput-object v96, v0, v2

    const/16 v2, 0x5f

    aput-object v97, v0, v2

    const/16 v2, 0x60

    aput-object v98, v0, v2

    const/16 v2, 0x61

    aput-object v99, v0, v2

    const/16 v2, 0x62

    aput-object v100, v0, v2

    const/16 v2, 0x63

    aput-object v101, v0, v2

    const/16 v2, 0x64

    aput-object v102, v0, v2

    const/16 v2, 0x65

    aput-object v103, v0, v2

    const/16 v2, 0x66

    aput-object v104, v0, v2

    const/16 v2, 0x67

    aput-object v105, v0, v2

    const/16 v2, 0x68

    aput-object v106, v0, v2

    const/16 v2, 0x69

    aput-object v108, v0, v2

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_480
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_490
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_4a0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_4b0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4c0
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_4d0
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_4e0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_4f0
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_500
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_510
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_520
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_530
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_540
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_550
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_560
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_570
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_580
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_590
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_5a0
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_5b0
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_5c0
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_5d0
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_5e0
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_5f0
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_600
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_610
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_620
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_630
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_640
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_650
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_660
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_670
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_680
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_690
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_6a0
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_6b0
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_6c0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_6d0
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_6e0
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_6f0
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_700
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_710
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_720
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_730
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_740
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_750
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_760
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_770
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_780
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_790
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_7a0
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_7b0
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_7c0
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_7d0
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_7e0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_7f0
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_800
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_810
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_820
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_830
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_840
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_850
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_860
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_870
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_880
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_890
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_8a0
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_8b0
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_8c0
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_8d0
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_8e0
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_8f0
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_900
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_910
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_920
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_930
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_940
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_950
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_960
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_970
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_980
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_990
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_9a0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_9b0
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_9c0
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_9d0
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_9e0
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_9f0
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_a00
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_a10
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_a20
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_a30
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_a40
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_a50
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_a60
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_a70
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_a80
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_a90
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_aa0
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_ab0
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_ac0
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_ad0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_ae0
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_af0
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_b00
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_b10
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_b20
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .registers 9
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 217
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 218
    const/high16 v0, 0x3e800000    # 0.25f

    .line 219
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 220
    .local v1, "bestMatch":I
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_7
    sget-object v3, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v3, v3

    if-ge v2, v3, :cond_20

    .line 221
    sget-object v3, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v3, v3, v2

    .line 222
    .local v3, "pattern":[I
    const v4, 0x3f333333    # 0.7f

    invoke-static {p1, v3, v4}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v4

    .line 223
    .local v4, "variance":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_1d

    .line 224
    move v0, v4

    .line 225
    move v1, v2

    .line 220
    .end local v3    # "pattern":[I
    .end local v4    # "variance":F
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 229
    .end local v2    # "d":I
    :cond_20
    if-ltz v1, :cond_23

    .line 230
    return v1

    .line 232
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    goto :goto_29

    :goto_28
    throw v2

    :goto_29
    goto :goto_28
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 16
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 172
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 174
    .local v2, "rowOffset":I
    const/4 v3, 0x0

    .line 175
    .local v3, "counterPosition":I
    const/4 v4, 0x6

    new-array v4, v4, [I

    .line 176
    .local v4, "counters":[I
    move v5, v2

    .line 177
    .local v5, "patternStart":I
    const/4 v6, 0x0

    .line 178
    .local v6, "isWhite":Z
    array-length v7, v4

    .line 180
    .local v7, "patternLength":I
    move v8, v2

    .local v8, "i":I
    :goto_11
    if-ge v8, v0, :cond_79

    .line 181
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v6, :cond_20

    .line 182
    aget v9, v4, v3

    add-int/2addr v9, v10

    aput v9, v4, v3

    goto :goto_76

    .line 184
    :cond_20
    add-int/lit8 v9, v7, -0x1

    if-ne v3, v9, :cond_6d

    .line 185
    const/high16 v9, 0x3e800000    # 0.25f

    .line 186
    .local v9, "bestVariance":F
    const/4 v11, -0x1

    .line 187
    .local v11, "bestMatch":I
    const/16 v12, 0x67

    .local v12, "startCode":I
    :goto_29
    const/16 v13, 0x69

    if-gt v12, v13, :cond_41

    .line 188
    sget-object v13, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v13, v13, v12

    const v14, 0x3f333333    # 0.7f

    invoke-static {v4, v13, v14}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v13

    .line 190
    .local v13, "variance":F
    cmpg-float v14, v13, v9

    if-gez v14, :cond_3e

    .line 191
    move v9, v13

    .line 192
    move v11, v12

    .line 187
    .end local v13    # "variance":F
    :cond_3e
    add-int/lit8 v12, v12, 0x1

    goto :goto_29

    .line 196
    .end local v12    # "startCode":I
    :cond_41
    const/4 v12, 0x2

    if-ltz v11, :cond_58

    sub-int v13, v8, v5

    div-int/2addr v13, v12

    sub-int v13, v5, v13

    .line 197
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {p0, v13, v5, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v13

    if-eqz v13, :cond_58

    .line 198
    filled-new-array {v5, v8, v11}, [I

    move-result-object v1

    return-object v1

    .line 200
    :cond_58
    aget v13, v4, v1

    aget v14, v4, v10

    add-int/2addr v13, v14

    add-int/2addr v5, v13

    .line 201
    add-int/lit8 v13, v3, -0x1

    invoke-static {v4, v12, v4, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    add-int/lit8 v12, v3, -0x1

    aput v1, v4, v12

    .line 203
    aput v1, v4, v3

    .line 204
    nop

    .end local v9    # "bestVariance":F
    .end local v11    # "bestMatch":I
    add-int/lit8 v3, v3, -0x1

    .line 205
    goto :goto_6f

    .line 206
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    .line 208
    :goto_6f
    aput v10, v4, v3

    .line 209
    if-nez v6, :cond_74

    goto :goto_75

    :cond_74
    const/4 v10, 0x0

    :goto_75
    move v6, v10

    .line 180
    :goto_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 212
    .end local v8    # "i":I
    :cond_79
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    goto :goto_7f

    :goto_7e
    throw v1

    :goto_7f
    goto :goto_7e
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 37
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 240
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_14

    sget-object v5, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_15

    :cond_14
    const/4 v5, 0x0

    .line 242
    .local v5, "convertFNC1":Z
    :goto_15
    const/4 v6, 0x0

    .line 244
    .local v6, "symbologyModifier":I
    invoke-static {v1}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v7

    .line 245
    .local v7, "startPatternInfo":[I
    const/4 v8, 0x2

    aget v9, v7, v8

    .line 247
    .local v9, "startCode":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v10, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    int-to-byte v12, v9

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    packed-switch v9, :pswitch_data_2d8

    .line 262
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 259
    :pswitch_34
    const/16 v12, 0x63

    .line 260
    .local v12, "codeSet":I
    goto :goto_3d

    .line 256
    .end local v12    # "codeSet":I
    :pswitch_37
    const/16 v12, 0x64

    .line 257
    .restart local v12    # "codeSet":I
    goto :goto_3d

    .line 253
    .end local v12    # "codeSet":I
    :pswitch_3a
    const/16 v12, 0x65

    .line 254
    .restart local v12    # "codeSet":I
    nop

    .line 265
    :goto_3d
    const/4 v13, 0x0

    .line 266
    .local v13, "done":Z
    const/4 v14, 0x0

    .line 268
    .local v14, "isNextShifted":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 270
    .local v15, "result":Ljava/lang/StringBuilder;
    aget v11, v7, v3

    .line 271
    .local v11, "lastStart":I
    aget v16, v7, v4

    .line 272
    .local v16, "nextStart":I
    const/16 v17, 0x2

    const/4 v8, 0x6

    new-array v8, v8, [I

    .line 274
    .local v8, "counters":[I
    const/16 v18, 0x0

    .line 275
    .local v18, "lastCode":I
    const/16 v19, 0x0

    .line 276
    .local v19, "code":I
    move/from16 v20, v9

    .line 277
    .local v20, "checksumTotal":I
    const/16 v21, 0x0

    .line 278
    .local v21, "multiplier":I
    const/16 v22, 0x1

    .line 279
    .local v22, "lastCharacterWasPrintable":Z
    const/16 v23, 0x0

    .line 280
    .local v23, "upperMode":Z
    const/16 v24, 0x0

    move/from16 v3, v16

    move/from16 v25, v18

    move/from16 v4, v23

    move/from16 v2, v24

    .line 282
    .end local v16    # "nextStart":I
    .end local v18    # "lastCode":I
    .end local v23    # "upperMode":Z
    .local v2, "shiftUpperMode":Z
    .local v3, "nextStart":I
    .local v4, "upperMode":Z
    .local v25, "lastCode":I
    :goto_63
    if-nez v13, :cond_206

    .line 284
    move/from16 v23, v14

    .line 285
    .local v23, "unshift":Z
    const/4 v14, 0x0

    .line 288
    move/from16 v25, v19

    .line 291
    move/from16 v24, v5

    .end local v5    # "convertFNC1":Z
    .local v24, "convertFNC1":Z
    invoke-static {v1, v8, v3}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v5

    .line 293
    .end local v19    # "code":I
    .local v5, "code":I
    move-object/from16 v26, v7

    .end local v7    # "startPatternInfo":[I
    .local v26, "startPatternInfo":[I
    int-to-byte v7, v5

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const/16 v7, 0x6a

    if-eq v5, v7, :cond_80

    .line 297
    const/16 v22, 0x1

    .line 301
    :cond_80
    if-eq v5, v7, :cond_88

    .line 302
    add-int/lit8 v21, v21, 0x1

    .line 303
    mul-int v19, v21, v5

    add-int v20, v20, v19

    .line 307
    :cond_88
    move v11, v3

    .line 308
    array-length v7, v8

    move/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "nextStart":I
    .local v27, "nextStart":I
    :goto_8d
    if-ge v3, v7, :cond_96

    aget v28, v8, v3

    .line 309
    .local v28, "counter":I
    add-int v27, v27, v28

    .line 308
    .end local v28    # "counter":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 313
    :cond_96
    packed-switch v5, :pswitch_data_2e2

    .line 320
    const-string v7, "]C1"

    packed-switch v12, :pswitch_data_2ec

    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .local v31, "counters":[I
    goto/16 :goto_1ee

    .line 317
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_a2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 323
    :pswitch_a7
    const/16 v3, 0x40

    if-ge v5, v3, :cond_c1

    .line 324
    if-ne v2, v4, :cond_b4

    .line 325
    add-int/lit8 v3, v5, 0x20

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bc

    .line 327
    :cond_b4
    add-int/lit8 v3, v5, 0x20

    add-int/lit16 v3, v3, 0x80

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :goto_bc
    const/4 v2, 0x0

    move-object/from16 v31, v8

    goto/16 :goto_1ee

    .line 330
    :cond_c1
    const/16 v3, 0x60

    if-ge v5, v3, :cond_d9

    .line 331
    if-ne v2, v4, :cond_ce

    .line 332
    add-int/lit8 v3, v5, -0x40

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d4

    .line 334
    :cond_ce
    add-int/lit8 v3, v5, 0x40

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    :goto_d4
    const/4 v2, 0x0

    move-object/from16 v31, v8

    goto/16 :goto_1ee

    .line 340
    :cond_d9
    const/16 v3, 0x6a

    if-eq v5, v3, :cond_df

    .line 341
    const/16 v22, 0x0

    .line 343
    :cond_df
    packed-switch v5, :pswitch_data_2f6

    :pswitch_e2
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    goto/16 :goto_13b

    .line 389
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_e6
    const/4 v13, 0x1

    move-object/from16 v31, v8

    goto :goto_13b

    .line 345
    :pswitch_ea
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_f4

    .line 346
    const/4 v6, 0x1

    move-object/from16 v31, v8

    goto :goto_fe

    .line 347
    :cond_f4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v31, v8

    const/4 v8, 0x1

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    if-ne v3, v8, :cond_fe

    .line 348
    const/4 v6, 0x2

    .line 350
    :cond_fe
    :goto_fe
    if-eqz v24, :cond_13b

    .line 351
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_10a

    .line 354
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13b

    .line 357
    :cond_10a
    const/16 v3, 0x1d

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13b

    .line 368
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_110
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    if-nez v4, :cond_119

    if-eqz v2, :cond_119

    .line 369
    const/4 v4, 0x1

    .line 370
    const/4 v2, 0x0

    goto :goto_13b

    .line 371
    :cond_119
    if-eqz v4, :cond_120

    if-eqz v2, :cond_120

    .line 372
    const/4 v4, 0x0

    .line 373
    const/4 v2, 0x0

    goto :goto_13b

    .line 375
    :cond_120
    const/4 v2, 0x1

    .line 377
    goto :goto_13b

    .line 383
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_122
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    const/16 v3, 0x64

    .line 384
    .end local v12    # "codeSet":I
    .local v3, "codeSet":I
    move v12, v3

    goto :goto_13b

    .line 386
    .end local v3    # "codeSet":I
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    .restart local v12    # "codeSet":I
    :pswitch_128
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    const/16 v3, 0x63

    .line 387
    .end local v12    # "codeSet":I
    .restart local v3    # "codeSet":I
    move v12, v3

    goto :goto_13b

    .line 379
    .end local v3    # "codeSet":I
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    .restart local v12    # "codeSet":I
    :pswitch_12e
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    const/4 v14, 0x1

    .line 380
    const/16 v3, 0x64

    .line 381
    .end local v12    # "codeSet":I
    .restart local v3    # "codeSet":I
    move v12, v3

    goto :goto_13b

    .line 362
    .end local v3    # "codeSet":I
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    .restart local v12    # "codeSet":I
    :pswitch_135
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    const/4 v6, 0x4

    .line 363
    goto :goto_13b

    .line 366
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_139
    move-object/from16 v31, v8

    .line 393
    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    :cond_13b
    :goto_13b
    goto/16 :goto_1ee

    .line 395
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_13d
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    const/16 v3, 0x60

    if-ge v5, v3, :cond_157

    .line 396
    if-ne v2, v4, :cond_14c

    .line 397
    add-int/lit8 v3, v5, 0x20

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_154

    .line 399
    :cond_14c
    add-int/lit8 v3, v5, 0x20

    add-int/lit16 v3, v3, 0x80

    int-to-char v3, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    :goto_154
    const/4 v2, 0x0

    goto/16 :goto_1ee

    .line 403
    :cond_157
    const/16 v3, 0x6a

    if-eq v5, v3, :cond_15d

    .line 404
    const/16 v22, 0x0

    .line 406
    :cond_15d
    packed-switch v5, :pswitch_data_310

    :pswitch_160
    goto :goto_1a5

    .line 452
    :pswitch_161
    const/4 v13, 0x1

    goto :goto_1a5

    .line 408
    :pswitch_163
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_16b

    .line 409
    const/4 v6, 0x1

    goto :goto_173

    .line 410
    :cond_16b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_173

    .line 411
    const/4 v6, 0x2

    .line 413
    :cond_173
    :goto_173
    if-eqz v24, :cond_1a5

    .line 414
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_17f

    .line 417
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a5

    .line 420
    :cond_17f
    const/16 v3, 0x1d

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a5

    .line 446
    :pswitch_185
    const/16 v3, 0x65

    .line 447
    .end local v12    # "codeSet":I
    .restart local v3    # "codeSet":I
    move v12, v3

    goto :goto_1a5

    .line 431
    .end local v3    # "codeSet":I
    .restart local v12    # "codeSet":I
    :pswitch_189
    if-nez v4, :cond_190

    if-eqz v2, :cond_190

    .line 432
    const/4 v4, 0x1

    .line 433
    const/4 v2, 0x0

    goto :goto_1a5

    .line 434
    :cond_190
    if-eqz v4, :cond_197

    if-eqz v2, :cond_197

    .line 435
    const/4 v4, 0x0

    .line 436
    const/4 v2, 0x0

    goto :goto_1a5

    .line 438
    :cond_197
    const/4 v2, 0x1

    .line 440
    goto :goto_1a5

    .line 449
    :pswitch_199
    const/16 v3, 0x63

    .line 450
    .end local v12    # "codeSet":I
    .restart local v3    # "codeSet":I
    move v12, v3

    goto :goto_1a5

    .line 442
    .end local v3    # "codeSet":I
    .restart local v12    # "codeSet":I
    :pswitch_19d
    const/4 v14, 0x1

    .line 443
    const/16 v3, 0x65

    .line 444
    .end local v12    # "codeSet":I
    .restart local v3    # "codeSet":I
    move v12, v3

    goto :goto_1a5

    .line 425
    .end local v3    # "codeSet":I
    .restart local v12    # "codeSet":I
    :pswitch_1a2
    const/4 v6, 0x4

    .line 426
    goto :goto_1a5

    .line 429
    :pswitch_1a4
    nop

    .line 456
    :cond_1a5
    :goto_1a5
    goto :goto_1ee

    .line 458
    .end local v31    # "counters":[I
    .restart local v8    # "counters":[I
    :pswitch_1a6
    move-object/from16 v31, v8

    .end local v8    # "counters":[I
    .restart local v31    # "counters":[I
    const/16 v3, 0x64

    if-ge v5, v3, :cond_1b9

    .line 459
    const/16 v7, 0xa

    if-ge v5, v7, :cond_1b5

    .line 460
    const/16 v7, 0x30

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    :cond_1b5
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 464
    :cond_1b9
    const/16 v8, 0x6a

    if-eq v5, v8, :cond_1bf

    .line 465
    const/16 v22, 0x0

    .line 467
    :cond_1bf
    packed-switch v5, :pswitch_data_32a

    :pswitch_1c2
    goto :goto_1ee

    .line 492
    :pswitch_1c3
    const/4 v7, 0x1

    move v13, v7

    .end local v13    # "done":Z
    .local v7, "done":Z
    goto :goto_1ee

    .line 469
    .end local v7    # "done":Z
    .restart local v13    # "done":Z
    :pswitch_1c6
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_1ce

    .line 470
    const/4 v6, 0x1

    goto :goto_1d6

    .line 471
    :cond_1ce
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v3, 0x1

    if-ne v8, v3, :cond_1d6

    .line 472
    const/4 v6, 0x2

    .line 474
    :cond_1d6
    :goto_1d6
    if-eqz v24, :cond_1ee

    .line 475
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1e2

    .line 478
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 481
    :cond_1e2
    const/16 v3, 0x1d

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1ee

    .line 486
    :pswitch_1e8
    const/16 v12, 0x65

    .line 487
    goto :goto_1ee

    .line 489
    :pswitch_1eb
    const/16 v12, 0x64

    .line 490
    nop

    .line 500
    :cond_1ee
    :goto_1ee
    if-eqz v23, :cond_1fa

    .line 501
    const/16 v3, 0x65

    if-ne v12, v3, :cond_1f7

    const/16 v7, 0x64

    goto :goto_1f9

    :cond_1f7
    const/16 v7, 0x65

    :goto_1f9
    move v12, v7

    .line 504
    .end local v23    # "unshift":Z
    :cond_1fa
    move/from16 v19, v5

    move/from16 v5, v24

    move-object/from16 v7, v26

    move/from16 v3, v27

    move-object/from16 v8, v31

    goto/16 :goto_63

    .line 506
    .end local v24    # "convertFNC1":Z
    .end local v26    # "startPatternInfo":[I
    .end local v27    # "nextStart":I
    .end local v31    # "counters":[I
    .local v3, "nextStart":I
    .local v5, "convertFNC1":Z
    .local v7, "startPatternInfo":[I
    .restart local v8    # "counters":[I
    .restart local v19    # "code":I
    :cond_206
    move/from16 v24, v5

    move-object/from16 v26, v7

    move-object/from16 v31, v8

    .end local v5    # "convertFNC1":Z
    .end local v7    # "startPatternInfo":[I
    .end local v8    # "counters":[I
    .restart local v24    # "convertFNC1":Z
    .restart local v26    # "startPatternInfo":[I
    .restart local v31    # "counters":[I
    sub-int v5, v3, v11

    .line 511
    .local v5, "lastPatternSize":I
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    .line 512
    nop

    .line 513
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    sub-int v8, v3, v11

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 512
    const/4 v8, 0x0

    invoke-virtual {v1, v3, v7, v8}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v7

    if-eqz v7, :cond_2d1

    .line 519
    move/from16 v7, v25

    .end local v25    # "lastCode":I
    .local v7, "lastCode":I
    mul-int v25, v21, v7

    sub-int v20, v20, v25

    .line 521
    rem-int/lit8 v8, v20, 0x67

    if-ne v8, v7, :cond_2cc

    .line 526
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 527
    .local v8, "resultLength":I
    if-eqz v8, :cond_2c7

    .line 534
    if-lez v8, :cond_24a

    if-eqz v22, :cond_24a

    .line 535
    const/16 v1, 0x63

    if-ne v12, v1, :cond_245

    .line 536
    add-int/lit8 v1, v8, -0x2

    invoke-virtual {v15, v1, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_24a

    .line 538
    :cond_245
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v15, v1, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 542
    :cond_24a
    :goto_24a
    const/16 v18, 0x1

    aget v1, v26, v18

    const/16 v16, 0x0

    aget v23, v26, v16

    add-int v1, v1, v23

    int-to-float v1, v1

    const/high16 v23, 0x40000000    # 2.0f

    div-float v1, v1, v23

    .line 543
    .local v1, "left":F
    move/from16 v25, v2

    .end local v2    # "shiftUpperMode":Z
    .local v25, "shiftUpperMode":Z
    int-to-float v2, v11

    move/from16 v27, v2

    int-to-float v2, v5

    div-float v2, v2, v23

    add-float v2, v27, v2

    .line 545
    .local v2, "right":F
    move/from16 v23, v3

    .end local v3    # "nextStart":I
    .local v23, "nextStart":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 546
    .local v3, "rawCodesSize":I
    move/from16 v27, v4

    .end local v4    # "upperMode":Z
    .local v27, "upperMode":Z
    new-array v4, v3, [B

    .line 547
    .local v4, "rawBytes":[B
    const/16 v28, 0x0

    move/from16 v29, v5

    move/from16 v5, v28

    .local v5, "i":I
    .local v29, "lastPatternSize":I
    :goto_273
    if-ge v5, v3, :cond_284

    .line 548
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Byte;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Byte;->byteValue()B

    move-result v28

    aput-byte v28, v4, v5

    .line 547
    add-int/lit8 v5, v5, 0x1

    goto :goto_273

    .line 550
    .end local v5    # "i":I
    :cond_284
    new-instance v5, Lcom/google/zxing/Result;

    .line 551
    move/from16 v28, v3

    .end local v3    # "rawCodesSize":I
    .local v28, "rawCodesSize":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v7

    const/4 v7, 0x2

    .end local v7    # "lastCode":I
    .local v30, "lastCode":I
    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    move/from16 v17, v8

    .end local v8    # "resultLength":I
    .local v17, "resultLength":I
    new-instance v8, Lcom/google/zxing/ResultPoint;

    move/from16 v32, v9

    .end local v9    # "startCode":I
    .local v32, "startCode":I
    int-to-float v9, v0

    invoke-direct {v8, v1, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v16, 0x0

    aput-object v8, v7, v16

    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v0

    invoke-direct {v8, v2, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v18, 0x1

    aput-object v8, v7, v18

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v5, v3, v4, v7, v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 557
    .local v5, "resultObject":Lcom/google/zxing/Result;
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "]C"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 558
    return-object v5

    .line 529
    .end local v1    # "left":F
    .end local v17    # "resultLength":I
    .end local v23    # "nextStart":I
    .end local v25    # "shiftUpperMode":Z
    .end local v27    # "upperMode":Z
    .end local v28    # "rawCodesSize":I
    .end local v29    # "lastPatternSize":I
    .end local v30    # "lastCode":I
    .end local v32    # "startCode":I
    .local v2, "shiftUpperMode":Z
    .local v3, "nextStart":I
    .local v4, "upperMode":Z
    .local v5, "lastPatternSize":I
    .restart local v7    # "lastCode":I
    .restart local v8    # "resultLength":I
    .restart local v9    # "startCode":I
    :cond_2c7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 522
    .end local v8    # "resultLength":I
    :cond_2cc
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 515
    .end local v7    # "lastCode":I
    .local v25, "lastCode":I
    :cond_2d1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    goto :goto_2d7

    :goto_2d6
    throw v1

    :goto_2d7
    goto :goto_2d6

    :pswitch_data_2d8
    .packed-switch 0x67
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_2e2
    .packed-switch 0x67
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
    .end packed-switch

    :pswitch_data_2ec
    .packed-switch 0x63
        :pswitch_1a6
        :pswitch_13d
        :pswitch_a7
    .end packed-switch

    :pswitch_data_2f6
    .packed-switch 0x60
        :pswitch_139
        :pswitch_135
        :pswitch_12e
        :pswitch_128
        :pswitch_122
        :pswitch_110
        :pswitch_ea
        :pswitch_e2
        :pswitch_e2
        :pswitch_e2
        :pswitch_e6
    .end packed-switch

    :pswitch_data_310
    .packed-switch 0x60
        :pswitch_1a4
        :pswitch_1a2
        :pswitch_19d
        :pswitch_199
        :pswitch_189
        :pswitch_185
        :pswitch_163
        :pswitch_160
        :pswitch_160
        :pswitch_160
        :pswitch_161
    .end packed-switch

    :pswitch_data_32a
    .packed-switch 0x64
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1c6
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c2
        :pswitch_1c3
    .end packed-switch
.end method
