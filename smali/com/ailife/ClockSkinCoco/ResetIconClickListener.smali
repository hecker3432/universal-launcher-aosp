.class public Lcom/ailife/ClockSkinCoco/ResetIconClickListener;
.super Ljava/lang/Object;
.source "ResetIconClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private iconView:Landroid/widget/ImageView;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->context:Landroid/content/Context;

    .line 23
    # Parse ComponentInfo to get package/activity for the key
    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->extractComponentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->packageName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->dialog:Landroid/app/Dialog;

    .line 25
    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->iconView:Landroid/widget/ImageView;

    .line 26
    return-void
.end method

.method private extractComponentPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 29
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 32
    # Remove "ComponentInfo{" prefix and "}" suffix to get package/activity
    :cond_4
    const-string v0, "ComponentInfo{"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    # Return the full package/activity path (e.g., "com.android.chrome/com.android.chrome.Main")
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 46
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_image_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->context:Landroid/content/Context;

    const-string v0, "Icon reset to default"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_3b

    .line 55
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 57
    :cond_3b
    return-void
.end method
