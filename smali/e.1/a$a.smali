.class abstract Le/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Le/a$a;->a(I)Z

    move-result v0

    sput-boolean v0, Le/a$a;->a:Z

    return-void
.end method

.method static a(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
