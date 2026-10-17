.class Landroidx/appcompat/widget/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroidx/appcompat/widget/d$e;

.field final synthetic b:Landroidx/appcompat/widget/d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/d;Landroidx/appcompat/widget/d$e;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/d$c;->b:Landroidx/appcompat/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/d$c;->a:Landroidx/appcompat/widget/d$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/d$c;->b:Landroidx/appcompat/widget/d;

    invoke-static {v0}, Landroidx/appcompat/widget/d;->v(Landroidx/appcompat/widget/d;)Landroidx/appcompat/view/menu/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d$c;->b:Landroidx/appcompat/widget/d;

    invoke-static {v0}, Landroidx/appcompat/widget/d;->w(Landroidx/appcompat/widget/d;)Landroidx/appcompat/view/menu/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->d()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/d$c;->b:Landroidx/appcompat/widget/d;

    invoke-static {v0}, Landroidx/appcompat/widget/d;->x(Landroidx/appcompat/widget/d;)Landroidx/appcompat/view/menu/k;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/d$c;->a:Landroidx/appcompat/widget/d$e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/d$c;->b:Landroidx/appcompat/widget/d;

    iget-object v1, p0, Landroidx/appcompat/widget/d$c;->a:Landroidx/appcompat/widget/d$e;

    iput-object v1, v0, Landroidx/appcompat/widget/d;->z:Landroidx/appcompat/widget/d$e;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/d$c;->b:Landroidx/appcompat/widget/d;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/d;->B:Landroidx/appcompat/widget/d$c;

    return-void
.end method
