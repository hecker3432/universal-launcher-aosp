.class synthetic Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

.field public final synthetic f$1:Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;


# direct methods
.method public synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;->f$1:Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda7;->f$1:Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;

    invoke-virtual {v0, v1, p1}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->lambda$onBindViewHolder$7$com-ailife-ClockSkinCoco-WatchFaceAdapter(Lcom/ailife/ClockSkinCoco/WatchFaceFolderItem;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
