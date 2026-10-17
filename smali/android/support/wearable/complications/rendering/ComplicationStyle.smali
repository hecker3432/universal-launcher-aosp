.class Landroid/support/wearable/complications/rendering/ComplicationStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/complications/rendering/ComplicationStyle$Builder;
    }
.end annotation


# static fields
.field private static final u:Landroid/graphics/Typeface;


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Typeface;

.field private final f:Landroid/graphics/Typeface;

.field private final g:I

.field private final h:I

.field private final i:Landroid/graphics/ColorFilter;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->u:Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/Typeface;Landroid/graphics/Typeface;IILandroid/graphics/ColorFilter;IIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a:I

    move-object v1, p2

    iput-object v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->b:Landroid/graphics/drawable/Drawable;

    move v1, p3

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->c:I

    move v1, p4

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->d:I

    move-object v1, p5

    iput-object v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->e:Landroid/graphics/Typeface;

    move-object v1, p6

    iput-object v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->f:Landroid/graphics/Typeface;

    move v1, p7

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->g:I

    move v1, p8

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->h:I

    move-object v1, p9

    iput-object v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->i:Landroid/graphics/ColorFilter;

    move v1, p10

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->j:I

    move v1, p11

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->k:I

    move v1, p12

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->l:I

    move/from16 v1, p15

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->m:I

    move/from16 v1, p16

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->n:I

    move v1, p13

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->o:I

    move/from16 v1, p14

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->p:I

    move/from16 v1, p17

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->q:I

    move/from16 v1, p18

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->r:I

    move/from16 v1, p19

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->s:I

    move/from16 v1, p20

    iput v1, v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->t:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/Typeface;Landroid/graphics/Typeface;IILandroid/graphics/ColorFilter;IIIIIIIIIIILandroid/support/wearable/complications/rendering/ComplicationStyle$a;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroid/support/wearable/complications/rendering/ComplicationStyle;-><init>(ILandroid/graphics/drawable/Drawable;IILandroid/graphics/Typeface;Landroid/graphics/Typeface;IILandroid/graphics/ColorFilter;IIIIIIIIIII)V

    return-void
.end method

.method static synthetic a()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->u:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->a:I

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->n:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->m:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->o:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->l:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->p:I

    return v0
.end method

.method public j()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->i:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->t:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->j:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->r:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->q:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->s:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->c:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->g:I

    return v0
.end method

.method public r()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->e:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->d:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->h:I

    return v0
.end method

.method public u()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/complications/rendering/ComplicationStyle;->f:Landroid/graphics/Typeface;

    return-object v0
.end method
