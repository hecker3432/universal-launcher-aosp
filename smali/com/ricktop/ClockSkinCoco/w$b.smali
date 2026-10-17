.class Lcom/ricktop/ClockSkinCoco/w$b;
.super Landroidx/fragment/app/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final h:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/m;I)V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/w$b;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/w$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public s(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/w$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
