.class Lw/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Lw/o;


# direct methods
.method public constructor <init>(Lw/o;Lv/e;Lu/d;I)V
    .locals 0

    iput-object p1, p0, Lw/o$a;->h:Lw/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lw/o$a;->a:Ljava/lang/ref/WeakReference;

    iget-object p1, p2, Lv/e;->I:Lv/d;

    invoke-virtual {p3, p1}, Lu/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lw/o$a;->b:I

    iget-object p1, p2, Lv/e;->J:Lv/d;

    invoke-virtual {p3, p1}, Lu/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lw/o$a;->c:I

    iget-object p1, p2, Lv/e;->K:Lv/d;

    invoke-virtual {p3, p1}, Lu/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lw/o$a;->d:I

    iget-object p1, p2, Lv/e;->L:Lv/d;

    invoke-virtual {p3, p1}, Lu/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lw/o$a;->e:I

    iget-object p1, p2, Lv/e;->M:Lv/d;

    invoke-virtual {p3, p1}, Lu/d;->x(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lw/o$a;->f:I

    iput p4, p0, Lw/o$a;->g:I

    return-void
.end method
