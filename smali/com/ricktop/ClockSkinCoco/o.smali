.class public Lcom/ricktop/ClockSkinCoco/o;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/o$c;,
        Lcom/ricktop/ClockSkinCoco/o$d;
    }
.end annotation


# instance fields
.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field private a0:Z

.field private b0:I

.field private c0:Lcom/ricktop/ClockSkinCoco/e;

.field private d0:Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

.field private e0:Lcom/ricktop/ClockSkinCoco/c;

.field private f0:Lcom/ricktop/ClockSkinCoco/i;

.field private f1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

.field private g0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

.field private h0:Lcom/ricktop/ClockSkinCoco/g;

.field private i0:Landroidx/fragment/app/Fragment;

.field private j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

.field private k0:Landroidx/viewpager/widget/a;

.field private l0:Landroid/hardware/SensorEventListener;

.field private m0:I

.field private n0:I

.field private o0:Landroid/hardware/SensorManager;

.field private p0:I

.field private q0:Lcom/ricktop/ClockSkinCoco/o$d;

.field private r0:Z

.field s0:Ljava/lang/String;

.field t0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "sp_clock_lastcurrent"

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->Y:Ljava/lang/String;

    const-string v0, "sp_launcher_appstyle"

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->Z:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    iput v3, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/o;->r0:Z

    const-string v4, "sp_clock_lastday"

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/o;->s0:Ljava/lang/String;

    const-string v4, "sp_clock_laststeps"

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/o;->t0:Ljava/lang/String;

    const-string v4, "IdleFragment()"

    const-string v5, "IdleFragment"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v4

    invoke-static {v4}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    :cond_0
    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/o;->a0:Z

    :try_start_0
    new-instance v0, Landroid/support/wearable/view/CurvedChildLayoutManager;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/wearable/view/CurvedChildLayoutManager;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/ricktop/ClockSkinCoco/o;->a0:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Arc not available"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    invoke-virtual {p0, v0}, Lcom/ricktop/ClockSkinCoco/o;->P1(I)V

    return-void
.end method

.method static synthetic C1(Lcom/ricktop/ClockSkinCoco/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ricktop/ClockSkinCoco/o;->r0:Z

    return p0
.end method

.method static synthetic D1(Lcom/ricktop/ClockSkinCoco/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/o;->r0:Z

    return p1
.end method

.method static synthetic E1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    return-object p0
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/o;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/o;->g0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    return-object p0
.end method

.method static synthetic G1(Lcom/ricktop/ClockSkinCoco/o;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/o;->K1(I)I

    move-result p0

    return p0
.end method

.method private K1(I)I
    .locals 5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :try_start_0
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->s0:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    :goto_0
    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->t0:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    :goto_1
    const-string v2, "sp_clock_lastcurrent"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iput v4, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    goto :goto_2

    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    :cond_3
    :goto_2
    iget v1, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    iput v0, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->s0:Ljava/lang/String;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->t0:Ljava/lang/String;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    if-le v0, p1, :cond_5

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->t0:Ljava/lang/String;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_3
    iget v0, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public H1()V
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v2, "notificationStation"

    const/4 v1, 0x1

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->J(IZ)V

    :cond_0
    return-void
.end method

.method public I1()V
    .locals 4

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0


    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v2, "notificationStation"

    const/4 v1, 0x1

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v1, 0x0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->J(IZ)V

    :cond_0
    return-void
.end method

.method public J1()I
    .locals 1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    return v0
.end method

.method public L1()Lcom/ricktop/ClockSkinCoco/CocosClockFragment;
    .locals 5

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/o$c;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v2, "notificationStation"

    const/4 v1, 0x1

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    :cond_1

    invoke-virtual {v0, v1}, Lcom/ricktop/ClockSkinCoco/o$c;->s(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M1()Z
    .locals 6

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v3

    invoke-static {v3}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "notificationStation"

    const/4 v2, 0x1

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x2

    :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public N1()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lcom/ricktop/ClockSkinCoco/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/ricktop/ClockSkinCoco/e;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/e;->G1()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/ricktop/ClockSkinCoco/c;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/c;->I1()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;->C1()V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;->C1()V

    goto :goto_0

    :cond_4
    :goto_0
    return-void
.end method

.method public O1()V
    .locals 3

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sp_clock_lastcurrent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    iput v1, p0, Lcom/ricktop/ClockSkinCoco/o;->n0:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->s0:Ljava/lang/String;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/o;->p0:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->t0:Ljava/lang/String;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/o;->m0:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public P1(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pointer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCurAppListFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " SetAppStyle old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdleFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0054

    if-eqz p1, :cond_1

    # Style != 0: check for waterfall (2) or list (1)
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    # DEBUG: Entering waterfall branch
    const-string v1, "IdleFragment"

    const-string v2, "DEBUG: Creating waterfall fragment (style=2)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-direct {v1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;-><init>()V

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->f1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    check-cast v2, Lcom/ricktop/ClockSkinCoco/o$c;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-static {v2, v3, v1, v0}, Lcom/ricktop/ClockSkinCoco/o$c;->v(Lcom/ricktop/ClockSkinCoco/o$c;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    :cond_2
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->f1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_8
    # DEBUG: Entering list branch
    const-string v1, "IdleFragment"

    const-string v2, "DEBUG: Creating list fragment (style=1)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_6

    # Check arc mode support AND style != 2 (waterfall)
    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/o;->a0:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    invoke-direct {v1}, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;-><init>()V

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->d0:Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    check-cast v2, Lcom/ricktop/ClockSkinCoco/o$c;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-static {v2, v3, v1, v0}, Lcom/ricktop/ClockSkinCoco/o$c;->v(Lcom/ricktop/ClockSkinCoco/o$c;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->d0:Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/ricktop/ClockSkinCoco/c;

    invoke-direct {v1}, Lcom/ricktop/ClockSkinCoco/c;-><init>()V

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->e0:Lcom/ricktop/ClockSkinCoco/c;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    check-cast v2, Lcom/ricktop/ClockSkinCoco/o$c;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-static {v2, v3, v1, v0}, Lcom/ricktop/ClockSkinCoco/o$c;->v(Lcom/ricktop/ClockSkinCoco/o$c;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->e0:Lcom/ricktop/ClockSkinCoco/c;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_1
    # Style 0: Grid
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ricktop/ClockSkinCoco/e;

    invoke-direct {v1}, Lcom/ricktop/ClockSkinCoco/e;-><init>()V

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->c0:Lcom/ricktop/ClockSkinCoco/e;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    check-cast v2, Lcom/ricktop/ClockSkinCoco/o$c;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-static {v2, v3, v1, v0}, Lcom/ricktop/ClockSkinCoco/o$c;->v(Lcom/ricktop/ClockSkinCoco/o$c;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->c0:Lcom/ricktop/ClockSkinCoco/e;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    :cond_3
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sp_launcher_appstyle"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/o;->Q1()V

    return-void
.end method

.method public Q1()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->i()V

    :cond_1
    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c0(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->d()Lcom/ricktop/ClockSkinCoco/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->restartNotificationService()V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "sp_launcher_appstyle"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    :cond_0
    new-instance p1, Lcom/ricktop/ClockSkinCoco/e;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/e;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->c0:Lcom/ricktop/ClockSkinCoco/e;

    # Check arc mode support AND style != 2 (waterfall)
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/o;->a0:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/AppArcListFragment;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->d0:Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    :cond_1
    new-instance p1, Lcom/ricktop/ClockSkinCoco/c;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/c;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->e0:Lcom/ricktop/ClockSkinCoco/c;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/g;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/g;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->h0:Lcom/ricktop/ClockSkinCoco/g;

    new-instance p1, Lcom/ricktop/ClockSkinCoco/i;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/i;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->f0:Lcom/ricktop/ClockSkinCoco/i;

    new-instance p1, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    invoke-direct {p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->f1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    if-eqz p1, :cond_7

    # Style != 0: check for waterfall (2) or list (1)
    iget p1, p0, Lcom/ricktop/ClockSkinCoco/o;->b0:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    # Style 2: Waterfall (using waterfall fragment)
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->f1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_2
    # Style 1: List/Arc
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/o;->a0:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->d0:Lcom/ricktop/ClockSkinCoco/AppArcListFragment;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->e0:Lcom/ricktop/ClockSkinCoco/c;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_7
    # Style 0: Grid
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->c0:Lcom/ricktop/ClockSkinCoco/e;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    :goto_0


    # notification station

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "notificationStation"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    
    new-instance v0, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-direct {v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->g0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    new-instance p1, Lcom/ailife/ClockSkinCoco/NotificationWorkaroundFragment;

    invoke-direct {p1}, Lcom/ailife/ClockSkinCoco/NotificationWorkaroundFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->g0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5


    const/4 v2, 0x0

    new-instance p1, Lcom/ailife/ClockSkinCoco/NotificationClearFragment;

    invoke-direct {p1}, Lcom/ailife/ClockSkinCoco/NotificationClearFragment;-><init>()V

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-instance p1, Lcom/ricktop/ClockSkinCoco/q;

    invoke-direct {p1}, Lcom/ricktop/ClockSkinCoco/q;-><init>()V

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->g0:Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->i0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1

    ################

    new-instance p1, Lcom/ricktop/ClockSkinCoco/o$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->t()Landroidx/fragment/app/m;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Lcom/ricktop/ClockSkinCoco/o$c;-><init>(Landroidx/fragment/app/m;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->k0:Landroidx/viewpager/widget/a;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    invoke-virtual {v2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/o$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/o$a;-><init>(Lcom/ricktop/ClockSkinCoco/o;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.ailife.ClockSkinCoco.SET_PAGING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/ricktop/ClockSkinCoco/o$d;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/o$d;-><init>(Lcom/ricktop/ClockSkinCoco/o;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/o;->q0:Lcom/ricktop/ClockSkinCoco/o$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->q0:Lcom/ricktop/ClockSkinCoco/o$d;

    const/4 v2, 0x2

    # Android version check for registerReceiver compatibility (Android 7 fix)
    const/16 v10, 0x21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    if-lt v2, v10, :old_api_registerReceiver_compat_16

    # Android 13+ (API 33+): Use 3-parameter registerReceiver with flags
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    goto :registerReceiver_done_compat_16

    :old_api_registerReceiver_compat_16
    # Android < 13 (API < 33): Use 2-parameter registerReceiver
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :registerReceiver_done_compat_16

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/o;->H1()V

    return-void
.end method

.method public i0(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->i0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0d003b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0214

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    # Register HorizontalViewPager with ViewPagerManager
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/ViewPagerManager;

    move-result-object v1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/o;->j0:Lcom/ricktop/ClockSkinCoco/HorizontalViewPager;

    invoke-virtual {v1, p2}, Lcom/ailife/ClockSkinCoco/ViewPagerManager;->registerViewPager(Ljava/lang/Object;)V

    return-object p1
.end method

.method public n0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/o;->q0:Lcom/ricktop/ClockSkinCoco/o$d;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
