.class abstract Landroid/support/wearable/watchface/decomposition/BaseComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/wearable/watchface/decomposition/BaseComponent$BaseBuilder;,
        Landroid/support/wearable/watchface/decomposition/BaseComponent$ComponentFactory;
    }
.end annotation


# instance fields
.field protected final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/wearable/watchface/decomposition/BaseComponent;->g()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/wearable/watchface/decomposition/BaseComponent;->g()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "component_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent;->b:Landroid/os/Bundle;

    const-string v1, "display_modes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
