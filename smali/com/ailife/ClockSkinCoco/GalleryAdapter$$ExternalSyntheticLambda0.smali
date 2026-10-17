.class public final synthetic Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ailife/ClockSkinCoco/GalleryAdapter;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/GalleryAdapter;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ailife/ClockSkinCoco/GalleryAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ailife/ClockSkinCoco/GalleryAdapter;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/GalleryAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/ailife/ClockSkinCoco/GalleryAdapter;->lambda$onBindViewHolder$0$com-ailife-ClockSkinCoco-GalleryAdapter(Ljava/io/File;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
