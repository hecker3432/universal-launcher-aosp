.class public final Ly/v$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly/v$c;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Ly/v$c;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly/v$c;->d:Ljava/util/ArrayList;

    const v0, 0x800005

    iput v0, p0, Ly/v$c;->g:I

    const/4 v0, -0x1

    iput v0, p0, Ly/v$c;->h:I

    const/4 v0, 0x0

    iput v0, p0, Ly/v$c;->i:I

    const/16 v0, 0x50

    iput v0, p0, Ly/v$c;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly/v$c;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Ly/v$c;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ly/v$c;->d:Ljava/util/ArrayList;

    const v1, 0x800005

    iput v1, p0, Ly/v$c;->g:I

    const/4 v2, -0x1

    iput v2, p0, Ly/v$c;->h:I

    const/4 v3, 0x0

    iput v3, p0, Ly/v$c;->i:I

    const/16 v4, 0x50

    iput v4, p0, Ly/v$c;->k:I

    invoke-static {p1}, Ly/v;->d(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v5, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    const-string v5, "actions"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v6, [Ly/v$a;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-lt v9, v10, :cond_1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    invoke-static {v9}, Ly/v;->b(Landroid/app/Notification$Action;)Ly/v$a;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-static {v9}, Ly/w;->c(Landroid/os/Bundle;)Ly/v$a;

    move-result-object v9

    aput-object v9, v7, v8

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Ly/v$c;->a:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_3
    const-string v5, "flags"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ly/v$c;->b:I

    const-string v0, "displayIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Ly/v$c;->c:Landroid/app/PendingIntent;

    const-string v0, "pages"

    invoke-static {p1, v0}, Ly/v;->e(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Ly/v$c;->d:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Ly/v$c;->e:Landroid/graphics/Bitmap;

    const-string v0, "contentIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ly/v$c;->f:I

    const-string v0, "contentIconGravity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ly/v$c;->g:I

    const-string v0, "contentActionIndex"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ly/v$c;->h:I

    const-string v0, "customSizePreset"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ly/v$c;->i:I

    const-string v0, "customContentHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ly/v$c;->j:I

    const-string v0, "gravity"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ly/v$c;->k:I

    const-string v0, "hintScreenTimeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ly/v$c;->l:I

    const-string v0, "dismissalId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly/v$c;->m:Ljava/lang/String;

    const-string v0, "bridgeTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly/v$c;->n:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Ly/v$c;
    .locals 3

    new-instance v0, Ly/v$c;

    invoke-direct {v0}, Ly/v$c;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ly/v$c;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ly/v$c;->a:Ljava/util/ArrayList;

    iget v1, p0, Ly/v$c;->b:I

    iput v1, v0, Ly/v$c;->b:I

    iget-object v1, p0, Ly/v$c;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Ly/v$c;->c:Landroid/app/PendingIntent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ly/v$c;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ly/v$c;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Ly/v$c;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Ly/v$c;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Ly/v$c;->f:I

    iput v1, v0, Ly/v$c;->f:I

    iget v1, p0, Ly/v$c;->g:I

    iput v1, v0, Ly/v$c;->g:I

    iget v1, p0, Ly/v$c;->h:I

    iput v1, v0, Ly/v$c;->h:I

    iget v1, p0, Ly/v$c;->i:I

    iput v1, v0, Ly/v$c;->i:I

    iget v1, p0, Ly/v$c;->j:I

    iput v1, v0, Ly/v$c;->j:I

    iget v1, p0, Ly/v$c;->k:I

    iput v1, v0, Ly/v$c;->k:I

    iget v1, p0, Ly/v$c;->l:I

    iput v1, v0, Ly/v$c;->l:I

    iget-object v1, p0, Ly/v$c;->m:Ljava/lang/String;

    iput-object v1, v0, Ly/v$c;->m:Ljava/lang/String;

    iget-object v1, p0, Ly/v$c;->n:Ljava/lang/String;

    iput-object v1, v0, Ly/v$c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ly/v$c;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly/v$c;->a()Ly/v$c;

    move-result-object v0

    return-object v0
.end method
