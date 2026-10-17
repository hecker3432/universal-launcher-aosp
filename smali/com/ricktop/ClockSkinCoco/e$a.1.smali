.class Lcom/ricktop/ClockSkinCoco/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/e;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/e$a;->b:Lcom/ricktop/ClockSkinCoco/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/e$a;->b:Lcom/ricktop/ClockSkinCoco/e;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/e;->C1(Lcom/ricktop/ClockSkinCoco/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    new-instance p2, Landroid/content/ComponentName;

    iget-object p3, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p3, 0x10200000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "AppListUtil"

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/e$a;->b:Lcom/ricktop/ClockSkinCoco/e;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
