.class Lcom/ricktop/myclockskinApp/widgetprovider/a$c;
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ricktop/myclockskinApp/widgetprovider/a;


# direct methods
.method constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$c;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    iput-object p2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v2, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ailife/ClockSkinCoco/WatchFaceUtil;->togglePin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    const-string v2, "unpin"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0

    const-string v2, "pin"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    # Get the adapter and context
    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/a$c;->c:Lcom/ricktop/myclockskinApp/widgetprovider/a;

    # Get Activity context from adapter
    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/a;->y(Lcom/ricktop/myclockskinApp/widgetprovider/a;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    # Recreate activity to reload data with pinned items sorted to front
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    return-void
.end method
