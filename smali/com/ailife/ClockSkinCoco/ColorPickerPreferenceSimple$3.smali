.class Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;
.super Ljava/lang/Object;
.source "ColorPickerPreferenceSimple.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$selectedColor:[I


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;->val$selectedColor:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 101
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;->val$selectedColor:[I

    const/4 p2, 0x0

    aget v0, p1, p2

    const v1, 0xffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, p2

    const-string v0, "#%06X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # Update currentColor field directly
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->access$002(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;I)I

    # Persist the color string without calling notifyChanged
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;->this$0:Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->access$003(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;Ljava/lang/String;)Z

    .line 102
    return-void
.end method
