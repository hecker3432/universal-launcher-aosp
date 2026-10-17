.class Landroidx/fragment/app/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private b:Landroidx/lifecycle/g;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/E;->b:Landroidx/lifecycle/g;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/c$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->b:Landroidx/lifecycle/g;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/g;->i(Landroidx/lifecycle/c$a;)V

    return-void
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->b:Landroidx/lifecycle/g;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/g;

    invoke-direct {v0, p0}, Landroidx/lifecycle/g;-><init>(Landroidx/lifecycle/f;)V

    iput-object v0, p0, Landroidx/fragment/app/E;->b:Landroidx/lifecycle/g;

    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/E;->b:Landroidx/lifecycle/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Landroidx/lifecycle/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/E;->d()V

    iget-object v0, p0, Landroidx/fragment/app/E;->b:Landroidx/lifecycle/g;

    return-object v0
.end method
