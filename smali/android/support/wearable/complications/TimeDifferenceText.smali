.class public Landroid/support/wearable/complications/TimeDifferenceText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/wearable/complications/TimeDependentText;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/wearable/complications/TimeDifferenceText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:J

.field private final c:J

.field private final d:I

.field private final e:Z

.field private final f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/complications/TimeDifferenceText$a;

    invoke-direct {v0}, Landroid/support/wearable/complications/TimeDifferenceText$a;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/TimeDifferenceText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIZLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    iput-wide p3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:J

    iput p5, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:I

    iput-boolean p6, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Z

    iput-object p7, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_1
    iput-object p1, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private A(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->e(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->i(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private C(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->k(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->i(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(IILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    sget v0, La/f;->e:I

    invoke-static {p0, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->g(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget v0, La/e;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result v3

    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result p2

    invoke-static {p2, p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->g(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result v0

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->w(J)I

    move-result v1

    if-lez v0, :cond_5

    if-lez v1, :cond_4

    invoke-static {v0, v1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->f(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v0, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->g(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->w(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->h(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    invoke-static {p1, p2, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static f(IILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    sget v0, La/f;->f:I

    invoke-static {p0, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->g(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->h(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget v0, La/e;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget v0, La/e;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object v3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->w(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->h(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->g(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-static {p1, p2, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, p2, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v7}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result v6

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    invoke-static {p3, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result p3

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->w(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->z(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v3, p2, v1

    aput-object p1, p2, v0

    const-string p1, "%02d:%02d"

    invoke-static {p3, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v4, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->w(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p3, v2, v0

    const-string p2, "%d:%02d"

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->e(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget-object v5, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v6}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object v5, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->w(J)I

    move-result p1

    sget p2, La/e;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p3, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->u(J)I

    move-result p1

    sget p2, La/e;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p3, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-static {p1, p2, v6}, Landroid/support/wearable/complications/TimeDifferenceText;->y(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->l(J)I

    move-result p1

    sget p2, La/e;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p3, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static l(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->x(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static m(JJ)J
    .locals 3

    div-long v0, p0, p2

    rem-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private s(J)J
    .locals 3

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    sub-long/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    sub-long v0, p1, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static t(Ljava/util/concurrent/TimeUnit;)I
    .locals 3

    sget-object v0, Landroid/support/wearable/complications/TimeDifferenceText$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/16 v2, 0x3c

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unit not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x18

    return p0

    :cond_2
    return v2

    :cond_3
    const/16 p0, 0x3e8

    return p0
.end method

.method private static u(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->x(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static v(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    cmp-long v1, v3, p0

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static w(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->x(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static x(JLjava/util/concurrent/TimeUnit;)I
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    div-long/2addr p0, v0

    invoke-static {p2}, Landroid/support/wearable/complications/TimeDifferenceText;->t(Ljava/util/concurrent/TimeUnit;)I

    move-result p2

    int-to-long v0, p2

    rem-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static y(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->m(JJ)J

    move-result-wide p0

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static z(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->x(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method


# virtual methods
.method B()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Z

    return v0
.end method

.method public b(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->s(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Z

    if-eqz v0, :cond_0

    sget p2, La/f;->d:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->i(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->C(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->k(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->A(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->i(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->j(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(JJ)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/wearable/complications/TimeDifferenceText;->o()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->s(J)J

    move-result-wide p1

    invoke-static {p1, p2, v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->m(JJ)J

    move-result-wide p1

    invoke-direct {p0, p3, p4}, Landroid/support/wearable/complications/TimeDifferenceText;->s(J)J

    move-result-wide p3

    invoke-static {p3, p4, v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->m(JJ)J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method n()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public o()J
    .locals 5

    iget v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    iget-object v4, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    if-nez v4, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method p()J
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:J

    return-wide v0
.end method

.method q()J
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    return-wide v0
.end method

.method r()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->f:Ljava/util/concurrent/TimeUnit;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
