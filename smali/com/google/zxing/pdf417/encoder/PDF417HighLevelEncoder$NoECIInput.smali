.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoECIInput"
.end annotation


# instance fields
.field input:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "input"    # Ljava/lang/String;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    .line 682
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;

    .line 676
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 689
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getECIValue(I)I
    .registers 3
    .param p1, "index"    # I

    .line 697
    const/4 v0, -0x1

    return v0
.end method

.method public haveNCharacters(II)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "n"    # I

    .line 701
    add-int v0, p1, p2

    iget-object v1, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isECI(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .registers 2

    .line 685
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 705
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    return-object v0
.end method
