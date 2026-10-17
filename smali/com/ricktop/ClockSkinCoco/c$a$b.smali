.class Lcom/ricktop/ClockSkinCoco/c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final b:Lcom/ricktop/ClockSkinCoco/b$b;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/c$a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/c$a;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/c$a$b;->c:Lcom/ricktop/ClockSkinCoco/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/c$a$b;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Lcom/ricktop/ClockSkinCoco/a;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/c$a$b;->c:Lcom/ricktop/ClockSkinCoco/c$a;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/c$a;->g:Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/c$a$b;->c:Lcom/ricktop/ClockSkinCoco/c$a;

    iget-object v1, v1, Lcom/ricktop/ClockSkinCoco/c$a;->g:Lcom/ricktop/ClockSkinCoco/c;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->n()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ricktop/ClockSkinCoco/a;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/c$a$b;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V

    return v0
.end method
