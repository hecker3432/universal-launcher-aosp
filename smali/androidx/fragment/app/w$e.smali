.class final Landroidx/fragment/app/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/w;->m(Landroidx/fragment/app/D;Landroid/view/ViewGroup;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Z

.field final synthetic d:Lr/a;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroidx/fragment/app/D;

.field final synthetic g:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLr/a;Landroid/view/View;Landroidx/fragment/app/D;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/w$e;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/w$e;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/w$e;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/w$e;->d:Lr/a;

    iput-object p5, p0, Landroidx/fragment/app/w$e;->e:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/w$e;->f:Landroidx/fragment/app/D;

    iput-object p7, p0, Landroidx/fragment/app/w$e;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/w$e;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/w$e;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Landroidx/fragment/app/w$e;->c:Z

    iget-object v3, p0, Landroidx/fragment/app/w$e;->d:Lr/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/w;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLr/a;Z)V

    iget-object v0, p0, Landroidx/fragment/app/w$e;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/w$e;->f:Landroidx/fragment/app/D;

    iget-object v2, p0, Landroidx/fragment/app/w$e;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/D;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
