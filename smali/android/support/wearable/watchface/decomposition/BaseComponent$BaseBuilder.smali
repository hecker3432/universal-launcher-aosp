.class abstract Landroid/support/wearable/watchface/decomposition/BaseComponent$BaseBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/watchface/decomposition/BaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/wearable/watchface/decomposition/BaseComponent$BaseBuilder<",
        "TT;TK;>;K::",
        "Landroid/support/wearable/watchface/decomposition/WatchFaceDecomposition$Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/os/Bundle;

.field private final b:Landroid/support/wearable/watchface/decomposition/BaseComponent$ComponentFactory;


# direct methods
.method constructor <init>(Landroid/support/wearable/watchface/decomposition/BaseComponent$ComponentFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent$BaseBuilder;->a:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/wearable/watchface/decomposition/BaseComponent$BaseBuilder;->b:Landroid/support/wearable/watchface/decomposition/BaseComponent$ComponentFactory;

    return-void
.end method
