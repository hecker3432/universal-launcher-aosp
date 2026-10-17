.class public Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/complications/rendering/ComplicationStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Typeface;

.field private g:Landroid/graphics/Typeface;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/ColorFilter;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder$a;

    invoke-direct {v0}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder$a;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const v2, -0x333334

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    const v3, 0x7fffffff

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const v2, -0x333334

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    const v3, 0x7fffffff

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "background_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const-string v0, "title_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    const-string v0, "text_style"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    const-string v0, "title_style"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    const-string v0, "text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    const-string v0, "title_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    const-string v0, "icon_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    const-string v0, "border_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const-string v0, "border_style"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const-string v0, "border_dash_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    const-string v0, "border_dash_gap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    const-string v0, "border_radius"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    const-string v0, "border_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const-string v0, "ranged_value_ring_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    const-string v0, "ranged_value_primary_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    const-string v0, "ranged_value_secondary_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    const-string v0, "highlight_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/wearable/complications/rendering/ComplicationStyle$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const v2, -0x333334

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    const v3, 0x7fffffff

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    iget-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    iget-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    iget-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iget-object v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iget v0, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    iget p1, p1, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/support/wearable/complications/rendering/ComplicationStyle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    const v2, -0x333334

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    invoke-static {}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a()Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    const v3, 0x7fffffff

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    iput v4, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    iput v3, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    iput v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    iput v2, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->b()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->p()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->s()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->r()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->u()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->q()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->t()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->j()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->l()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->d()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->h()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->f()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->e()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->g()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->i()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->n()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->m()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->o()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    invoke-virtual {p1}, Landroid/support/wearable/complications/rendering/ComplicationStyle;->k()I

    move-result p1

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    return-void
.end method


# virtual methods
.method public a()Landroid/support/wearable/complications/rendering/ComplicationStyle;
    .locals 25

    move-object/from16 v0, p0

    new-instance v23, Landroid/support/wearable/complications/rendering/ComplicationStyle;

    move-object/from16 v1, v23

    iget v2, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    iget-object v3, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    iget v5, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    iget-object v6, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    iget-object v7, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    iget v8, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    iget v9, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    iget-object v10, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    iget v11, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    iget v12, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    iget v13, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    iget v14, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    iget v15, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    move-object/from16 v24, v1

    iget v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    move/from16 v16, v1

    iget v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    move/from16 v17, v1

    iget v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    move/from16 v18, v1

    iget v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    move/from16 v20, v1

    iget v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    move/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Landroid/support/wearable/complications/rendering/ComplicationStyle;-><init>(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/Typeface;Landroid/graphics/Typeface;IILandroid/graphics/ColorFilter;IIIIIIIIIIILandroid/support/wearable/complications/rendering/ComplicationStyle$a;)V

    return-object v23
.end method

.method public c(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public f(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    return-object p0
.end method

.method public g(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    return-object p0
.end method

.method public h(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    return-object p0
.end method

.method public i(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    return-object p0
.end method

.method public j(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iput v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    :goto_0
    return-object p0
.end method

.method public k(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    return-object p0
.end method

.method public l(Landroid/graphics/ColorFilter;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->j:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public m(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    return-object p0
.end method

.method public n(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    return-object p0
.end method

.method public o(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    return-object p0
.end method

.method public p(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    return-object p0
.end method

.method public q(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    return-object p0
.end method

.method public r(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    return-object p0
.end method

.method public s(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    return-object p0
.end method

.method public t(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public u(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    return-object p0
.end method

.method public v(I)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    return-object p0
.end method

.method public w(Landroid/graphics/Typeface;)Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "background_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "text_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->d:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->e:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    const-string v1, "text_style"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->g:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    const-string v1, "title_style"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "text_size"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->h:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title_size"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->i:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "icon_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->k:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "border_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->l:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "border_style"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->m:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "border_dash_width"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->n:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "border_dash_gap"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->o:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "border_radius"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->p:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "border_width"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->q:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ranged_value_ring_width"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->r:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ranged_value_primary_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->s:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ranged_value_secondary_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->t:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "highlight_color"

    iget v1, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;->u:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
