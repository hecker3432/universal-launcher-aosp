.class synthetic Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

.field static final synthetic $SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 681
    invoke-static {}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->values()[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint:[I

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$SymbolShapeHint:[I

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    .line 519
    :goto_23
    invoke-static {}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->values()[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    :try_start_2c
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    :try_start_38
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :goto_5e
    :try_start_5e
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v0

    :goto_6b
    :try_start_6b
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$datamatrix$encoder$MinimalEncoder$Mode:[I

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception v0

    :goto_78
    return-void
.end method
