.class Lcom/ricktop/ClockSkinCoco/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/n;->i(Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/n;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/n;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$d;->c:Lcom/ricktop/ClockSkinCoco/n;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/n$d;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$d;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
