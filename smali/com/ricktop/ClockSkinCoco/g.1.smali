.class public final Lcom/ricktop/ClockSkinCoco/g;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/g$a;
    }
.end annotation


# instance fields
.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/widget/TextView;

.field private a0:Landroid/widget/LinearLayout;

.field private b0:D

.field private c0:Z

.field private d0:Z

.field private e0:Ljava/lang/String;

.field private f0:Ljava/lang/String;

.field private g0:I

.field private h0:Ljava/util/ArrayList;

.field private final i0:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->i0:Ljava/text/NumberFormat;

    return-void
.end method

.method public static synthetic C1(Lcom/ricktop/ClockSkinCoco/g;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/g;->I1(Lcom/ricktop/ClockSkinCoco/g;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final D1()V
    .locals 6

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, LM0/c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x40b

    if-eq v4, v5, :cond_6

    const/16 v5, 0x40d

    if-eq v4, v5, :cond_4

    const/16 v5, 0x40f

    if-eq v4, v5, :cond_2

    const/16 v5, 0x458

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, " x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    mul-double v3, v3, v1

    iput-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const-string v4, " /"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    const-wide/16 v1, 0x0

    :try_start_2
    iput-wide v1, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    goto :goto_0

    :cond_4
    const-string v4, " -"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    sub-double/2addr v3, v1

    iput-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    goto :goto_0

    :cond_6
    const-string v4, " +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    add-double/2addr v3, v1

    iput-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v1}, LK0/b;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/g;->i0:Ljava/text/NumberFormat;

    iget-wide v3, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    new-instance v1, LI0/a;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v1, v2}, LI0/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private final E1(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    :cond_0
    iput p1, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "roundcalc_skin"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/g$a;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/g$a;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->a0:Landroid/widget/LinearLayout;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-virtual {v0}, Lcom/ricktop/ClockSkinCoco/g$a;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic F1(Lcom/ricktop/ClockSkinCoco/g;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/g;->E1(I)V

    return-void
.end method

.method private final G1()V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/ricktop/ClockSkinCoco/g;->c0:Z

    const-string v5, "java.lang.String.format(format, *args)"

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {v0}, LK0/b;->c(Ljava/lang/Object;)V

    sget-object v4, LK0/c;->a:LK0/c;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {v4}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v6}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object v6, v7, v1

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s %s ="

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, LK0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {v4}, LK0/b;->c(Ljava/lang/Object;)V

    sget-object v6, LK0/c;->a:LK0/c;

    iget-object v6, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v6}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    iget-object v8, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v8}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v6, v9, v2

    aput-object v7, v9, v1

    aput-object v8, v9, v3

    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%s%s %s ="

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, LK0/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/g;->D1()V

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/g;->d0:Z

    iput-boolean v2, p0, Lcom/ricktop/ClockSkinCoco/g;->c0:Z

    return-void
.end method

.method private final H1(C)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, LM0/c;->b(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/g;->d0:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/g;->d0:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    invoke-static {v0, v2}, LK0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v0}, LK0/b;->c(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->i0:Ljava/text/NumberFormat;

    if-eqz p1, :cond_3

    invoke-static {p1}, LM0/c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, LI0/a;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v1, v2}, LI0/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v1, p1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    return-void
.end method

.method private static final I1(Lcom/ricktop/ClockSkinCoco/g;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/16 v2, 0x190

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    mul-float p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ricktop/ClockSkinCoco/g;->g0:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-virtual {p1, v0, p2}, Lcom/ricktop/ClockSkinCoco/g$a;->a(FF)C

    move-result p1

    const/16 p2, 0x30

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x31

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x32

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x33

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p2, 0x34

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p2, 0x35

    if-ne p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/16 p2, 0x36

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 p2, 0x37

    if-ne p1, p2, :cond_7

    goto :goto_0

    :cond_7
    const/16 p2, 0x38

    if-ne p1, p2, :cond_8

    goto :goto_0

    :cond_8
    const/16 p2, 0x39

    if-ne p1, p2, :cond_9

    goto :goto_0

    :cond_9
    const/16 p2, 0x2e

    if-ne p1, p2, :cond_a

    :goto_0
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/g;->H1(C)V

    goto :goto_2

    :cond_a
    const/16 p2, 0x78

    if-ne p1, p2, :cond_b

    goto :goto_1

    :cond_b
    const/16 p2, 0x2b

    if-ne p1, p2, :cond_c

    goto :goto_1

    :cond_c
    const/16 p2, 0x2d

    if-ne p1, p2, :cond_d

    goto :goto_1

    :cond_d
    const/16 p2, 0x2f

    if-ne p1, p2, :cond_e

    :goto_1
    invoke-direct {p0, p1}, Lcom/ricktop/ClockSkinCoco/g;->J1(C)V

    goto :goto_2

    :cond_e
    const/16 p2, 0x3d

    if-ne p1, p2, :cond_f

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/g;->G1()V

    goto :goto_2

    :cond_f
    const/16 p2, 0x43

    if-ne p1, p2, :cond_10

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/g;->K1()V

    goto :goto_2

    :cond_10
    const/16 p2, 0x73

    if-ne p1, p2, :cond_11

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, p1, v1, p2}, Lcom/ricktop/ClockSkinCoco/g;->F1(Lcom/ricktop/ClockSkinCoco/g;IILjava/lang/Object;)V

    :cond_11
    :goto_2
    return v1
.end method

.method private final J1(C)V
    .locals 4

    iget-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/g;->c0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ricktop/ClockSkinCoco/g;->D1()V

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, LM0/c;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    new-instance v0, LI0/a;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v2}, LI0/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/g;->c0:Z

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ricktop/ClockSkinCoco/g;->d0:Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {p1}, LK0/b;->c(Ljava/lang/Object;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    return-void
.end method

.method private final K1()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/g;->c0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ricktop/ClockSkinCoco/g;->d0:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ricktop/ClockSkinCoco/g;->b0:D

    const-string v0, ""

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->e0:Ljava/lang/String;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {v1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/g;->f0:Ljava/lang/String;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {v1}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public D0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->D0()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/16 p3, 0x2e

    const/16 v0, 0x11

    const-string v1, "inflater"

    invoke-static {p1, v1}, LK0/b;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0d002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a0004

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    const p2, 0x7f0a0005

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    const p2, 0x7f0a0002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/g;->a0:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const v1, 0x7f08005f

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array v1, v0, [C

    fill-array-data v1, :array_3

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const v1, 0x7f080060

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array v1, v0, [C

    fill-array-data v1, :array_6

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array v1, v0, [I

    fill-array-data v1, :array_7

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array v1, v0, [I

    fill-array-data v1, :array_8

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const v1, 0x7f080061

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array v1, v0, [C

    fill-array-data v1, :array_9

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array v1, v0, [I

    fill-array-data v1, :array_a

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array v1, v0, [I

    fill-array-data v1, :array_b

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const v1, 0x7f080062

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array v1, v0, [C

    fill-array-data v1, :array_c

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array v1, v0, [I

    fill-array-data v1, :array_d

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array v1, v0, [I

    fill-array-data v1, :array_e

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const v1, 0x7f080063

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array v1, v0, [C

    fill-array-data v1, :array_f

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array v1, v0, [I

    fill-array-data v1, :array_11

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const v1, 0x7f080064

    invoke-virtual {p2, v1}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    const/16 v1, 0xdd

    const/16 v3, 0xff

    invoke-static {v3, v1, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/g$a;->f(I)V

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/ricktop/ClockSkinCoco/g$a;

    invoke-direct {p2}, Lcom/ricktop/ClockSkinCoco/g$a;-><init>()V

    new-array p3, v0, [C

    fill-array-data p3, :array_12

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/g$a;->e([C)V

    new-array p3, v0, [I

    fill-array-data p3, :array_13

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/g$a;->g([I)V

    new-array p3, v0, [I

    fill-array-data p3, :array_14

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/g$a;->h([I)V

    const p3, 0x7f080065

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/g$a;->d(I)V

    const/16 p3, 0x46

    const/16 v0, 0x56

    const/16 v1, 0x8

    invoke-static {v1, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/g$a;->f(I)V

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/g;->h0:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "roundcalc_skin"

    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-direct {p0, v2}, Lcom/ricktop/ClockSkinCoco/g;->E1(I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/ricktop/ClockSkinCoco/g;->E1(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p3}, LL0/a;->b(II)I

    move-result p2

    div-int/lit8 p2, p2, 0xa

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/g;->a0:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/f;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/f;-><init>(Lcom/ricktop/ClockSkinCoco/g;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object p3, LI0/b;->a:LI0/b;

    :cond_1
    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/g;->Y:Landroid/widget/TextView;

    invoke-static {p3}, LK0/b;->c(Ljava/lang/Object;)V

    int-to-float p2, p2

    invoke-virtual {p3, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/g;->Z:Landroid/widget/TextView;

    invoke-static {p3}, LK0/b;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 2
        0x78s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
        0x34s
        0x35s
        0x36s
        0x2ds
        0x2es
        0x31s
        0x32s
        0x33s
        0x43s
        0x30s
        0x3ds
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1f
        0x74
        0xd3
        0x133
        0x178
        0x2b
        0x74
        0xd3
        0x133
        0x16d
        0x3b
        0x74
        0xd3
        0x133
        0x74
        0xd3
        0x133
    .end array-data

    :array_2
    .array-data 4
        0xce
        0xce
        0xce
        0xce
        0xce
        0x100
        0x100
        0x100
        0x100
        0x100
        0x130
        0x130
        0x130
        0x130
        0x162
        0x162
        0x162
    .end array-data

    :array_3
    .array-data 2
        0x37s
        0x38s
        0x39s
        0x2fs
        0x43s
        0x34s
        0x35s
        0x36s
        0x78s
        0x3ds
        0x31s
        0x32s
        0x33s
        0x2ds
        0x30s
        0x2es
        0x2bs
    .end array-data

    nop

    :array_4
    .array-data 4
        0x40
        0x83
        0xc5
        0x10c
        0x156
        0x40
        0x83
        0xc5
        0x10c
        0x156
        0x40
        0x83
        0xc5
        0x10c
        0x83
        0xc5
        0x10c
    .end array-data

    :array_5
    .array-data 4
        0xce
        0xce
        0xce
        0xce
        0xce
        0x100
        0x100
        0x100
        0x100
        0x100
        0x130
        0x130
        0x130
        0x130
        0x162
        0x162
        0x162
    .end array-data

    :array_6
    .array-data 2
        0x37s
        0x38s
        0x39s
        0x2fs
        0x43s
        0x34s
        0x35s
        0x36s
        0x78s
        0x3ds
        0x31s
        0x32s
        0x33s
        0x2ds
        0x30s
        0x2es
        0x2bs
    .end array-data

    nop

    :array_7
    .array-data 4
        0x40
        0x83
        0xc5
        0x10c
        0x156
        0x40
        0x83
        0xc5
        0x10c
        0x156
        0x40
        0x83
        0xc5
        0x10c
        0x83
        0xc5
        0x10c
    .end array-data

    :array_8
    .array-data 4
        0xce
        0xce
        0xce
        0xce
        0xce
        0x100
        0x100
        0x100
        0x100
        0x100
        0x130
        0x130
        0x130
        0x130
        0x162
        0x162
        0x162
    .end array-data

    :array_9
    .array-data 2
        0x30s
        0x37s
        0x38s
        0x39s
        0x2fs
        0x78s
        0x2es
        0x34s
        0x35s
        0x36s
        0x2bs
        0x2ds
        0x31s
        0x32s
        0x33s
        0x3ds
        0x43s
    .end array-data

    nop

    :array_a
    .array-data 4
        0x36
        0x6f
        0xa9
        0xe5
        0x120
        0x15b
        0x36
        0x6f
        0xa9
        0xe5
        0x120
        0x15b
        0x6e
        0xaa
        0xe6
        0x126
        0x10b
    .end array-data

    :array_b
    .array-data 4
        0xd9
        0xd9
        0xd9
        0xd9
        0xd9
        0xd9
        0x10e
        0x10e
        0x10e
        0x10e
        0x10e
        0x10e
        0x147
        0x147
        0x147
        0x147
        0x2b
    .end array-data

    :array_c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x78s
        0x3ds
        0x43s
    .end array-data

    nop

    :array_d
    .array-data 4
        0x24
        0x30
        0x4a
        0x74
        0xaa
        0xe4
        0x11c
        0x147
        0x162
        0x16a
        0x73
        0x8c
        0xc8
        0x103
        0x11f
        0xaf
        0xe1
    .end array-data

    :array_e
    .array-data 4
        0xc9
        0xff
        0x130
        0x156
        0x16b
        0x16b
        0x156
        0x130
        0xff
        0xc9
        0xcd
        0x105
        0x120
        0x105
        0xcd
        0xcd
        0xcd
    .end array-data

    :array_f
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x78s
        0x3ds
        0x43s
    .end array-data

    nop

    :array_10
    .array-data 4
        0x24
        0x35
        0x50
        0x7f
        0xad
        0xe4
        0x115
        0x13c
        0x15c
        0x16f
        0x63
        0x9e
        0x174
        0x12c
        0xf3
        0xc8
        0x1c
    .end array-data

    :array_11
    .array-data 4
        0xf6
        0x125
        0x149
        0x166
        0x177
        0x177
        0x166
        0x149
        0x125
        0xf6
        0xde
        0x122
        0xc6
        0xde
        0x122
        0xd2
        0xc6
    .end array-data

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x78s
        0x3ds
        0x43s
    .end array-data

    nop

    :array_13
    .array-data 4
        0x16
        0x4c
        0x86
        0xbb
        0xf2
        0x64
        0x9a
        0xd7
        0x77
        0xab
        0x13f
        0x125
        0x34
        0xf6
        0x111
        0xdf
        0x15a
    .end array-data

    :array_14
    .array-data 4
        0xdc
        0xdc
        0xdc
        0xdc
        0xdc
        0x119
        0x119
        0x119
        0x157
        0x157
        0xd1
        0xf8
        0x119
        0x14b
        0x120
        0x175
        0x124
    .end array-data
.end method

.method public y0()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->y0()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->j(Z)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/WatchApp;->i(Z)V

    return-void
.end method
