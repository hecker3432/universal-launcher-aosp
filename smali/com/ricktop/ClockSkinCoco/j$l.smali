.class Lcom/ricktop/ClockSkinCoco/j$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j;->k(ILjava/lang/String;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$l;->c:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$l;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/j$l;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$l;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->getFullScreen(Lcom/ricktop/ClockSkinCoco/j;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$l;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/j;->putFullScreen(Lcom/ricktop/ClockSkinCoco/j;I)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$l;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->getFullScreen(Lcom/ricktop/ClockSkinCoco/j;)I

    move-result p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$l;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->setFullScreen(I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$l;->a:Landroid/widget/TextView;

    const/4 v1, 0x0
    if-ne p1, v1, :check_1

    const-string v2, "fit vertical ↕️"
    goto :end

    :check_1
    const/4 v1, 0x1
    if-ne p1, v1, :check_2

    const-string v2, "stretch 💠"
    goto :end

    :check_2
    const/4 v1, 0x2
    if-ne p1, v1, :check_3

    const-string v2, "fit horizontal ↔️"
    goto :end

    :check_3
    const/4 v1, 0x3
    if-ne p1, v1, :check_4

    const-string v2, "fit vertical ↕️ (compatibility)"
    goto :end

    :check_4
    const/4 v1, 0x4
    if-ne p1, v1, :default

    const-string v2, "fit horizontal ↔️ (compatibility)"
    goto :end

    :default
    const-string v2, "fit vertical ↕️"

    :end

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_clock_skin_fullscreen"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
