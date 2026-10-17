.class Lcom/ricktop/ClockSkinCoco/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/n$f;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Activity;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/ricktop/ClockSkinCoco/CircleScroller;

.field private e:Lcom/ricktop/ClockSkinCoco/n$f;

.field private f:Landroid/widget/GridView;

.field private g:Ljava/util/List;

.field private h:Lcom/ricktop/ClockSkinCoco/m$a;

.field private i:Landroid/widget/AbsListView$OnScrollListener;

.field private j:Ljava/lang/String;

.field private k:Lcom/ricktop/ClockSkinCoco/b$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/n;->h:Lcom/ricktop/ClockSkinCoco/m$a;

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/n;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/n;->b:Landroid/app/Activity;

    sget-object p1, Lcom/ricktop/ClockSkinCoco/MainActivity;->F:Lcom/ricktop/ClockSkinCoco/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/m;->c()Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->h:Lcom/ricktop/ClockSkinCoco/m$a;

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->h:Lcom/ricktop/ClockSkinCoco/m$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/m$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->g:Ljava/util/List;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/n;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/n;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/m$a;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/n;->h:Lcom/ricktop/ClockSkinCoco/m$a;

    return-object p0
.end method

.method static synthetic c(Lcom/ricktop/ClockSkinCoco/n;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/n;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/CircleScroller;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/n;->d:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    return-object p0
.end method

.method static synthetic e(Lcom/ricktop/ClockSkinCoco/n;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/n;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ricktop/ClockSkinCoco/n;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/b$b;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/n;->k:Lcom/ricktop/ClockSkinCoco/b$b;

    return-object p0
.end method


# virtual methods
.method h()V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/n;->h:Lcom/ricktop/ClockSkinCoco/m$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/ricktop/ClockSkinCoco/m$a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/n;->g:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/n;->g:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/n;->e:Lcom/ricktop/ClockSkinCoco/n$f;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method i(Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
    .locals 5

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->k:Lcom/ricktop/ClockSkinCoco/b$b;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0d003a

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v2, 0x7f0a0114

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/n;->c:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/n;->c:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a01a8

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v2, Lcom/ricktop/ClockSkinCoco/n$a;

    invoke-direct {v2, p0}, Lcom/ricktop/ClockSkinCoco/n$a;-><init>(Lcom/ricktop/ClockSkinCoco/n;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/ricktop/ClockSkinCoco/n$b;

    invoke-direct {p1, p0}, Lcom/ricktop/ClockSkinCoco/n$b;-><init>(Lcom/ricktop/ClockSkinCoco/n;)V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n;->i:Landroid/widget/AbsListView$OnScrollListener;

    new-array p1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/ricktop/ClockSkinCoco/n$c;

    invoke-direct {v1, p0, p1}, Lcom/ricktop/ClockSkinCoco/n$c;-><init>(Lcom/ricktop/ClockSkinCoco/n;[Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ricktop/ClockSkinCoco/WatchApp;->f()I

    move-result v2

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ricktop/ClockSkinCoco/WatchApp;->g()I

    move-result v3

    const v4, 0x7f0a0112

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/n;->f:Landroid/widget/GridView;

    const v4, 0x7f0a00a6

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ricktop/ClockSkinCoco/CircleScroller;

    iput-object v4, p0, Lcom/ricktop/ClockSkinCoco/n;->d:Lcom/ricktop/ClockSkinCoco/CircleScroller;

    invoke-virtual {v4, v2, v3}, Lcom/ricktop/ClockSkinCoco/CircleScroller;->c(II)V

    new-instance v2, Lcom/ricktop/ClockSkinCoco/n$f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ricktop/ClockSkinCoco/n$f;-><init>(Lcom/ricktop/ClockSkinCoco/n;Lcom/ricktop/ClockSkinCoco/n$a;)V

    iput-object v2, p0, Lcom/ricktop/ClockSkinCoco/n;->e:Lcom/ricktop/ClockSkinCoco/n$f;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/n;->f:Landroid/widget/GridView;

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/n;->f:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/n;->f:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/n;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/n;->h()V

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0090

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/ricktop/ClockSkinCoco/n$d;

    invoke-direct {v3, p0, v0}, Lcom/ricktop/ClockSkinCoco/n$d;-><init>(Lcom/ricktop/ClockSkinCoco/n;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/ricktop/ClockSkinCoco/n$e;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/ricktop/ClockSkinCoco/n$e;-><init>(Lcom/ricktop/ClockSkinCoco/n;Landroid/app/Dialog;Landroid/widget/ImageView;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
