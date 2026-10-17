.class final Landroidx/fragment/app/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/w;->o(Landroidx/fragment/app/m;ILandroidx/fragment/app/w$h;Landroid/view/View;Lr/a;Landroidx/fragment/app/w$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/w$g;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:LE/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/w$g;Landroidx/fragment/app/Fragment;LE/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/w$a;->a:Landroidx/fragment/app/w$g;

    iput-object p2, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/w$a;->c:LE/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/w$a;->a:Landroidx/fragment/app/w$g;

    iget-object v1, p0, Landroidx/fragment/app/w$a;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/w$a;->c:LE/a;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/w$g;->b(Landroidx/fragment/app/Fragment;LE/a;)V

    return-void
.end method
