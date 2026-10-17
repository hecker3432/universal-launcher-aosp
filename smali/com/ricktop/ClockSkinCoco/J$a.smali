.class Lcom/ricktop/ClockSkinCoco/J$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/J;->K1(Lcom/ricktop/ClockSkinCoco/M;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/J;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/J;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/J;->C1(Lcom/ricktop/ClockSkinCoco/J;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/J;->D1(Lcom/ricktop/ClockSkinCoco/J;)Lcom/ricktop/ClockSkinCoco/L;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/J;->C1(Lcom/ricktop/ClockSkinCoco/J;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->I()Lcom/ricktop/ClockSkinCoco/I;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->I()Lcom/ricktop/ClockSkinCoco/I;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/J$a;->b:Lcom/ricktop/ClockSkinCoco/J;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/J;->E1(Lcom/ricktop/ClockSkinCoco/J;)Lcom/ricktop/ClockSkinCoco/J;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/I;->F1(Lcom/ricktop/ClockSkinCoco/J;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
