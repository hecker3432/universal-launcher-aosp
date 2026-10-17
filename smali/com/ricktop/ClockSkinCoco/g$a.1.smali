.class public final Lcom/ricktop/ClockSkinCoco/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:[C

.field private b:[I

.field private c:[I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->a:[C

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g$a;->c:[I

    const v0, 0x7f08005f

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/g$a;->d:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/g$a;->e:I

    return-void

    :array_0
    .array-data 2
        0x78s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
        0x34s
        0x35s
        0x36s
        0x2ds
        0x2es
        0x31s
        0x32s
        0x33s
        0x43s
        0x30s
        0x3ds
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1f
        0x74
        0xd3
        0x133
        0x178
        0x2b
        0x74
        0xd3
        0x133
        0x16d
        0x3b
        0x74
        0xd3
        0x133
        0x74
        0xd3
        0x133
    .end array-data

    :array_2
    .array-data 4
        0xce
        0xce
        0xce
        0xce
        0xce
        0x100
        0x100
        0x100
        0x100
        0x100
        0x130
        0x130
        0x130
        0x130
        0x162
        0x162
        0x162
    .end array-data
.end method


# virtual methods
.method public final a(FF)C
    .locals 7

    const/16 v0, 0xc8

    int-to-float v0, v0

    sub-float/2addr v0, p1

    mul-float v0, v0, v0

    const/16 v1, 0x26

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    const v1, 0x47c35000    # 100000.0f

    const/16 v2, 0x6e

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    const/16 v1, 0x73

    goto :goto_0

    :cond_0
    const v0, 0x47c35000    # 100000.0f

    const/16 v1, 0x6e

    :goto_0
    const/16 v3, 0x8a

    int-to-float v3, v3

    sub-float/2addr v3, p2

    mul-float v3, v3, v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->b:[I

    array-length v1, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/g$a;->b:[I

    aget v4, v4, v3

    int-to-float v5, v4

    sub-float/2addr v5, p1

    int-to-float v4, v4

    sub-float/2addr v4, p1

    mul-float v5, v5, v4

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/g$a;->c:[I

    aget v4, v4, v3

    int-to-float v6, v4

    sub-float/2addr v6, p2

    int-to-float v4, v4

    sub-float/2addr v4, p2

    mul-float v6, v6, v4

    add-float/2addr v5, v6

    cmpg-float v4, v5, v0

    if-gez v4, :cond_2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g$a;->a:[C

    aget-char v0, v0, v3

    move v2, v0

    move v0, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/g$a;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/g$a;->e:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->d:I

    return-void
.end method

.method public final e([C)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->a:[C

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->e:I

    return-void
.end method

.method public final g([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->b:[I

    return-void
.end method

.method public final h([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/g$a;->c:[I

    return-void
.end method
