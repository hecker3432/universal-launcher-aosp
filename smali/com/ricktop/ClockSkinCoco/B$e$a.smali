.class Lcom/ricktop/ClockSkinCoco/B$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/B$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/B$e;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/B$e;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$e$a;->a:Lcom/ricktop/ClockSkinCoco/B$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$e$a;->a:Lcom/ricktop/ClockSkinCoco/B$e;

    iget-object v0, v0, Lcom/ricktop/ClockSkinCoco/B$e;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/B;->D1(Lcom/ricktop/ClockSkinCoco/B;)V

    return-void
.end method
