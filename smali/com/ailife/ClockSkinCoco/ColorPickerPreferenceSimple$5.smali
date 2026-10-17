.class Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;
.super Ljava/lang/Object;
.source "ColorPickerPreferenceSimple.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$colorArray:[I

.field final synthetic val$colorPreview:Landroid/view/View;

.field final synthetic val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

.field final synthetic val$hexInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[ILcom/ailife/ClockSkinCoco/ColorWheelView;Landroid/view/View;Landroid/widget/EditText;)V
    .registers 6

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorArray:[I

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorPreview:Landroid/view/View;

    iput-object p5, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$hexInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    if-eqz p3, :cond_2f

    .line 1
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

    invoke-virtual {p1}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->getColor()I

    move-result p1

    const/4 p3, 0x3

    .line 2
    new-array p3, p3, [F

    .line 3
    invoke-static {p1, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/4 p2, 0x2

    .line 4
    aput p1, p3, p2

    .line 5
    invoke-static {p3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorArray:[I

    const/4 v0, 0x0

    aput p1, p2, v0

    .line 7
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorPreview:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

    invoke-virtual {p2, p1}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->setColor(I)V

    .line 9
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;->val$hexInput:Landroid/widget/EditText;

    invoke-static {p2, p3, p1}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->access$000(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;Landroid/widget/EditText;I)V

    :cond_2f
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
