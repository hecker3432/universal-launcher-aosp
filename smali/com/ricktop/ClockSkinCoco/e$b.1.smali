.class Lcom/ricktop/ClockSkinCoco/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/e;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/e$b;->a:Lcom/ricktop/ClockSkinCoco/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/e$b;->a:Lcom/ricktop/ClockSkinCoco/e;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/e;->C1(Lcom/ricktop/ClockSkinCoco/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/a;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/e$b;->a:Lcom/ricktop/ClockSkinCoco/e;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/ricktop/ClockSkinCoco/e$b;->a:Lcom/ricktop/ClockSkinCoco/e;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/ricktop/ClockSkinCoco/a;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {p2, p1}, Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/e$b;->a:Lcom/ricktop/ClockSkinCoco/e;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/e;->D1(Lcom/ricktop/ClockSkinCoco/e;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->invalidateViews()V

    const/4 p1, 0x1

    return p1
.end method
