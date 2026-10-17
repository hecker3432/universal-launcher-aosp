.class Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$C;
.source "AppWaterfallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;Landroid/view/View;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->this$1:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    .line 44
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$C;-><init>(Landroid/view/View;)V

    .line 45
    const p1, 0x7f0a0126

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 46
    const p1, 0x7f0a0127

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 47
    return-void
.end method
