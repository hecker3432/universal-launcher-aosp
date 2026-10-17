.class Lcom/ricktop/ClockSkinCoco/j$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j;->k(ILjava/lang/String;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic d:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$g;->a:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/j$g;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$g;->a:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    add-int/lit8 p2, p2, -0x32

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/j;->d(Lcom/ricktop/ClockSkinCoco/j;I)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$g;->b:Landroid/widget/TextView;

    

    const-string p2, "Scale: "

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p3}, Lcom/ricktop/ClockSkinCoco/j;->c(Lcom/ricktop/ClockSkinCoco/j;)I

    move-result p3

    const/4 v0, 0x2

    mul-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "%s%d%%"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    new-instance p2, Lcom/ricktop/ClockSkinCoco/j$g$a;

    invoke-direct {p2, p0}, Lcom/ricktop/ClockSkinCoco/j$g$a;-><init>(Lcom/ricktop/ClockSkinCoco/j$g;)V

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4


    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/j;->c(Lcom/ricktop/ClockSkinCoco/j;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sp_clock_skin_size_offset"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    # Use commit() instead of apply() to ensure synchronous write before reload
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # CRITICAL: Queue the reload on the GL thread to ensure thread-safe execution
    # This prevents crashes by ensuring reload happens in proper GL context
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$g;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object v0

    new-instance v1, Lcom/ricktop/ClockSkinCoco/j$g$b;

    invoke-direct {v1, p0}, Lcom/ricktop/ClockSkinCoco/j$g$b;-><init>(Lcom/ricktop/ClockSkinCoco/j$g;)V

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method
