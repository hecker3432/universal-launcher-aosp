.class public Landroid/support/wearable/complications/ComplicationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/complications/ComplicationData$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/wearable/complications/ComplicationData;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[[Ljava/lang/String;

.field private static final e:[[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/String;

    const/16 v5, 0xb

    new-array v6, v5, [[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v0

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v1, 0x2

    aput-object v2, v6, v1

    const-string v2, "SHORT_TEXT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v6, v9

    const-string v2, "LONG_TEXT"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x4

    aput-object v2, v6, v10

    const-string v2, "VALUE"

    const-string v11, "MIN_VALUE"

    const-string v12, "MAX_VALUE"

    filled-new-array {v2, v11, v12}, [Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x5

    aput-object v2, v6, v11

    const-string v2, "ICON"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x6

    aput-object v2, v6, v12

    const-string v2, "SMALL_IMAGE"

    const-string v13, "IMAGE_STYLE"

    filled-new-array {v2, v13}, [Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x7

    aput-object v2, v6, v13

    const-string v2, "LARGE_IMAGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x8

    aput-object v2, v6, v14

    const/16 v2, 0x9

    aput-object v3, v6, v2

    const/16 v3, 0xa

    aput-object v4, v6, v3

    sput-object v6, Landroid/support/wearable/complications/ComplicationData;->d:[[Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    new-array v15, v0, [Ljava/lang/String;

    new-array v5, v5, [[Ljava/lang/String;

    aput-object v7, v5, v0

    aput-object v4, v5, v8

    aput-object v6, v5, v1

    const-string v16, "SHORT_TITLE"

    const-string v17, "ICON"

    const-string v18, "ICON_BURN_IN_PROTECTION"

    const-string v19, "TAP_ACTION"

    const-string v20, "CONTENT_DESCRIPTION"

    const-string v21, "IMAGE_CONTENT_DESCRIPTION"

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const-string v16, "LONG_TITLE"

    const-string v17, "ICON"

    const-string v18, "ICON_BURN_IN_PROTECTION"

    const-string v19, "SMALL_IMAGE"

    const-string v20, "SMALL_IMAGE_BURN_IN_PROTECTION"

    const-string v21, "IMAGE_STYLE"

    const-string v22, "TAP_ACTION"

    const-string v23, "CONTENT_DESCRIPTION"

    const-string v24, "IMAGE_CONTENT_DESCRIPTION"

    filled-new-array/range {v16 .. v24}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    const-string v16, "SHORT_TEXT"

    const-string v17, "SHORT_TITLE"

    const-string v18, "ICON"

    const-string v19, "ICON_BURN_IN_PROTECTION"

    const-string v20, "TAP_ACTION"

    const-string v21, "CONTENT_DESCRIPTION"

    const-string v22, "IMAGE_CONTENT_DESCRIPTION"

    filled-new-array/range {v16 .. v22}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    const-string v0, "TAP_ACTION"

    const-string v1, "ICON_BURN_IN_PROTECTION"

    const-string v4, "CONTENT_DESCRIPTION"

    const-string v6, "IMAGE_CONTENT_DESCRIPTION"

    filled-new-array {v0, v1, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v12

    const-string v1, "SMALL_IMAGE_BURN_IN_PROTECTION"

    filled-new-array {v0, v1, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    filled-new-array {v0, v4, v6}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v14

    const-string v6, "SHORT_TEXT"

    const-string v7, "SHORT_TITLE"

    const-string v8, "ICON"

    const-string v9, "ICON_BURN_IN_PROTECTION"

    const-string v10, "CONTENT_DESCRIPTION"

    const-string v11, "IMAGE_CONTENT_DESCRIPTION"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    aput-object v15, v5, v3

    sput-object v5, Landroid/support/wearable/complications/ComplicationData;->e:[[Ljava/lang/String;

    new-instance v0, Landroid/support/wearable/complications/ComplicationData$a;

    invoke-direct {v0}, Landroid/support/wearable/complications/ComplicationData$a;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/ComplicationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/wearable/complications/ComplicationData$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/ComplicationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/wearable/complications/ComplicationData$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationData$b;->a(Landroid/support/wearable/complications/ComplicationData$b;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationData$b;->b(Landroid/support/wearable/complications/ComplicationData$b;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/complications/ComplicationData$b;Landroid/support/wearable/complications/ComplicationData$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/ComplicationData;-><init>(Landroid/support/wearable/complications/ComplicationData$b;)V

    return-void
.end method

.method static synthetic a()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/wearable/complications/ComplicationData;->d:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;I)V

    return-void
.end method

.method private static e(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationData;->y(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/support/wearable/complications/ComplicationData;->x(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Field "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be recognized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static f(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationData;->y(I)Z

    move-result v0

    const-string v1, "ComplicationData"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be recognized"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/wearable/complications/ComplicationData;->x(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Field "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private p(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ComplicationData"

    const-string v1, "Could not unparcel ComplicationData. Provider apps must exclude wearable support complication classes from proguard."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static x(Ljava/lang/String;I)Z
    .locals 6

    sget-object v0, Landroid/support/wearable/complications/ComplicationData;->d:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/wearable/complications/ComplicationData;->e:[[Ljava/lang/String;

    aget-object p1, v0, p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private static y(I)Z
    .locals 2

    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    sget-object v1, Landroid/support/wearable/complications/ComplicationData;->d:[[Ljava/lang/String;

    array-length v1, v1

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "ICON_BURN_IN_PROTECTION"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lb/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SMALL_IMAGE_BURN_IN_PROTECTION"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lb/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "ICON"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lb/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "IMAGE_STYLE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "LARGE_IMAGE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lb/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "LONG_TEXT"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public m()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "LONG_TITLE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public n()F
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "MAX_VALUE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public o()F
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "MIN_VALUE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public q()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SHORT_TEXT"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public r()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SHORT_TITLE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public s()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SMALL_IMAGE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lb/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public t()Landroid/app/PendingIntent;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "TAP_ACTION"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    iget-object v1, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ComplicationData{mType="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFields="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    return v0
.end method

.method public v()F
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "VALUE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->f(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public w(J)Z
    .locals 4

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    const-string v1, "START_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    const-string v1, "END_TIME"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
