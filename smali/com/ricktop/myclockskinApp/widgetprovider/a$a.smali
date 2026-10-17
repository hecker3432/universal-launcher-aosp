.class Lcom/ricktop/myclockskinApp/widgetprovider/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/myclockskinApp/widgetprovider/a;->C(ILandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:[I

.field final synthetic c:Lcom/ricktop/myclockskinApp/widgetprovider/a;


# direct methods
.method constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/a;[I)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    iput-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->s(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->t(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->t(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {v2}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->s(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    :cond_0
    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->t(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->b:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->s(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    invoke-static {v1}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->y(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;

    invoke-direct {v1, p0, p1}, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$b;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/a$a;[Ljava/lang/String;)V

    const p1, 0x1040013

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$a;

    invoke-direct {v0, p0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$a$a;-><init>(Lcom/ricktop/myclockskinApp/widgetprovider/a$a;)V

    const v1, 0x1040009

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
