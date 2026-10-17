.class public abstract Le/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a$a;,
        Le/a$b;
    }
.end annotation


# direct methods
.method public static a()V
    .locals 2

    sget-boolean v0, Le/a$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find wearable shared library classes. Please add <uses-library android:name=\"com.google.android.wearable\" android:required=\"false\" /> to the application manifest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()I
    .locals 1

    invoke-static {}, Le/a;->a()V

    sget v0, Le/a$b;->a:I

    return v0
.end method
