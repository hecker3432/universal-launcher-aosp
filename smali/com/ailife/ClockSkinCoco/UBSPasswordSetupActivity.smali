.class public Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;
.super Landroid/app/Activity;
.source "UBSPasswordSetupActivity.java"


# static fields
.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final MORSE_LONG_PRESS_THRESHOLD:I = 0x12c


# instance fields
.field private clearButton:Landroid/widget/Button;

.field private currentPassword:Ljava/lang/StringBuilder;

.field private doneButton:Landroid/widget/Button;

.field private firstPassword:Ljava/lang/String;

.field private inputContainer:Landroid/widget/FrameLayout;

.field private isConfirmingPassword:Z

.field private passwordDisplay:Landroid/widget/TextView;

.field private passwordType:Ljava/lang/String;

.field private statusText:Landroid/widget/TextView;

.field private touchDownTime:J

.field private tutorialText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->firstPassword:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->isConfirmingPassword:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->touchDownTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->clearPassword()V

    return-void
.end method

.method static synthetic access$100(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->onDonePressed()V

    return-void
.end method

.method static synthetic access$200(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->appendToPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->touchDownTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;J)J
    .registers 3

    .line 21
    iput-wide p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->touchDownTime:J

    return-wide p1
.end method

.method private appendToPassword(Ljava/lang/String;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->updatePasswordDisplay()V

    .line 171
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->updateDoneButton()V

    .line 172
    return-void
.end method

.method private clearPassword()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 190
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->updatePasswordDisplay()V

    .line 191
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->updateDoneButton()V

    .line 192
    return-void
.end method

.method private onDonePressed()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    .line 82
    const-string v0, "Password too short (minimum 4)"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    return-void

    .line 87
    :cond_14
    iget-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->isConfirmingPassword:Z

    if-nez v0, :cond_33

    .line 89
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->firstPassword:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->isConfirmingPassword:Z

    .line 91
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->statusText:Landroid/widget/TextView;

    const-string v1, "Enter same password again to confirm"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->clearPassword()V

    goto :goto_53

    .line 96
    :cond_33
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->firstPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 97
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->firstPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->savePassword(Ljava/lang/String;)V

    goto :goto_53

    .line 99
    :cond_47
    const-string v0, "Passwords don\'t match. Try again."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->resetPasswordEntry()V

    .line 104
    :goto_53
    return-void
.end method

.method private resetPasswordEntry()V
    .registers 3

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->firstPassword:Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->isConfirmingPassword:Z

    .line 197
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->statusText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->clearPassword()V

    .line 199
    return-void
.end method

.method private savePassword(Ljava/lang/String;)V
    .registers 4

    .line 202
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    const-string v1, "ultra_battery_saver_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    const-string p1, "Password saved"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 208
    invoke-virtual {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->finish()V

    .line 209
    return-void
.end method

.method private setupKeypadInput()V
    .registers 8

    .line 107
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->tutorialText:Landroid/widget/TextView;

    const-string v1, "Tap numbers to create password.\n\nScreen is divided into 9 zones like a phone keypad:\n1 2 3\n4 5 6\n7 8 9\n\nMinimum 4 digits required."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->inputContainer:Landroid/widget/FrameLayout;

    .line 114
    const v2, 0x7f0d008b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->inputContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    .line 124
    nop

    :goto_22
    if-ge v3, v1, :cond_3c

    .line 125
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 127
    new-instance v6, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;

    invoke-direct {v6, p0, v5}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$3;-><init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    move v3, v4

    goto :goto_22

    .line 134
    :cond_3c
    return-void

    nop

    :array_3e
    .array-data 4
        0x7f0a02af
        0x7f0a02b0
        0x7f0a02b1
        0x7f0a02b2
        0x7f0a02b3
        0x7f0a02b4
        0x7f0a02b5
        0x7f0a02b6
        0x7f0a02b7
    .end array-data
.end method

.method private setupMorseInput()V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->tutorialText:Landroid/widget/TextView;

    const-string v1, "Short tap = 0\nLong tap (>300ms) = 1\n\nMinimum 4 characters required."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->inputContainer:Landroid/widget/FrameLayout;

    .line 142
    const v2, 0x7f0d008c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->inputContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    const v1, 0x7f0a02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 146
    new-instance v1, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;

    invoke-direct {v1, p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$4;-><init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    return-void
.end method

.method private updateDoneButton()V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->doneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method private updatePasswordDisplay()V
    .registers 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 178
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->currentPassword:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 180
    :cond_20
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->passwordDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const p1, 0x7f0d008a

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->setContentView(I)V

    .line 45
    const p1, 0x7f0a02be

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->tutorialText:Landroid/widget/TextView;

    .line 46
    const p1, 0x7f0a02bc

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->passwordDisplay:Landroid/widget/TextView;

    .line 47
    const p1, 0x7f0a02bd

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->statusText:Landroid/widget/TextView;

    .line 48
    const p1, 0x7f0a02b8

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->clearButton:Landroid/widget/Button;

    .line 49
    const p1, 0x7f0a02b9

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->doneButton:Landroid/widget/Button;

    .line 50
    const p1, 0x7f0a02ba

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->inputContainer:Landroid/widget/FrameLayout;

    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 54
    const-string v0, "ultra_battery_saver_password_type"

    const-string v1, "keypad"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->passwordType:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->passwordType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 58
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->setupKeypadInput()V

    goto :goto_68

    .line 60
    :cond_65
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->setupMorseInput()V

    .line 64
    :goto_68
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->clearButton:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$1;-><init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;->doneButton:Landroid/widget/Button;

    new-instance v0, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$2;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity$2;-><init>(Lcom/ailife/ClockSkinCoco/UBSPasswordSetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
