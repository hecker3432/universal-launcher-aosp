.class public Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;
.super Ljava/lang/Object;
.source "ScaleResetClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final parent:Lcom/ricktop/ClockSkinCoco/j;

.field private final scaleText:Landroid/widget/TextView;

.field private final seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->scaleText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->seekBar:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method static synthetic access$getParent(Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;)Lcom/ricktop/ClockSkinCoco/j;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    # Reset scale to 0 (seekbar progress 50, which maps to 50-50=0)
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    # Update the internal scale value to 0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/j;->d(Lcom/ricktop/ClockSkinCoco/j;I)I

    # Update the text display
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->scaleText:Landroid/widget/TextView;

    const-string v0, "Scale: 0%"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Save to preferences
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "0"

    const-string v1, "sp_clock_skin_size_offset"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # Reload the watch face
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener$ReloadRunnable;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener$ReloadRunnable;-><init>(Lcom/ricktop/ClockSkinCoco/ScaleResetClickListener;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method
