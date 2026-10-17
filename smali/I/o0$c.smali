.class LI/o0$c;
.super LI/o0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, LI/o0$d;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, LI/o0$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(LI/o0;)V
    .locals 1

    invoke-direct {p0}, LI/o0$d;-><init>()V

    invoke-virtual {p1}, LI/o0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, LI/o0$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, LI/t0;->a(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object v0

    return-object v0
.end method

.method b(LB/c;)V
    .locals 1

    iget-object v0, p0, LI/o0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LI/s0;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method c(LB/c;)V
    .locals 1

    iget-object v0, p0, LI/o0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LI/r0;->a(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
