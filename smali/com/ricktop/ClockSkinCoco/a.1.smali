.class public Lcom/ricktop/ClockSkinCoco/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/a;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/ricktop/ClockSkinCoco/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/ricktop/ClockSkinCoco/a;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/ClockSkinCoco/a;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/ricktop/ClockSkinCoco/b$b;)V
    .locals 10

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-wide/16 v3, 0x1f4

    if-lt v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-static {v3, v4, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0

    const/4 v0, 0x0

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v3, 0x7f0d0028

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v4, 0x7f0a0126

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/ricktop/ClockSkinCoco/b$b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a0127

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00a1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # Create ChangeIconClickListener with: Activity, packageName, appName, Dialog, ImageView
    new-instance v2, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;

    # Save ImageView first (it's in v4 which we need to reuse)
    move-object v8, v4                                                                   # v8 = ImageView (save original v4)

    # Build ComponentInfo string: "ComponentInfo{packageName/activityName}"
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "ComponentInfo{"
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v9, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;          # v9 = packageName (field e)
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v9, "/"
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v9, p1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;          # v9 = activityName (field a)
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v9, "}"
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4                                                                # v4 = ComponentInfo string

    # Move parameters to consecutive registers for /range invocation
    # Need: v2(this), v3(Activity), v4(ComponentInfo), v5(activityName), v6(Dialog), v7(ImageView)
    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/a;->b:Landroid/app/Activity;        # v3 = Activity
    iget-object v5, p1, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;          # v5 = activity name (field a - class name)
    move-object v6, v1                                                                   # v6 = Dialog
    move-object v7, v8                                                                   # v7 = ImageView (from saved v8)

    invoke-direct/range {v2 .. v7}, Lcom/ailife/ClockSkinCoco/ChangeIconClickListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0197

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    # Create ResetIconClickListener with: Context, packageName, Dialog, ImageView
    new-instance v2, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;
    # v4 still contains ComponentInfo string from above

    # Use v8 (saved ImageView)
    invoke-direct {v2, v3, v4, v1, v8}, Lcom/ailife/ClockSkinCoco/ResetIconClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a019d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ricktop/ClockSkinCoco/a$c;

    invoke-direct {v2, p0, v1}, Lcom/ricktop/ClockSkinCoco/a$c;-><init>(Lcom/ricktop/ClockSkinCoco/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    # Move to Top button
    const v0, 0x7f0a0295

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AppMoveToTopClickListener;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/ailife/ClockSkinCoco/AppMoveToTopClickListener;-><init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    # Move Up button
    const v0, 0x7f0a0296

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AppMoveUpClickListener;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/ailife/ClockSkinCoco/AppMoveUpClickListener;-><init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    # Move Down button
    const v0, 0x7f0a0293

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/ailife/ClockSkinCoco/AppMoveDownClickListener;-><init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    # Move to Bottom button
    const v0, 0x7f0a0294

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;

    iget-object v3, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/ailife/ClockSkinCoco/AppMoveToBottomClickListener;-><init>(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Check if alphabetical sorting is enabled and hide move buttons if so
    new-instance v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;

    iget-object v2, p0, Lcom/ricktop/ClockSkinCoco/a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/ailife/ClockSkinCoco/AppOrderManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->isAlphabeticalSortEnabled()Z

    move-result v0

    if-eqz v0, :skip_hide_buttons

    # Alphabetical sort enabled - hide all 4 move buttons
    const v0, 0x7f0a0295  # Move to Top button ID

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8  # View.GONE

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0296  # Move Up button ID

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0293  # Move Down button ID

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0294  # Move to Bottom button ID

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :skip_hide_buttons

    # app info
    const v0, 0x7f0a0251

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ricktop/ClockSkinCoco/a$d;

    invoke-direct {v2, p0, p1}, Lcom/ricktop/ClockSkinCoco/a$d;-><init>(Lcom/ricktop/ClockSkinCoco/a;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    # uninstall
    const v0, 0x7f0a0252

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/ricktop/ClockSkinCoco/a$e;

    invoke-direct {v2, p0, p1}, Lcom/ricktop/ClockSkinCoco/a$e;-><init>(Lcom/ricktop/ClockSkinCoco/a;Lcom/ricktop/ClockSkinCoco/b$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V



    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
