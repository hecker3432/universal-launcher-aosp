.class public final Lcom/ailife/ClockSkinTransfer/MainActivity;
.super Li/b;


# instance fields
.field private k:Lcom/ailife/ClockSkinTransfer/a123/a;

.field public ip:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li/b;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->l:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->n:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->o:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->p:I

    return-void
.end method

.method private final varargs a([Lcom/ailife/ClockSkinTransfer/b456/e/c;)I
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/ailife/ClockSkinTransfer/b456/e/c;->b()I

    move-result v3

    if-gt v4, v3, :cond_1

    :goto_1
    invoke-direct {p0, v4}, Lcom/ailife/ClockSkinTransfer/MainActivity;->d(I)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    if-eq v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static bridge synthetic a(Lcom/ailife/ClockSkinTransfer/MainActivity;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->a(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/support/v7/app/b$a;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    move-result-object p1

    const-string v0, "OK"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2}, Landroid/support/v7/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object p1

    const-string p2, "Cancel"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/b;->show()V

    return-void
.end method

.method public static final synthetic a(Lcom/ailife/ClockSkinTransfer/MainActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->l()Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    return v3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ailife/ClockSkinTransfer/MainActivity$a;-><init>(Lcom/ailife/ClockSkinTransfer/MainActivity;Ljava/lang/String;I)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p3, v0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return v3

    :cond_0
    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v3

    invoke-static {v0, p3, p2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v3

    :cond_1
    return v1
.end method

.method private final a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public static final synthetic b(Lcom/ailife/ClockSkinTransfer/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->k()V

    return-void
.end method

.method private final b(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final d(I)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private final k()V
    .locals 11

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->d()V

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/ailife/ClockSkinTransfer/a123/a;

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->a(Lcom/ailife/ClockSkinTransfer/MainActivity;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v0, 0x7f0a01ed

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "WI-FI/Data not active!\nPlease enable Wi-Fi/Data and click here to retry"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string v4, "com.ricktop.ClockSkinCoco"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/ailife/ClockSkinTransfer/MainActivity;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v5, "com.ricktop.ClockSkinCoco"

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/ailife/ClockSkinTransfer/MainActivity;->b(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0

    const/4 v4, 0x1 ##remove launcher detection (installed)

    const/4 v5, 0x1 ##remove launcher detection (set as home screen)

    new-instance v6, Lcom/ailife/ClockSkinTransfer/d;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "applicationContext"

    invoke-static {v7, v8}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/ailife/ClockSkinTransfer/b456/e/c;

    new-instance v9, Lcom/ailife/ClockSkinTransfer/b456/e/c;

    const/16 v10, 0x50

    invoke-direct {v9, v10, v10}, Lcom/ailife/ClockSkinTransfer/b456/e/c;-><init>(II)V

    aput-object v9, v8, v2

    const/16 v2, 0x1f90

    new-instance v9, Lcom/ailife/ClockSkinTransfer/b456/e/c;

    const/16 v10, 0x1f9a

    invoke-direct {v9, v2, v10}, Lcom/ailife/ClockSkinTransfer/b456/e/c;-><init>(II)V

    aput-object v9, v8, v0

    invoke-direct {p0, v8}, Lcom/ailife/ClockSkinTransfer/MainActivity;->a([Lcom/ailife/ClockSkinTransfer/b456/e/c;)I

    move-result v0

    invoke-direct {v6, v7, v4, v5, v0}, Lcom/ailife/ClockSkinTransfer/d;-><init>(Landroid/content/Context;ZZI)V

    check-cast v6, Lcom/ailife/ClockSkinTransfer/a123/a;

    iput-object v6, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->c()V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/ailife/ClockSkinTransfer/a123/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->ip:Ljava/lang/String;
    
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect your browser to:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a01ed

    invoke-virtual {p0, v1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "text"

    invoke-static {v1, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # Generate and display QR code
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->ip:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/ailife/ClockSkinTransfer/QRCodeGenerator;->generateQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_qr_skip

    const v1, 0x7f0a011d

    invoke-virtual {p0, v1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_qr_skip

    return-void
.end method

.method private final l()Z
    .locals 5

    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SettingController;->checkStoragePermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 11

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sAddr"

    invoke-static {v2, v3}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    if-nez v3, :cond_1

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v6, 0x25

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/ailife/ClockSkinTransfer/b456/g/d;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v0, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-object p1

    :cond_5
    new-instance p1, Lcom/ailife/ClockSkinTransfer/b456/c;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    const-string p1, ""

    return-object p1
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->q:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "modded by AILIFE"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V



    invoke-super {p0, p1}, Li/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "decorView"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0d0077

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->setContentView(I)V

    const p1, 0x7f0a0275

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinTransfer/MainActivity$c;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinTransfer/MainActivity$c;-><init>(Lcom/ailife/ClockSkinTransfer/MainActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0276

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/ailife/ClockSkinTransfer/MainActivity$d;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinTransfer/MainActivity$d;-><init>(Lcom/ailife/ClockSkinTransfer/MainActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->k()V

    goto :goto_0

    :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f0a01ed

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Not enough permissions granted"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a01ed

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ailife/ClockSkinTransfer/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinTransfer/MainActivity$b;-><init>(Lcom/ailife/ClockSkinTransfer/MainActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Li/b;->onDestroy()V

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/a123/a;->d()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/ailife/ClockSkinTransfer/a123/a;

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const-string p1, "permissions"

    invoke-static {p2, p1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "grantResults"

    invoke-static {p3, p1}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    aget v2, p3, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    const/4 p2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ailife/ClockSkinTransfer/a123/a;->d()V

    :cond_3
    const/4 p1, 0x0

    check-cast p1, Lcom/ailife/ClockSkinTransfer/a123/a;

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity;->k:Lcom/ailife/ClockSkinTransfer/a123/a;

    :cond_4
    const p1, 0x7f0a01ed

    invoke-virtual {p0, p1}, Lcom/ailife/ClockSkinTransfer/MainActivity;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "text"

    invoke-static {p1, p2}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Not enough permissions granted"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->l()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->k()V

    :cond_6
    :goto_3
    return-void
.end method
