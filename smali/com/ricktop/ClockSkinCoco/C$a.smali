.class Lcom/ricktop/ClockSkinCoco/C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/C;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/C;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/C;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/C$a;->b:Lcom/ricktop/ClockSkinCoco/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/C$a;->b:Lcom/ricktop/ClockSkinCoco/C;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ricktop/ClockSkinCoco/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/C$a;->b:Lcom/ricktop/ClockSkinCoco/C;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
