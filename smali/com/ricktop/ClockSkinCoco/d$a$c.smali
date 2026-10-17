.class Lcom/ricktop/ClockSkinCoco/d$a$c;
.super LT/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field A:Landroid/widget/TextView;

.field final synthetic B:Lcom/ricktop/ClockSkinCoco/d$a;

.field z:Landroid/support/wearable/view/CircledImageView;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/d$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a$c;->B:Lcom/ricktop/ClockSkinCoco/d$a;

    invoke-direct {p0, p2}, LT/a$d;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0110

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/wearable/view/CircledImageView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a$c;->z:Landroid/support/wearable/view/CircledImageView;

    const p1, 0x7f0a0113

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/d$a$c;->A:Landroid/widget/TextView;

    return-void
.end method
