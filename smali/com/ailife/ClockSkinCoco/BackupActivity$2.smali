.class Lcom/ailife/ClockSkinCoco/BackupActivity$2;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/BackupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/BackupActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/BackupActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/BackupActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/BackupActivity$2;->this$0:Lcom/ailife/ClockSkinCoco/BackupActivity;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/BackupActivity;->startRestore()V

    return-void
.end method
