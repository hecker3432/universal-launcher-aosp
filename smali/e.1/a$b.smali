.class abstract Le/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Le/a$b;->a(I)I

    move-result v0

    sput v0, Le/a$b;->a:I

    return-void
.end method

.method static a(I)I
    .locals 1

    const/16 v0, 0x19

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, LW/a;->a()I

    move-result p0

    return p0
.end method
