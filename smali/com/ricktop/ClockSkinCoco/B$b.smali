.class Lcom/ricktop/ClockSkinCoco/B$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/B;->c0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/B;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/B;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->F1(Lcom/ricktop/ClockSkinCoco/B;)Z

    move-result p1

    const-class v0, Lcom/ricktop/ClockSkinCoco/ScreenSensorService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v3}, Lcom/ricktop/ClockSkinCoco/B;->G1(Lcom/ricktop/ClockSkinCoco/B;Z)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->H1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f080114

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100a1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v4}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v2}, Lcom/ricktop/ClockSkinCoco/B;->G1(Lcom/ricktop/ClockSkinCoco/B;Z)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->H1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f080115

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1100a2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v4}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :sswitch_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->L1(Lcom/ricktop/ClockSkinCoco/B;)V

    goto/16 :goto_5

    :sswitch_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->I1(Lcom/ricktop/ClockSkinCoco/B;)V

    goto/16 :goto_5

    :sswitch_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->e2(Lcom/ricktop/ClockSkinCoco/B;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->f2(Lcom/ricktop/ClockSkinCoco/B;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v2}, Lcom/ricktop/ClockSkinCoco/B;->g2(Lcom/ricktop/ClockSkinCoco/B;Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v2}, Lcom/ricktop/ClockSkinCoco/B;->E1(Lcom/ricktop/ClockSkinCoco/B;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->e2(Lcom/ricktop/ClockSkinCoco/B;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->f2(Lcom/ricktop/ClockSkinCoco/B;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v3}, Lcom/ricktop/ClockSkinCoco/B;->g2(Lcom/ricktop/ClockSkinCoco/B;Z)Z

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v3}, Lcom/ricktop/ClockSkinCoco/B;->E1(Lcom/ricktop/ClockSkinCoco/B;Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1, v2}, Lcom/ricktop/ClockSkinCoco/B;->E1(Lcom/ricktop/ClockSkinCoco/B;Z)V

    :goto_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->d2(Lcom/ricktop/ClockSkinCoco/B;)V

    goto/16 :goto_5

    :sswitch_4
    :try_start_0
    const-string p1, "ringer mode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v5}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_2
    const-string p1, "  mode after"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/B;->c2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->d2(Lcom/ricktop/ClockSkinCoco/B;)V

    goto/16 :goto_5

    :sswitch_5
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->J1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->x1(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "No Acitivity"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->K1(Lcom/ricktop/ClockSkinCoco/B;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->b2(Lcom/ricktop/ClockSkinCoco/B;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110087

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :sswitch_6
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->M1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result p1

    add-int/2addr p1, v2

    const/4 v0, 0x4

    if-le p1, v0, :cond_6

    goto :goto_4

    :cond_6
    move v3, p1

    :goto_4
    if-nez v3, :cond_7

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/B;->P1(Lcom/ricktop/ClockSkinCoco/B;I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Q1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_7
    if-ne v3, v2, :cond_8

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->R1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/ricktop/ClockSkinCoco/B;->P1(Lcom/ricktop/ClockSkinCoco/B;I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Q1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_8
    if-ne v3, v1, :cond_9

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->R1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v0

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v2}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/B;->P1(Lcom/ricktop/ClockSkinCoco/B;I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Q1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_9
    const/4 p1, 0x3

    if-ne v3, p1, :cond_a

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/B;->R1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v2

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {v3}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->N1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/ricktop/ClockSkinCoco/B;->P1(Lcom/ricktop/ClockSkinCoco/B;I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Q1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_a
    if-ne v3, v0, :cond_b

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->R1(Lcom/ricktop/ClockSkinCoco/B;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/B;->P1(Lcom/ricktop/ClockSkinCoco/B;I)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/B;->Q1(Lcom/ricktop/ClockSkinCoco/B;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/B$b;->b:Lcom/ricktop/ClockSkinCoco/B;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0076 -> :sswitch_6
        0x7f0a0155 -> :sswitch_5
        0x7f0a0169 -> :sswitch_4
        0x7f0a016a -> :sswitch_3
        0x7f0a01de -> :sswitch_2
        0x7f0a01df -> :sswitch_1
        0x7f0a01e1 -> :sswitch_0
    .end sparse-switch
.end method
