.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;Landroid/widget/CheckBox;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->this$1:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 426
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    iget-boolean v0, v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    .line 427
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppAdapter$2;->val$app:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    iget-boolean v0, v0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->isSelected:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 428
    return-void
.end method
