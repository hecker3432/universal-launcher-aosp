.class Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;
.super Ljava/lang/Object;
.source "ColorPickerPreferenceSimple.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

.field final synthetic val$selectedColor:[I


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[ILcom/ailife/ClockSkinCoco/ColorWheelView;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->val$selectedColor:[I

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->val$colorPreview:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_28

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 84
    :try_start_13
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->val$selectedColor:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 86
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->val$colorWheel:Lcom/ailife/ClockSkinCoco/ColorWheelView;

    invoke-virtual {v0, p1}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;->val$colorPreview:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_26} :catch_27

    .line 90
    goto :goto_28

    .line 88
    :catch_27
    move-exception p1

    .line 92
    :cond_28
    :goto_28
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 74
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 77
    return-void
.end method
