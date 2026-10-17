.class public final synthetic Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->lambda$onBindViewHolder$1$com-ailife-ClockSkinCoco-WatchFaceAdapter(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
