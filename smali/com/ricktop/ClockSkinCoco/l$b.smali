.class Lcom/ricktop/ClockSkinCoco/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/l;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/l;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/l$b;->c:Lcom/ricktop/ClockSkinCoco/l;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/l$b;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/l$b;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/l$b;->c:Lcom/ricktop/ClockSkinCoco/l;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/l;->a(Lcom/ricktop/ClockSkinCoco/l;)V

    return-void
.end method
