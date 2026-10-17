.class Lcom/ricktop/ClockSkinCoco/j$b;
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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$b;->c:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$b;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$b;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->getDark(Lcom/ricktop/ClockSkinCoco/j;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/j;->putDark(Lcom/ricktop/ClockSkinCoco/j;Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$b;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->getDark(Lcom/ricktop/ClockSkinCoco/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f080130

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f08012f

    :goto_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V



    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_dim_mode_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z




    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$b;->c:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v2

    new-instance v1, Lcom/ricktop/ClockSkinCoco/j$b$a;

    invoke-direct {v1, p0, v0}, Lcom/ricktop/ClockSkinCoco/j$b$a;-><init>(Lcom/ricktop/ClockSkinCoco/j$b;Lcom/ricktop/ClockSkinCoco/j;)V

    invoke-virtual {v2, v1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    




    return-void


.end method
