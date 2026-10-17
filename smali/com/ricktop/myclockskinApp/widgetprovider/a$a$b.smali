.class Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;


# direct methods
.method constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/a$a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iput-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p2, p2, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "delete skin"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->b:[Ljava/lang/String;

    aget-object p1, p1, v0

    const-string p2, "/clock_skin_model.png"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->b:[Ljava/lang/String;

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->b:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p2, p2, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {p2, p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->u(Lcom/ricktop/myclockskinApp/widgetprovider/a;Ljava/io/File;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p1, p1, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->v(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p2, p2, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    aget p2, p2, v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p1, p1, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-virtual {p1}, Landroidx/viewpager/widget/a;->i()V

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p1, p1, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->x(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p2, p2, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {p2}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->w(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Lcom/ricktop/myclockskinApp/widgetprovider/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/H;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p1, p1, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->x(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Lcom/ricktop/ClockSkinCoco/ClickableViewPager;

    move-result-object p1

    iget-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a$a;

    iget-object p2, p2, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    aget p2, p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ricktop/ClockSkinCoco/H;->setCurrentItem(I)V

    return-void
.end method
