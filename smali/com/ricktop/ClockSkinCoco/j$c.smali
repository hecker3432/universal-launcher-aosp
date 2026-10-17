.class Lcom/ricktop/ClockSkinCoco/j$c;
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
.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$c;->c:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$c;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$c;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->getStep(Lcom/ricktop/ClockSkinCoco/j;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_check_done

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/SettingsFragment;->isBetterHealthInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_check_done

    const-string p1, "Better Health app is not installed. Please install it first."

    const/4 v0, 0x1

    invoke-static {v2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_check_done
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$c;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/j;->putStep(Lcom/ricktop/ClockSkinCoco/j;Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$c;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->getStep(Lcom/ricktop/ClockSkinCoco/j;)Z

    move-result p1



    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stepEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V



    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f080137

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f080136

    :goto_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
