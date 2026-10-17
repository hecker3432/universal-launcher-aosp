.class public abstract LY/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements LY/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY/b$a$a;
    }
.end annotation


# direct methods
.method public static i(Landroid/os/IBinder;)LY/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oppo.oiface.IOIfaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LY/b;

    if-eqz v1, :cond_1

    check-cast v0, LY/b;

    return-object v0

    :cond_1
    new-instance v0, LY/b$a$a;

    invoke-direct {v0, p0}, LY/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
