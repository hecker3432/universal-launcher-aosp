.class Lcom/ricktop/ClockSkinCoco/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final b:Lcom/ricktop/ClockSkinCoco/b$b;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/d$a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/d$a;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a$a;->c:Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/d$a$a;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/a;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d$a$a;->c:Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/d$a;->x(Lcom/ricktop/ClockSkinCoco/d$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/a;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/d$a$a;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V

    const/4 v0, 0x1

    return v0
.end method
