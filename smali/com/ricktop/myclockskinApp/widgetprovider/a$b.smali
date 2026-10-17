.class Lcom/ricktop/myclockskinApp/widgetprovider/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/myclockskinApp/widgetprovider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->a:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic c(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/ricktop/myclockskinApp/widgetprovider/a$b;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$b;->b:Landroid/widget/TextView;

    return-object p1
.end method
