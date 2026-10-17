.class public Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lu/f;

.field b:Lu/f;

.field c:Lu/f;

.field d:[Lu/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu/g;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lu/g;-><init>(I)V

    iput-object v0, p0, Lu/c;->a:Lu/f;

    new-instance v0, Lu/g;

    invoke-direct {v0, v1}, Lu/g;-><init>(I)V

    iput-object v0, p0, Lu/c;->b:Lu/f;

    new-instance v0, Lu/g;

    invoke-direct {v0, v1}, Lu/g;-><init>(I)V

    iput-object v0, p0, Lu/c;->c:Lu/f;

    const/16 v0, 0x20

    new-array v0, v0, [Lu/i;

    iput-object v0, p0, Lu/c;->d:[Lu/i;

    return-void
.end method
