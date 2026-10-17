.class public Landroid/support/wearable/complications/rendering/ComplicationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field public static final BORDER_STYLE_DASHED:I = 0x2

.field public static final BORDER_STYLE_NONE:I = 0x0

.field public static final BORDER_STYLE_SOLID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/wearable/complications/rendering/ComplicationDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ACTIVE_STYLE_BUILDER:Ljava/lang/String; = "active_style_builder"

.field private static final FIELD_AMBIENT_STYLE_BUILDER:Ljava/lang/String; = "ambient_style_builder"

.field private static final FIELD_BOUNDS:Ljava/lang/String; = "bounds"

.field private static final FIELD_HIGHLIGHT_DURATION:Ljava/lang/String; = "highlight_duration"

.field private static final FIELD_NO_DATA_TEXT:Ljava/lang/String; = "no_data_text"

.field private static final FIELD_RANGED_VALUE_PROGRESS_HIDDEN:Ljava/lang/String; = "ranged_value_progress_hidden"

.field private static final TAG:Ljava/lang/String; = "ComplicationDrawable"


# instance fields
.field private final mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

.field private mAlreadyStyled:Z

.field private final mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

.field private mBurnInProtection:Z

.field private mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeMillis:J

.field private mHighlightDuration:J

.field private mInAmbientMode:Z

.field private mIsHighlighted:Z

.field private mIsInflatedFromXml:Z

.field private mIsStyleUpToDate:Z

.field private mLowBitAmbient:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mNoDataText:Ljava/lang/CharSequence;

.field private mRangedValueProgressHidden:Z

.field private final mRendererInvalidateListener:Landroid/support/wearable/complications/rendering/c$f;

.field private final mUnhighlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$a;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$a;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$c;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$c;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Landroid/support/wearable/complications/rendering/c$f;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$c;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$c;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Landroid/support/wearable/complications/rendering/c$f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "active_style_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const-string v0, "ambient_style_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const-string v0, "no_data_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    const-string v0, "highlight_duration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    const-string v0, "ranged_value_progress_hidden"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    const-string v0, "bounds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/wearable/complications/rendering/ComplicationDrawable$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$b;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationDrawable$c;

    invoke-direct {v0, p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable$c;-><init>(Landroid/support/wearable/complications/rendering/ComplicationDrawable;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Landroid/support/wearable/complications/rendering/c$f;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iget-object v1, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iget-object v1, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-direct {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iget-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    iget-wide v0, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    iput-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    iget-boolean v0, p1, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    return-void
.end method

.method private assertInitialized()V
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ComplicationDrawable does not have a context. Use setContext(Context) to set it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :goto_0
    return-object p1
.end method

.method private inflateAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, La/h;->x0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, La/h;->J0:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setRangedValueProgressHidden(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object v0, La/h;->x0:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object p1

    sget v0, La/h;->y0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, La/a;->a:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_0
    sget v0, La/h;->z0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e(Landroid/graphics/drawable/Drawable;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_1
    sget v0, La/h;->M0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, La/a;->g:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_2
    sget v0, La/h;->P0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, La/a;->h:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_3
    sget v0, La/h;->O0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_4
    sget v0, La/h;->R0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->w(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_5
    sget v0, La/h;->N0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, La/b;->h:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_6
    sget v0, La/h;->Q0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, La/b;->i:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->v(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_7
    sget v0, La/h;->H0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, La/a;->d:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_8
    sget v0, La/h;->A0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, La/a;->b:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_9
    sget v0, La/h;->D0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, La/b;->e:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_a
    sget v0, La/h;->E0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, La/d;->a:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_b
    sget v0, La/h;->C0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, La/b;->d:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_c
    sget v0, La/h;->B0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    sget v1, La/b;->c:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_d
    sget v0, La/h;->F0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, La/b;->f:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_e
    sget v0, La/h;->K0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    sget v1, La/b;->g:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_f
    sget v0, La/h;->I0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    sget v1, La/a;->e:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_10
    sget v0, La/h;->L0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v1, La/a;->f:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_11
    sget v0, La/h;->G0:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    sget v1, La/a;->c:I

    invoke-static {p2, v1, v2}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    :cond_12
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V
    .locals 3

    sget v0, La/a;->a:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->g:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->h:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/f;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/f;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->w(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->i:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->v(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->d:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->b:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->f:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/d;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->d:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/b;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->e:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->f:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    sget v0, La/a;->c:I

    invoke-static {p1, v0, v1}, Landroid/support/wearable/complications/rendering/a;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    return-void
.end method

.method private updateStyleIfRequired()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/complications/rendering/c;->H(Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/support/wearable/complications/rendering/ComplicationStyle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->assertInitialized()V

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->updateStyleIfRequired()V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    iget-wide v2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mCurrentTimeMillis:J

    iget-boolean v4, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mInAmbientMode:Z

    iget-boolean v5, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mLowBitAmbient:Z

    iget-boolean v6, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mBurnInProtection:Z

    iget-boolean v7, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsHighlighted:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/wearable/complications/rendering/c;->k(Landroid/graphics/Canvas;JZZZZ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;J)V
    .locals 0

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->assertInitialized()V

    invoke-virtual {p0, p2, p3}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setCurrentTimeMillis(J)V

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getActiveStyle()Landroid/support/wearable/complications/rendering/ComplicationStyle;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object v0

    return-object v0
.end method

.method getAmbientStyle()Landroid/support/wearable/complications/rendering/ComplicationStyle;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object v0

    return-object v0
.end method

.method getComplicationRenderer()Landroid/support/wearable/complications/rendering/c;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    return-object v0
.end method

.method public getHighlightDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    return-wide v0
.end method

.method getNoDataText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsInflatedFromXml:Z

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p4

    invoke-direct {p0, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-static {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-static {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-direct {p0, p3, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, p3, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p4, :cond_3

    :cond_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ambient"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p3, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->inflateStyle(ZLandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown element: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ComplicationDrawable "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplicationDrawable"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public isHighlighted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsHighlighted:Z

    return v0
.end method

.method public isRangedValueProgressHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/c;->B(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public onTap(II)Z
    .locals 4

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/wearable/complications/rendering/c;->w()Landroid/support/wearable/complications/ComplicationData;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->t()Landroid/app/PendingIntent;

    move-result-object v2

    const/16 v3, 0x9

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result v2

    if-ne v2, v3, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->u()I

    move-result p1

    if-ne p1, v3, :cond_3

    return v1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->t()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getHighlightDuration()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-lez v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setIsHighlighted(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mUnhighlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getHighlightDuration()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return v2

    :catch_0
    :cond_5
    :goto_0
    return v1
.end method

.method public onTap(IIJ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->onTap(II)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackgroundColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBackgroundColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBackgroundDrawableActive(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e(Landroid/graphics/drawable/Drawable;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBackgroundDrawableAmbient(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e(Landroid/graphics/drawable/Drawable;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashGapActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashGapAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashWidthActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderDashWidthAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderRadiusActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderRadiusAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderStyleActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderStyleAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderWidthActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBorderWidthAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setBurnInProtection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mBurnInProtection:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setComplicationData(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->assertInitialized()V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/c;->C(Landroid/support/wearable/complications/ComplicationData;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsInflatedFromXml:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setStyleToDefaultValues(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;Landroid/content/res/Resources;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAlreadyStyled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/d;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    :cond_2
    new-instance v0, Landroid/support/wearable/complications/rendering/c;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v2}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {v3}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->a()Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/wearable/complications/rendering/c;-><init>(Landroid/content/Context;Landroid/support/wearable/complications/rendering/ComplicationStyle;Landroid/support/wearable/complications/rendering/ComplicationStyle;)V

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRendererInvalidateListener:Landroid/support/wearable/complications/rendering/c$f;

    invoke-virtual {v0, v1}, Landroid/support/wearable/complications/rendering/c;->E(Landroid/support/wearable/complications/rendering/c$f;)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    sget v0, La/f;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->setNoDataText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/c;->D(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    iget-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/c;->F(Z)V

    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/c;->B(Landroid/graphics/Rect;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \"context\" should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mCurrentTimeMillis:J

    return-void
.end method

.method public setHighlightColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setHighlightColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setHighlightDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Highlight duration should be non-negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setIconColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setImageColorFilterActive(Landroid/graphics/ColorFilter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l(Landroid/graphics/ColorFilter;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setImageColorFilterAmbient(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l(Landroid/graphics/ColorFilter;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setInAmbientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mInAmbientMode:Z

    return-void
.end method

.method public setIsHighlighted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsHighlighted:Z

    return-void
.end method

.method public setLowBitAmbient(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mLowBitAmbient:Z

    return-void
.end method

.method public setNoDataText(Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/wearable/complications/rendering/c;->D(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setRangedValuePrimaryColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValuePrimaryColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueProgressHidden(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mComplicationRenderer:Landroid/support/wearable/complications/rendering/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/c;->F(Z)V

    :cond_0
    return-void
.end method

.method public setRangedValueRingWidthActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueRingWidthAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueSecondaryColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setRangedValueSecondaryColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextSizeActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextSizeAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextTypefaceActive(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTextTypefaceAmbient(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleColorActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleColorAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleSizeActive(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->v(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleSizeAmbient(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->v(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleTypefaceActive(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->w(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    iput-boolean v0, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public setTitleTypefaceAmbient(Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->getComplicationStyleBuilder(Z)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->w(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mIsStyleUpToDate:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "active_style_builder"

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mActiveStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "ambient_style_builder"

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mAmbientStyleBuilder:Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "no_data_text"

    iget-object v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mNoDataText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "highlight_duration"

    iget-wide v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mHighlightDuration:J

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ranged_value_progress_hidden"

    iget-boolean v1, p0, Landroid/support/wearable/complications/rendering/ComplicationDrawable;->mRangedValueProgressHidden:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "bounds"

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
