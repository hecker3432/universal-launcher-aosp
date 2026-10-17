.class Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;
    .locals 1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    invoke-direct {v0, p1, p2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public c(I)[Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;
    .locals 0

    new-array p1, p1, [Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d$a;->a(Landroid/os/Parcel;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d$a;->c(I)[Lcom/ricktop/ClockSkinCoco/DirectionalViewPager$d;

    move-result-object p1

    return-object p1
.end method
