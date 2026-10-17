.class Lk/c$d;
.super Lk/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/vectordrawable/graphics/drawable/f;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lk/c$g;-><init>(Lk/c$a;)V

    iput-object p1, p0, Lk/c$d;->a:Landroidx/vectordrawable/graphics/drawable/f;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lk/c$d;->a:Landroidx/vectordrawable/graphics/drawable/f;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/f;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lk/c$d;->a:Landroidx/vectordrawable/graphics/drawable/f;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/f;->stop()V

    return-void
.end method
