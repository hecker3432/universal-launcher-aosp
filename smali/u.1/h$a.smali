.class Lu/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/h;->F(Lu/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/h;


# direct methods
.method constructor <init>(Lu/h;)V
    .locals 0

    iput-object p1, p0, Lu/h$a;->a:Lu/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/i;Lu/i;)I
    .locals 0

    iget p1, p1, Lu/i;->c:I

    iget p2, p2, Lu/i;->c:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lu/i;

    check-cast p2, Lu/i;

    invoke-virtual {p0, p1, p2}, Lu/h$a;->a(Lu/i;Lu/i;)I

    move-result p1

    return p1
.end method
