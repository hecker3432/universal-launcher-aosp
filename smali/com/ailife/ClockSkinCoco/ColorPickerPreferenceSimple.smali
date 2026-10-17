.class public Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;
.super Landroidx/preference/Preference;
.source "ColorPickerPreferenceSimple.java"


# instance fields
.field private currentColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    .line 21
    new-instance v0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$4;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$4;-><init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->r0(Landroidx/preference/Preference$e;)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;Landroid/widget/EditText;I)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->updateHexInput(Landroid/widget/EditText;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    return p1
.end method

.method static synthetic access$003(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;Ljava/lang/String;)Z
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->showColorPickerDialog()V

    return-void
.end method

.method private showColorPickerDialog()V
    .registers 16

    .line 50
    # Read saved color value before opening dialog
    const-string v0, "#FFFFFF"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # Parse color without triggering notifyChanged
    :try_start_load
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I
    :try_end_load
    .catch Ljava/lang/IllegalArgumentException; {:try_start_load .. :try_end_load} :catch_load

    goto :continue_dialog

    :catch_load
    const/4 v1, -0x1

    iput v1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    :continue_dialog
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0080

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    const v2, 0x7f0a028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ailife/ClockSkinCoco/ColorWheelView;

    .line 54
    const v4, 0x7f0a0290

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 55
    const v5, 0x7f0a028e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 56
    const v6, 0x7f0a028c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 57
    iget v7, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    invoke-virtual {v2, v7}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->setColor(I)V

    .line 58
    iget v7, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    invoke-direct {p0, v4, v7}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->updateHexInput(Landroid/widget/EditText;I)V

    .line 59
    iget v7, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    iget v7, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    filled-new-array {v7}, [I

    move-result-object v7

    .line 63
    new-instance v8, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;

    invoke-direct {v8, p0, v7, v4, v5}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$1;-><init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[ILandroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v2, v8}, Lcom/ailife/ClockSkinCoco/ColorWheelView;->setOnColorChangedListener(Lcom/ailife/ClockSkinCoco/ColorWheelView$OnColorChangedListener;)V

    .line 72
    new-instance v8, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;

    invoke-direct {v8, p0, v7, v2, v5}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$2;-><init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[ILcom/ailife/ClockSkinCoco/ColorWheelView;Landroid/view/View;)V

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    # Save EditText to v9 before v4 gets overwritten
    move-object v14, v4

    .line 85
    iget v4, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    const/4 v8, 0x3

    new-array v8, v8, [F

    invoke-static {v4, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v4, 0x2

    aget v4, v8, v4

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v4, v4, v8

    float-to-int v4, v4

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    # Create SeekBar listener with 5 parameters - need /range for 6 registers total
    new-instance v9, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;

    # Move to consecutive registers v10-v15
    move-object v10, p0
    move-object v11, v7
    move-object v12, v2
    move-object v13, v5

    invoke-direct/range {v9 .. v14}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$5;-><init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[ILcom/ailife/ClockSkinCoco/ColorWheelView;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    # Get Context again for AlertDialog
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;

    invoke-direct {v1, p0, v7}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple$3;-><init>(Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;[I)V

    .line 98
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 106
    return-void
.end method

.method private updateHexInput(Landroid/widget/EditText;I)V
    .registers 5

    .line 119
    const v0, 0xffffff

    and-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "#%06X"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 122
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 27
    const v0, 0x7f0a028d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 28
    if-eqz p1, :cond_13

    .line 29
    iget v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 31
    :cond_13
    return-void
.end method


.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    .line 40
    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/String;

    goto :goto_7

    :cond_5
    const-string p1, "#FFFFFF"

    :goto_7
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->setColor(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 3

    .line 110
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    .line 111
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->e0(Ljava/lang/String;)Z

    .line 112
    invoke-virtual {p0}, Landroidx/preference/Preference;->a0()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 115
    goto :goto_11

    .line 113
    :catch_d
    move-exception p1

    .line 114
    const/4 p1, -0x1

    iput p1, p0, Lcom/ailife/ClockSkinCoco/ColorPickerPreferenceSimple;->currentColor:I

    .line 116
    :goto_11
    return-void
.end method
