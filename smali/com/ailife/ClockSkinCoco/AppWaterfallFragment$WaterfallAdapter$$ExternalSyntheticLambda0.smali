.class public final synthetic Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    iput p2, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;

    iget v1, p0, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/ailife/ClockSkinCoco/AppWaterfallFragment$WaterfallAdapter;->lambda$onBindViewHolder$0$com-ricktop-ClockSkinCoco-AppWaterfallFragment$WaterfallAdapter(ILandroid/view/View;)V

    return-void
.end method
