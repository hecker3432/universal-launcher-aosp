.class Lcom/ricktop/ClockSkinCoco/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/b$b;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/ricktop/ClockSkinCoco/a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/a;Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/a$a;->d:Lcom/ricktop/ClockSkinCoco/a;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/a$a;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/a$a;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/n;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/a$a;->d:Lcom/ricktop/ClockSkinCoco/a;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/a;->a(Lcom/ricktop/ClockSkinCoco/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/a$a;->d:Lcom/ricktop/ClockSkinCoco/a;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/a;->b(Lcom/ricktop/ClockSkinCoco/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/n;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/a$a;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/n;->i(Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V

    return-void
.end method
