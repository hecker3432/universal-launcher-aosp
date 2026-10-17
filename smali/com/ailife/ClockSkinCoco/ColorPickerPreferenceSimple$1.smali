.class Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;
.super Ljava/lang/Object;
.source "ColorPickerPreferenceSimple.java"

# interfaces
.implements Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->showColorPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

.field final synthetic val$colorPreview:Landroid/view/View;

.field final synthetic val$hexInput:Landroid/widget/EditText;

.field final synthetic val$selectedColor:[I


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[ILandroid/widget/EditText;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->val$selectedColor:[I

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->val$hexInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->val$colorPreview:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->val$selectedColor:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 67
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->val$hexInput:Landroid/widget/EditText;

    # invokes: Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->updateHexInput(Landroid/widget/EditText;I)V
    invoke-static {v0, v1, p1}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->access$000(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;Landroid/widget/EditText;I)V

    .line 68
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;->val$colorPreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    return-void
.end method
