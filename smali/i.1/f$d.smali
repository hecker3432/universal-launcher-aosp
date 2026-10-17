.class Li/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/n0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/f;->Q()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/f;


# direct methods
.method constructor <init>(Li/f;)V
    .locals 0

    iput-object p1, p0, Li/f$d;->a:Li/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Li/f$d;->a:Li/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Li/f;->L0(LI/o0;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
