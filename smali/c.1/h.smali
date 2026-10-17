.class public Lc/h;
.super Lc/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/c;->a(Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Lc/d;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
