.class public final LG0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/g;


# instance fields
.field private final a:[La0/r;

.field private final b:[La0/u;


# direct methods
.method public constructor <init>([La0/r;[La0/u;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    new-array v2, v1, [La0/r;

    iput-object v2, p0, LG0/i;->a:[La0/r;

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [La0/r;

    iput-object p1, p0, LG0/i;->a:[La0/r;

    :goto_0
    if-eqz p2, :cond_1

    array-length p1, p2

    new-array v1, p1, [La0/u;

    iput-object v1, p0, LG0/i;->b:[La0/u;

    invoke-static {p2, v0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    new-array p1, v0, [La0/u;

    iput-object p1, p0, LG0/i;->b:[La0/u;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(La0/s;LG0/e;)V
    .locals 4

    iget-object v0, p0, LG0/i;->b:[La0/u;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, La0/u;->a(La0/s;LG0/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(La0/q;LG0/e;)V
    .locals 4

    iget-object v0, p0, LG0/i;->a:[La0/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, La0/r;->b(La0/q;LG0/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
