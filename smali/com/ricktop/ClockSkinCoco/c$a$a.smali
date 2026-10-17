.class Lcom/ricktop/ClockSkinCoco/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final b:Lcom/ricktop/ClockSkinCoco/b$b;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/c$a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/c$a;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$a$a;->c:Lcom/ricktop/ClockSkinCoco/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c$a$a;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/c$a$a;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$a$a;->c:Lcom/ricktop/ClockSkinCoco/c$a;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/c$a;->g:Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
