.class public abstract Ly/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/v$c;,
        Ly/v$a;,
        Ly/v$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Notification;I)Ly/v$a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object p0, p0, p1

    invoke-static {p0}, Ly/v;->b(Landroid/app/Notification$Action;)Ly/v$a;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.support.actionExtras"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iget p1, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v1, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v0, p0}, Ly/w;->e(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Ly/v$a;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/app/Notification$Action;)Ly/v$a;
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Ly/j;->a(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v12, v3

    goto :goto_2

    :cond_0
    array-length v5, v1

    new-array v5, v5, [Ly/x;

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_2

    aget-object v7, v1, v6

    new-instance v16, Ly/x;

    invoke-static {v7}, Ly/q;->a(Landroid/app/RemoteInput;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ly/r;->a(Landroid/app/RemoteInput;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v7}, Ly/s;->a(Landroid/app/RemoteInput;)[Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v7}, Ly/t;->a(Landroid/app/RemoteInput;)Z

    move-result v12

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_1

    invoke-static {v7}, Ly/u;->a(Landroid/app/RemoteInput;)I

    move-result v8

    move v13, v8

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-static {v7}, Ly/k;->a(Landroid/app/RemoteInput;)Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Ly/x;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v16, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v12, v5

    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const-string v6, "android.support.allowGeneratedReplies"

    const/4 v7, 0x1

    if-lt v1, v5, :cond_5

    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static/range {p0 .. p0}, Ly/l;->a(Landroid/app/Notification$Action;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    :goto_4
    move v14, v5

    goto :goto_5

    :cond_5
    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_4

    :goto_5
    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.support.action.showsUserInterface"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_6

    invoke-static/range {p0 .. p0}, Ly/n;->a(Landroid/app/Notification$Action;)I

    move-result v5

    :goto_6
    move v15, v5

    goto :goto_7

    :cond_6
    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.support.action.semanticAction"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_6

    :goto_7
    if-lt v1, v2, :cond_7

    invoke-static/range {p0 .. p0}, Ly/o;->a(Landroid/app/Notification$Action;)Z

    move-result v4

    move/from16 v17, v4

    goto :goto_8

    :cond_7
    const/16 v17, 0x0

    :goto_8
    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    invoke-static/range {p0 .. p0}, Ly/p;->a(Landroid/app/Notification$Action;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_8

    iget v8, v0, Landroid/app/Notification$Action;->icon:I

    if-eqz v8, :cond_8

    new-instance v1, Ly/v$a;

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Ly/v$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ly/x;[Ly/x;ZIZZ)V

    return-object v1

    :cond_8
    invoke-static/range {p0 .. p0}, Ly/p;->a(Landroid/app/Notification$Action;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_9
    move-object v8, v3

    goto :goto_a

    :cond_9
    invoke-static/range {p0 .. p0}, Ly/p;->a(Landroid/app/Notification$Action;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    goto :goto_9

    :goto_a
    new-instance v1, Ly/v$a;

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Ly/v$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ly/x;[Ly/x;ZIZZ)V

    return-object v1

    :cond_a
    new-instance v1, Ly/v$a;

    iget v8, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static/range {p0 .. p0}, Ly/m;->a(Landroid/app/Notification$Action;)Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Ly/v$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Ly/x;[Ly/x;ZIZZ)V

    return-object v1
.end method

.method public static c(Landroid/app/Notification;)I
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method static e(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/app/Notification;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    check-cast v3, Landroid/app/Notification;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1

    :cond_2
    :goto_1
    check-cast v0, [Landroid/app/Notification;

    return-object v0
.end method
