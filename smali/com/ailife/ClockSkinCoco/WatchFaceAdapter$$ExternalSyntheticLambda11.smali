.class synthetic Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda11;->f$3:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->lambda$showMoveAllDialog$11$com-ailife-ClockSkinCoco-WatchFaceAdapter([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
