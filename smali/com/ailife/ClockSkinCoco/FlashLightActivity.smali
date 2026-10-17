.class public Lcom/ailife/ClockSkinCoco/FlashLightActivity;
.super Landroid/app/Activity;
.source "FlashLightActivity.java"


# instance fields
.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    
    const v0, 0x7f0d0074 #flash light activity

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v2, 0x7f0a0256 # flashlight activity layout

    invoke-virtual {p0, v2}, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/FlashLightActivity;->view:Landroid/view/View;

    new-instance v3, Lcom/ailife/ClockSkinCoco/FlashLightActivity$1;

    invoke-direct {v3, p0}, Lcom/ailife/ClockSkinCoco/FlashLightActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/FlashLightActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
