.class public abstract Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/MotionEvent;)F
    .locals 1

    invoke-static {}, Ld/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LX/a;->a(Landroid/view/MotionEvent;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    invoke-static {}, Ld/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LX/a;->b(Landroid/content/Context;)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x42800000    # 64.0f

    return p0
.end method

.method public static c(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Ld/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LX/a;->c(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d()Z
    .locals 2

    invoke-static {}, Le/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
