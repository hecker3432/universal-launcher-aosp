.class public Landroid/support/wearable/complications/ComplicationText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
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
            "Landroid/support/wearable/complications/ComplicationText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/support/wearable/complications/TimeDependentText;

.field private final d:[Ljava/lang/CharSequence;

.field private e:J

.field private f:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/complications/ComplicationText$a;

    invoke-direct {v0}, Landroid/support/wearable/complications/ComplicationText$a;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/ComplicationText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "^2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "^3"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "^4"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "^5"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "^6"

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "^7"

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "^8"

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "^9"

    const/16 v3, 0x8

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->d:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "surrounding_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->b:Ljava/lang/CharSequence;

    const-string v0, "difference_style"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "difference_period_start"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "difference_period_end"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/support/wearable/complications/TimeDifferenceText;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "show_now_text"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v0, "minimum_unit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationText;->e(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v12

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Landroid/support/wearable/complications/TimeDifferenceText;-><init>(JJIZLjava/util/concurrent/TimeUnit;)V

    iput-object v4, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    goto :goto_0

    :cond_0
    const-string v0, "format_format_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "format_style"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "format_time_zone"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    :cond_1
    new-instance v3, Landroid/support/wearable/complications/TimeFormatText;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v3, v0, p1, v2}, Landroid/support/wearable/complications/TimeFormatText;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    iput-object v3, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    :goto_0
    invoke-direct {p0}, Landroid/support/wearable/complications/ComplicationText;->a()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/wearable/complications/ComplicationText$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/ComplicationText;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/support/wearable/complications/TimeDependentText;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "^2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "^3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "^4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "^5"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "^6"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "^7"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "^8"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "^9"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->d:[Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/support/wearable/complications/ComplicationText;->b:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    invoke-direct {p0}, Landroid/support/wearable/complications/ComplicationText;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One of mSurroundingText and mTimeDependentText must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/CharSequence;)Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    new-instance v0, Landroid/support/wearable/complications/ComplicationText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/wearable/complications/ComplicationText;-><init>(Ljava/lang/CharSequence;Landroid/support/wearable/complications/TimeDependentText;)V

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    if-nez v0, :cond_0

    iget-object p1, p0, Landroid/support/wearable/complications/ComplicationText;->b:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    iget-object v1, p0, Landroid/support/wearable/complications/ComplicationText;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/support/wearable/complications/ComplicationText;->e:J

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/support/wearable/complications/TimeDependentText;->d(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroid/support/wearable/complications/ComplicationText;->f:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/wearable/complications/TimeDependentText;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    iput-wide p2, p0, Landroid/support/wearable/complications/ComplicationText;->e:J

    iput-object p1, p0, Landroid/support/wearable/complications/ComplicationText;->f:Ljava/lang/CharSequence;

    :goto_0
    iget-object p2, p0, Landroid/support/wearable/complications/ComplicationText;->b:Ljava/lang/CharSequence;

    if-nez p2, :cond_2

    return-object p1

    :cond_2
    iget-object p3, p0, Landroid/support/wearable/complications/ComplicationText;->d:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public d(JJ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/wearable/complications/TimeDependentText;->d(JJ)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "surrounding_string"

    iget-object v1, p0, Landroid/support/wearable/complications/ComplicationText;->b:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationText;->c:Landroid/support/wearable/complications/TimeDependentText;

    instance-of v1, v0, Landroid/support/wearable/complications/TimeDifferenceText;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/wearable/complications/TimeDifferenceText;

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeDifferenceText;->q()J

    move-result-wide v1

    const-string v3, "difference_period_start"

    invoke-virtual {p2, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "difference_period_end"

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeDifferenceText;->p()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "difference_style"

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeDifferenceText;->r()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "show_now_text"

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeDifferenceText;->B()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeDifferenceText;->n()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeDifferenceText;->n()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "minimum_unit"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/support/wearable/complications/TimeFormatText;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/wearable/complications/TimeFormatText;

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeFormatText;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_format_string"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format_style"

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeFormatText;->g()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/support/wearable/complications/TimeFormatText;->h()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "format_time_zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
