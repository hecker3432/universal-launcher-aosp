.class Lcom/ricktop/ClockSkinCoco/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ricktop/ClockSkinCoco/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;

.field private final b:Landroid/content/Context;

.field private c:Lcom/ricktop/ClockSkinCoco/d$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/d;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-direct {v0, p0, p1}, Lcom/ricktop/ClockSkinCoco/d$a;-><init>(Lcom/ricktop/ClockSkinCoco/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/d;->c:Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-virtual {p0}, Lcom/ricktop/ClockSkinCoco/d;->c()V

    return-void
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/d;->a:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/b$b;

    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/d;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/b;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ricktop/ClockSkinCoco/d;->a:Ljava/util/ArrayList;

    return-void
.end method

.method d()LT/a$a;
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d;->c:Lcom/ricktop/ClockSkinCoco/d$a;

    return-object v0
.end method
