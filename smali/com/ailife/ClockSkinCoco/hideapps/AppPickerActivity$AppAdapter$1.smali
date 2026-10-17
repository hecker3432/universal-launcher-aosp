.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

.field final synthetic val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$1;->this$1:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$1;->val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$1;->val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 420
    return-void
.end method
