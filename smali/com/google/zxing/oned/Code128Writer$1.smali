.class synthetic Lcom/google/zxing/oned/Code128Writer$1;
.super Ljava/lang/Object;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/Code128Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

.field static final synthetic $SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 476
    invoke-static {}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->values()[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v2}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

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
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Charset:[I

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    .line 395
    :goto_30
    invoke-static {}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->values()[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    :try_start_39
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v4}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v0

    :goto_45
    :try_start_45
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v0

    :goto_5d
    :try_start_5d
    sget-object v0, Lcom/google/zxing/oned/Code128Writer$1;->$SwitchMap$com$google$zxing$oned$Code128Writer$MinimalEncoder$Latch:[I

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v1}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_6a

    :catch_69
    move-exception v0

    :goto_6a
    return-void
.end method
