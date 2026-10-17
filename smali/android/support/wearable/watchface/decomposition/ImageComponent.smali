.class public Landroid/support/wearable/watchface/decomposition/ImageComponent;
.super Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/watchface/decomposition/ImageComponent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/wearable/watchface/decomposition/ImageComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/watchface/decomposition/ImageComponent$1;

    invoke-direct {v0}, Landroid/support/wearable/watchface/decomposition/ImageComponent$1;-><init>()V

    sput-object v0, Landroid/support/wearable/watchface/decomposition/ImageComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/wearable/watchface/decomposition/ImageComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/watchface/decomposition/ImageComponent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .locals 1

    invoke-super {p0}, Landroid/support/wearable/watchface/decomposition/BaseDrawnComponent;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, Landroid/support/wearable/watchface/decomposition/BaseComponent;->c()Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, Landroid/support/wearable/watchface/decomposition/BaseComponent;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic g()I
    .locals 1

    invoke-super {p0}, Landroid/support/wearable/watchface/decomposition/BaseComponent;->g()I

    move-result v0

    return v0
.end method

.method public h()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v2, "bounds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public i()F
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "degreesPerDay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public j()F
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "degreesPerStep"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public k()Landroid/graphics/drawable/Icon;
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lb/a;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "offsetDegrees"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public m()Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "pivot"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
