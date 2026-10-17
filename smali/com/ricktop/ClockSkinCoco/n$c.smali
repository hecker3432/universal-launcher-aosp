.class Lcom/ricktop/ClockSkinCoco/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/n;->i(Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/n;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/n;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$c;->c:Lcom/ricktop/ClockSkinCoco/n;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/n$c;->b:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$c;->c:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->c(Lcom/ricktop/ClockSkinCoco/n;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/ricktop/ClockSkinCoco/n$c;->b:[Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/ricktop/ClockSkinCoco/n$c;->c:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p3}, Lcom/ricktop/ClockSkinCoco/n;->b(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ricktop/ClockSkinCoco/m$a;->f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$c;->c:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->b(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object p2

    iget-object p4, p0, Lcom/ricktop/ClockSkinCoco/n$c;->b:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p4, p3

    invoke-virtual {p2, p3}, Lcom/ricktop/ClockSkinCoco/m$a;->a(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ricktop/ClockSkinCoco/n;->f(Lcom/ricktop/ClockSkinCoco/n;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
