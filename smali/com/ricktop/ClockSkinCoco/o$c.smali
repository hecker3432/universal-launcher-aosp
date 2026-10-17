.class Lcom/ricktop/ClockSkinCoco/o$c;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final h:Ljava/util/ArrayList;

.field private final i:Landroidx/fragment/app/m;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/m;I)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$c;->i:Landroidx/fragment/app/m;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic v(Lcom/ricktop/ClockSkinCoco/o$c;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ricktop/ClockSkinCoco/o$c;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method private w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    # Find the index of the old fragment
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    # Remove the old fragment
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    # Insert the new fragment at the same position
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :try_fragment_transaction

    :cond_0
    # If no old fragment, just add to the end
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_fragment_transaction
    :try_start_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o$c;->i:Landroidx/fragment/app/m;

    invoke-virtual {p1}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/v;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/v;->p(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/v;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/v;->i()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Landroidx/viewpager/widget/a;->i()V

    return-void
.end method

.method public s(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o$c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
