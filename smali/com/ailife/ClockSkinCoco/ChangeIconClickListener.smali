.class public Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;
.super Ljava/lang/Object;
.source "ChangeIconClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_ICON_PICKER:I = 0x7d1


# instance fields
.field private activity:Landroid/app/Activity;

.field private appName:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private iconView:Landroid/widget/ImageView;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->activity:Landroid/app/Activity;

    .line 24
    # Store the full ComponentInfo string (not just package name)
    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->packageName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->appName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->dialog:Landroid/app/Dialog;

    .line 27
    iput-object p5, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->iconView:Landroid/widget/ImageView;

    .line 28
    return-void
.end method

.method private extractPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 31
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_4
    const-string v0, "ComponentInfo{"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 37
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 38
    if-lez v0, :cond_20

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_20
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 49
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->activity:Landroid/app/Activity;

    const-string v1, "com.ailife.ClockSkinCoco.IconPickerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "package_name"

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "app_name"

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->activity:Landroid/app/Activity;

    const/16 v1, 0x7d1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2a

    .line 57
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 61
    :cond_2a
    goto :goto_2f

    .line 59
    :catch_2b
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :goto_2f
    return-void
.end method
