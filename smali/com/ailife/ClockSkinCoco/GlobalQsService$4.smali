.class Lcom/ailife/ClockSkinCoco/GlobalQsService$4;
.super Ljava/lang/Object;
.source "GlobalQsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/GlobalQsService;->expandPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/GlobalQsService;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$4;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/GlobalQsService$4;->this$0:Lcom/ailife/ClockSkinCoco/GlobalQsService;

    const/4 v1, 0x0

    # setter for: Lcom/ailife/ClockSkinCoco/GlobalQsService;->isAnimating:Z
    invoke-static {v0, v1}, Lcom/ailife/ClockSkinCoco/GlobalQsService;->access$502(Lcom/ailife/ClockSkinCoco/GlobalQsService;Z)Z

    .line 263
    return-void
.end method
