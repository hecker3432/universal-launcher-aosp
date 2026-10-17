.class abstract Landroid/support/wearable/complications/rendering/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [[I

    const/16 v1, 0xa9

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x203c

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x2049

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x2122

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x2139

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x2194

    const/16 v2, 0x21aa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x231a

    const/16 v2, 0x2328

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x23cf

    const/16 v2, 0x23fa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x24c2

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x25aa

    const/16 v2, 0x27bf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x2934

    const/16 v2, 0x2935

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x2b05

    const/16 v2, 0x2b55

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x3030

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x303d

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x3297

    const/16 v2, 0x3299

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const v1, 0x1f004

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const v1, 0x1f0cf

    filled-new-array {v1, v1}, [I

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const v1, 0x1f170

    const v2, 0x1f251

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const v1, 0x1f300

    const v2, 0x1f6f6

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, 0x1f910

    const v2, 0x1f9c0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/wearable/complications/rendering/d;->a:[[I

    return-void
.end method

.method static a(I)Z
    .locals 6

    sget-object v0, Landroid/support/wearable/complications/rendering/d;->a:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    aget v5, v4, v2

    if-lt p0, v5, :cond_0

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gt p0, v4, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static b(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Landroid/support/wearable/complications/rendering/d;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/support/wearable/complications/rendering/d;->a(I)Z

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
