.class public Lcom/ailife/ClockSkinCoco/IconPickerActivity;
.super Landroid/app/Activity;
.source "IconPickerActivity.java"


# static fields
.field public static final EXTRA_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final REQUEST_PICK_IMAGE:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "IconPickerActivity"


# instance fields
.field private componentKey:Ljava/lang/String;

.field private currentIconLabel:Landroid/widget/TextView;

.field private currentIconPreview:Landroid/widget/ImageView;

.field private pickIconPackButton:Landroid/widget/Button;

.field private pickImageButton:Landroid/widget/Button;

.field private resetButton:Landroid/widget/Button;

.field private targetActivityName:Ljava/lang/String;

.field private targetAppName:Ljava/lang/String;

.field private targetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->showIconPackPicker()V

    return-void
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->resetIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->saveIconFromPack(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private addSpacing(Landroid/widget/LinearLayout;I)V
    .registers 6

    .line 281
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 282
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    .line 284
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v2

    float-to-int p2, p2

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method private createCard(I)Landroid/widget/LinearLayout;
    .registers 5

    .line 235
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 236
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 238
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 242
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 243
    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 247
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-object v0
.end method

.method private createMaterialButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;
    .registers 8

    .line 255
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 258
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 259
    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 261
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLetterSpacing(F)V

    .line 263
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    const/4 p1, 0x0

    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 271
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 272
    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setElevation(F)V

    .line 275
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 277
    return-object v0
.end method

.method private createUI()V
    .registers 17

    .line 84
    move-object/from16 v0, p0

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 92
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    const v3, -0xededee

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 97
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    const v6, -0xe6892e

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 100
    const/16 v7, 0x10

    invoke-virtual {v4, v7, v5, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 102
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x42600000    # 56.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    const/4 v10, -0x1

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 111
    const-string v9, "\u2190"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 113
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x42400000    # 48.0f

    mul-float v12, v12, v13

    float-to-int v12, v12

    .line 117
    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float v14, v14, v13

    float-to-int v13, v14

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    invoke-virtual {v8, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v11, Lcom/ailife/ClockSkinCoco/IconPickerActivity$1;

    invoke-direct {v11, v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 130
    iget-object v11, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetAppName:Ljava/lang/String;

    if-eqz v11, :cond_9b

    iget-object v11, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetAppName:Ljava/lang/String;

    goto :goto_9d

    :cond_9b
    iget-object v11, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    :goto_9d
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-virtual {v8, v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 134
    const/16 v10, 0x8

    invoke-virtual {v8, v10, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 137
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v5, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 142
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 150
    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 152
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    const/16 v8, 0x18

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 157
    const v11, -0xe1e1e2

    invoke-direct {v0, v11}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->createCard(I)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 159
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    const-string v13, "CURRENT ICON"

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    const v14, -0xbb7501

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    invoke-virtual {v12, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 164
    const v15, 0x3dcccccd    # 0.1f

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 165
    invoke-virtual {v12, v5, v5, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconPreview:Landroid/widget/ImageView;

    .line 169
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0xc0

    invoke-direct {v12, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    const/16 v6, 0x11

    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 171
    invoke-virtual {v12, v5, v5, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconPreview:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconPreview:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconPreview:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    .line 177
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    const v12, -0x4c000001

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    invoke-direct {v0, v3, v8}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->addSpacing(Landroid/widget/LinearLayout;I)V

    .line 188
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 189
    const-string v6, "CUSTOMIZE ICON"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    invoke-virtual {v5, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 193
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v5, v10, v2, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    const-string v2, "Choose Image File"

    const v5, -0xe6892e

    invoke-direct {v0, v0, v2, v5}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->createMaterialButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickImageButton:Landroid/widget/Button;

    .line 199
    iget-object v2, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickImageButton:Landroid/widget/Button;

    new-instance v5, Lcom/ailife/ClockSkinCoco/IconPickerActivity$2;

    invoke-direct {v5, v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$2;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v2, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickImageButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    const/16 v2, 0xc

    invoke-direct {v0, v3, v2}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->addSpacing(Landroid/widget/LinearLayout;I)V

    .line 209
    const-string v5, "Choose from Icon Pack"

    const v6, -0xe6892e

    invoke-direct {v0, v0, v5, v6}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->createMaterialButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickIconPackButton:Landroid/widget/Button;

    .line 210
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickIconPackButton:Landroid/widget/Button;

    new-instance v6, Lcom/ailife/ClockSkinCoco/IconPickerActivity$3;

    invoke-direct {v6, v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$3;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v5, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->pickIconPackButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-direct {v0, v3, v2}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->addSpacing(Landroid/widget/LinearLayout;I)V

    .line 220
    const-string v2, "Reset to Default"

    const v5, -0xbdbdbe

    invoke-direct {v0, v0, v2, v5}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->createMaterialButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->resetButton:Landroid/widget/Button;

    .line 221
    iget-object v2, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->resetButton:Landroid/widget/Button;

    new-instance v5, Lcom/ailife/ClockSkinCoco/IconPickerActivity$4;

    invoke-direct {v5, v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$4;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v2, v0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->resetButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->setContentView(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method private loadCurrentIcon()V
    .registers 6

    .line 311
    const-string v0, "IconPickerActivity"

    :try_start_2
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_73

    .line 316
    :try_start_6
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetActivityName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 323
    goto :goto_20

    .line 319
    :catch_14
    move-exception v2

    .line 321
    :try_start_15
    const-string v3, "Failed to load activity icon, using app icon"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 326
    :goto_20
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->componentKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_image_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_66

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_66

    .line 331
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 332
    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    const-string v3, "(Custom Icon Active)"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    move-object v1, v2

    goto :goto_6d

    .line 336
    :cond_66
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    const-string v3, "(Using System Default)"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    :goto_6d
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_72} :catch_73

    .line 343
    goto :goto_80

    .line 340
    :catch_73
    move-exception v1

    .line 341
    const-string v2, "Failed to load current icon"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconLabel:Landroid/widget/TextView;

    const-string v1, "(Error loading icon)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_80
    return-void
.end method

.method private parseComponentInfo(Ljava/lang/String;)V
    .registers 5

    .line 291
    const-string v0, "ComponentInfo{"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 295
    if-lez v2, :cond_41

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    .line 297
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetActivityName:Ljava/lang/String;

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->componentKey:Ljava/lang/String;

    goto :goto_49

    .line 301
    :cond_41
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    .line 302
    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetActivityName:Ljava/lang/String;

    .line 303
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->componentKey:Ljava/lang/String;

    .line 306
    :goto_49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parsed component - Package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Activity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconPickerActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method private pickImage()V
    .registers 4

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "image/*"

    if-lt v0, v1, :cond_13

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.PICK_IMAGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33

    .line 353
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_29

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33

    .line 360
    :cond_29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :goto_33
    const/16 v1, 0x3e9

    :try_start_35
    invoke-virtual {p0, v0, v1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 369
    goto :goto_4b

    .line 366
    :catch_39
    move-exception v0

    .line 367
    const-string v1, "IconPickerActivity"

    const-string v2, "Failed to start image picker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    const-string v0, "No image picker app available"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    :goto_4b
    return-void
.end method

.method private resetIcon()V
    .registers 4

    .line 730
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->componentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_image_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 735
    const-string v0, "Icon reset to default"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 737
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->loadCurrentIcon()V

    .line 739
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->setResult(I)V

    .line 740
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->finish()V

    .line 741
    return-void
.end method

.method private saveCustomImage(Landroid/net/Uri;)V
    .registers 7

    .line 387
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 388
    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 389
    const-string p1, "Failed to open image"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 390
    return-void

    .line 393
    :cond_16
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 394
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 396
    if-nez v2, :cond_29

    .line 397
    const-string p1, "Failed to load image"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 398
    return-void

    .line 402
    :cond_29
    nop

    .line 403
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/16 v3, 0x200

    if-gt p1, v3, :cond_38

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-le p1, v3, :cond_64

    .line 404
    :cond_38
    int-to-float p1, v3

    .line 405
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    .line 406
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    .line 404
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 408
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 409
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 410
    invoke-static {v2, v3, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 414
    :cond_64
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 416
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 417
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 421
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->componentKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_image_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 423
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    const-string p1, "Custom icon saved successfully!"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 428
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->loadCurrentIcon()V

    .line 431
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->currentIconPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/ailife/ClockSkinCoco/IconPickerActivity$5;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$5;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b8} :catch_b9

    .line 443
    goto :goto_df

    .line 439
    :catch_b9
    move-exception p1

    .line 440
    const-string v1, "IconPickerActivity"

    const-string v2, "Error saving custom image"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 444
    :goto_df
    return-void
.end method

.method private saveIconFromPack(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 695
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "f"

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 696
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 697
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 699
    if-nez p3, :cond_27

    .line 700
    const-string p1, "Failed to load icon"

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 701
    return-void

    .line 705
    :cond_27
    const-string v1, "a"

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 706
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 707
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p3, v1, v4

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 710
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 711
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->componentKey:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "_image_data"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 712
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 713
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 715
    const-string p1, "Icon from pack saved!"

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 718
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->loadCurrentIcon()V

    .line 720
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->setResult(I)V

    .line 721
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->finish()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7b} :catch_7c

    .line 726
    goto :goto_a2

    .line 723
    :catch_7c
    move-exception p1

    .line 724
    const-string p2, "IconPickerActivity"

    const-string p3, "Error saving icon from pack"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 727
    :goto_a2
    return-void
.end method

.method private showIconPackDialog(Ljava/lang/Object;Ljava/util/List;)V
    .registers 17

    .line 492
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 495
    nop

    .line 496
    nop

    .line 499
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 501
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    goto :goto_10

    .line 505
    :cond_20
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 506
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 507
    const v3, -0xe1e1e2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 510
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 512
    const/16 v5, 0x10

    const/16 v7, 0x18

    invoke-virtual {v3, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 513
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 515
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 516
    const-string v9, "Select Icon"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 518
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 520
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v1, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 525
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 529
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 530
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " icons"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 532
    const v11, -0xbb7501

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    invoke-virtual {v8, v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 534
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 540
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 541
    invoke-virtual {v3, v7, v1, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 544
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 545
    const-string v11, "Search icons..."

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 546
    const v11, -0x7f000001

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 547
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 548
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 549
    invoke-virtual {v8, v7, v5, v7, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 552
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 553
    const v11, -0xd5d5d6

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 554
    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 555
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 557
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 559
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42400000    # 48.0f

    mul-float v11, v11, v12

    float-to-int v11, v11

    invoke-direct {v2, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 561
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 562
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    new-instance v11, Landroid/widget/GridView;

    invoke-direct {v11, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 567
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 568
    invoke-virtual {v11, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 569
    invoke-virtual {v11, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 570
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 575
    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 578
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    new-instance v2, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;

    invoke-direct {v2, p0, v4, v6, p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$6;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/util/ArrayList;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 624
    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 627
    new-instance v3, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;

    move-object/from16 v7, p2

    invoke-direct {v3, p0, v4, v7, v2}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/util/ArrayList;Ljava/util/List;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 658
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    .line 660
    invoke-virtual {v0, v2, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 664
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_142

    .line 665
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 669
    :cond_142
    new-instance v2, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/ailife/ClockSkinCoco/IconPickerActivity$8;-><init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Class;Landroid/app/AlertDialog;)V

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 684
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14f} :catch_150

    .line 689
    goto :goto_176

    .line 686
    :catch_150
    move-exception v0

    .line 687
    const-string v2, "IconPickerActivity"

    const-string v4, "Error showing dialog"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 690
    :goto_176
    return-void
.end method

.method private showIconPackPicker()V
    .registers 9

    .line 449
    const-string v0, "c"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.ricktop.ClockSkinCoco.MainActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 450
    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    if-nez v2, :cond_20

    .line 453
    const-string v0, "No icon pack selected. Please select one in settings first."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 455
    return-void

    .line 459
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 460
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 461
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 462
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 464
    if-nez v2, :cond_40

    .line 465
    const-string v0, "No icon pack active"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    return-void

    .line 470
    :cond_40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 471
    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 473
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 475
    if-eqz v0, :cond_6b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_6b

    .line 481
    :cond_67
    invoke-direct {p0, v2, v0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->showIconPackDialog(Ljava/lang/Object;Ljava/util/List;)V

    .line 487
    goto :goto_9b

    .line 476
    :cond_6b
    :goto_6b
    const-string v0, "No icons found in current pack"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_74} :catch_75

    .line 477
    return-void

    .line 483
    :catch_75
    move-exception v0

    .line 484
    const-string v2, "IconPickerActivity"

    const-string v3, "Error accessing icon pack"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading icon pack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    :goto_9b
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 376
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_15

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    if-eqz p3, :cond_15

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 378
    if-eqz p1, :cond_15

    .line 379
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->saveCustomImage(Landroid/net/Uri;)V

    .line 382
    :cond_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->requestWindowFeature(I)Z

    .line 66
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->targetAppName:Ljava/lang/String;

    .line 69
    if-nez p1, :cond_2d

    .line 70
    const-string p1, "Error: No component info provided"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->finish()V

    .line 72
    return-void

    .line 76
    :cond_2d
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->parseComponentInfo(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->createUI()V

    .line 79
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/IconPickerActivity;->loadCurrentIcon()V

    .line 80
    return-void
.end method
