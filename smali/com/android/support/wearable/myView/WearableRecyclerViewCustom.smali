.class public Lcom/android/support/wearable/myView/WearableRecyclerViewCustom;
.super Landroid/support/wearable/view/WearableRecyclerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public Z(II)Z
    .locals 1

    int-to-float p2, p2

    const v0, 0x3f333333    # 0.7f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->Z(II)Z

    move-result p1

    return p1
.end method
