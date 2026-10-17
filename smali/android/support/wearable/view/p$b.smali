.class Landroid/support/wearable/view/p$b;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/wearable/view/p;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/p$b;->a:Landroid/support/wearable/view/p;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/p;Landroid/support/wearable/view/p$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/p$b;-><init>(Landroid/support/wearable/view/p;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, Landroid/support/wearable/view/p$b;->a:Landroid/support/wearable/view/p;

    invoke-static {p1}, Landroid/support/wearable/view/p;->a(Landroid/support/wearable/view/p;)I

    move-result p1

    iget-object v0, p0, Landroid/support/wearable/view/p$b;->a:Landroid/support/wearable/view/p;

    invoke-static {v0}, Landroid/support/wearable/view/p;->a(Landroid/support/wearable/view/p;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, p1, v0}, Landroid/support/wearable/view/q;->a(Landroid/graphics/Outline;IIII)V

    return-void
.end method
