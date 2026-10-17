.class Lcom/ricktop/ClockSkinCoco/H$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/H$j;
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
.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/ricktop/ClockSkinCoco/H$j;
    .locals 1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/H$j;

    invoke-direct {v0, p1, p2}, Lcom/ricktop/ClockSkinCoco/H$j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Lcom/ricktop/ClockSkinCoco/H$j;
    .locals 0

    new-array p1, p1, [Lcom/ricktop/ClockSkinCoco/H$j;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/H$j$a;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/ricktop/ClockSkinCoco/H$j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ricktop/ClockSkinCoco/H$j$a;->b(I)[Lcom/ricktop/ClockSkinCoco/H$j;

    move-result-object p1

    return-object p1
.end method
