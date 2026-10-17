.class Lcom/ricktop/ClockSkinCoco/M$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/M;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/M;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/M;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/M$b;->b:Lcom/ricktop/ClockSkinCoco/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/M$b;->b:Lcom/ricktop/ClockSkinCoco/M;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/M;->a(Lcom/ricktop/ClockSkinCoco/M;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/M$b;->b:Lcom/ricktop/ClockSkinCoco/M;

    invoke-interface {p1, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    return-void
.end method
