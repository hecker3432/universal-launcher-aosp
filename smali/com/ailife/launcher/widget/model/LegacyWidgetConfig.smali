.class public Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;
.super Ljava/lang/Object;
.source "LegacyWidgetConfig.java"


# instance fields
.field public final info:Lcom/ailife/launcher/widget/model/WidgetInfo;

.field public final position:I


# direct methods
.method public constructor <init>(ILcom/ailife/launcher/widget/model/WidgetInfo;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->position:I

    .line 13
    iput-object p2, p0, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->info:Lcom/ailife/launcher/widget/model/WidgetInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegacyWidgetConfig{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/launcher/widget/model/LegacyWidgetConfig;->info:Lcom/ailife/launcher/widget/model/WidgetInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
