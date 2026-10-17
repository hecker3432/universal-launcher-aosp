.class public Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;
.super Landroid/app/Activity;
.source "PasswordSetupActivity.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private confirmPasswordInput:Landroid/widget/EditText;

.field private instructionText:Landroid/widget/TextView;

.field private manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

.field private passwordInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->updateInstructionText(Ljava/lang/String;)V

    return-void
.end method

.method private savePassword()V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 204
    const-string v0, "Please enter a password"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void

    .line 208
    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_36

    .line 209
    const-string v0, "Password must be at least 4 digits"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    return-void

    .line 213
    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 214
    const-string v0, "Passwords do not match"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    return-void

    .line 219
    :cond_46
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {v1, v0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->setPassword(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->lockSettings()V

    .line 221
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    invoke-virtual {v1}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->saveConfiguration()V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password set! Settings are now hidden. Use *#*#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#*#* to unlock."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->finish()V

    .line 228
    return-void
.end method

.method private setupUI()V
    .registers 16

    .line 41
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 45
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    const/16 v3, 0x20

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    const v3, -0xdededf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 51
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v4, "Set Password Protection"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    const/4 v5, 0x0

    const/16 v6, 0x18

    invoke-virtual {v3, v5, v5, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v7, "Protect the Hide Apps settings with a password. The settings will be hidden until you unlock them via the dialer."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    const v8, -0x444445

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    const/16 v8, 0x10

    invoke-virtual {v3, v5, v5, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v9, "Password (at least 4 digits):"

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const/16 v9, 0x8

    invoke-virtual {v3, v5, v5, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    .line 78
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    const-string v10, "Enter password"

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    const v10, -0x99999a

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 80
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 81
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    const/16 v11, 0x12

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 82
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 83
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    const v12, -0xbdbdbe

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v3, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v3, v5, v5, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    iget-object v14, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    const-string v14, "Confirm Password:"

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-virtual {v3, v5, v5, v5, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    .line 102
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    const-string v9, "Confirm password"

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 104
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 105
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 106
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 107
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 108
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {v3, v5, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 113
    iget-object v9, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->confirmPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    const v9, -0xea9a40

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 120
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 121
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v9, v5, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v9, "HOW TO UNLOCK:"

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    const/4 v4, 0x0

    invoke-virtual {v6, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 133
    const/16 v1, 0xc

    invoke-virtual {v6, v5, v5, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->instructionText:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->instructionText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->instructionText:Landroid/widget/TextView;

    const v4, -0x1c0d03

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->instructionText:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 140
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->updateInstructionText(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->instructionText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->passwordInput:Landroid/widget/EditText;

    new-instance v3, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$1;

    invoke-direct {v3, p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 164
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnCancel:Landroid/widget/Button;

    .line 165
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnCancel:Landroid/widget/Button;

    const-string v4, "Cancel"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnCancel:Landroid/widget/Button;

    new-instance v4, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {v3, v5, v5, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    iget-object v4, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnSave:Landroid/widget/Button;

    .line 176
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnSave:Landroid/widget/Button;

    const-string v4, "Set Password"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnSave:Landroid/widget/Button;

    new-instance v4, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity$$ExternalSyntheticLambda1;-><init>(Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->btnSave:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->setContentView(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method private updateInstructionText(Ljava/lang/String;)V
    .registers 5

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "1234"

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->instructionText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1. Open the Dialer app\n\n2. Enter this code:\n   *#*#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "#*#*\n\n3. The Hide Apps settings will reappear\n\nIMPORTANT: This password is ONE-TIME USE.\nAfter unlocking, the password is deleted.\nTo hide settings again, set a new password."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method


# virtual methods
.method synthetic lambda$setupUI$0$com-ailife-ClockSkinCoco-hideapps-PasswordSetupActivity(Landroid/view/View;)V
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->finish()V

    return-void
.end method

.method synthetic lambda$setupUI$1$com-ailife-ClockSkinCoco-hideapps-PasswordSetupActivity(Landroid/view/View;)V
    .registers 2

    .line 177
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->savePassword()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const p1, 0x1030224

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->setTheme(I)V

    .line 34
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;->getInstance(Landroid/content/Context;)Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->manager:Lcom/ailife/ClockSkinCoco/hideapps/HideAppsManager;

    .line 36
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/PasswordSetupActivity;->setupUI()V

    .line 37
    return-void
.end method
