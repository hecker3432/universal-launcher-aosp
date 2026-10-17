.class synthetic Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;->f$0:Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ailife/ClockSkinCoco/WatchFaceAdapter;->lambda$showRenameFolderDialog$9$com-ailife-ClockSkinCoco-WatchFaceAdapter(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
