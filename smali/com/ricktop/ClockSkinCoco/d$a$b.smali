.class Lcom/ricktop/ClockSkinCoco/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/d$a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a$b;->b:Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d$a$b;->b:Lcom/ricktop/ClockSkinCoco/d$a;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/d$a;->e:Lcom/ricktop/ClockSkinCoco/d;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/d;->b(Lcom/ricktop/ClockSkinCoco/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "AppListUtil"

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d$a$b;->b:Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/d$a;->x(Lcom/ricktop/ClockSkinCoco/d$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
