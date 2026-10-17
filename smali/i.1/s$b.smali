.class Li/s$b;
.super LI/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/s;


# direct methods
.method constructor <init>(Li/s;)V
    .locals 0

    iput-object p1, p0, Li/s$b;->a:Li/s;

    invoke-direct {p0}, LI/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/s$b;->a:Li/s;

    const/4 v0, 0x0

    iput-object v0, p1, Li/s;->x:Ln/h;

    iget-object p1, p1, Li/s;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
