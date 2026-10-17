.class public Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;
.super Ljava/lang/Object;
.source "ScaleMinusClickListener.java"

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

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->scaleText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->seekBar:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    # Get current progress from seekbar
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    # Decrease by 1 (minimum 0)
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    # Check if less than 0
    if-gez v0, :set_progress

    const/4 v0, 0x0

    :set_progress
    # Set new progress
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    # Calculate actual scale value (progress - 50)
    add-int/lit8 v1, v0, -0x32

    # Update the internal scale value
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1, v1}, Lcom/ricktop/ClockSkinCoco/j;->d(Lcom/ricktop/ClockSkinCoco/j;I)I

    # Update the text display
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->scaleText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v0, "Scale: "

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const-string v0, "%s%d%%"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Save to preferences
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp_clock_skin_size_offset"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # Reload the watch face
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;->parent:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener$ReloadRunnable;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener$ReloadRunnable;-><init>(Lcom/ricktop/ClockSkinCoco/ScaleMinusClickListener;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method
