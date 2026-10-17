.class Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ricktop/ClockSkinCoco/ClickableViewPager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;


# direct methods
.method constructor <init>(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    sget-object v0, Landroid/content/Intent;->ACTION_VIEW:Ljava/lang/String;

    const-string v1, "https://chujalt.com/jb.html"
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1

    # Create the Intent with ACTION_VIEW and Uri
    new-instance v2, Landroid/content/Intent;
    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    # Add FLAG_ACTIVITY_NEW_TASK
    sget v1, Landroid/content/Intent;->FLAG_ACTIVITY_NEW_TASK:I  # Load the flag value
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    # Start the activity (using the current Activity as Context)
    # Assuming this method is inside an Activity (p0 = "this" Activity instance)
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
    :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    const-class v2, Lcom/ailife/ClockSkinTransfer/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
    :cond_1


    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;->c(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "changeData"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnItem click"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "path"

    iget-object v4, v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "position"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "watch_index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "watch_path"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    # Save the clock skin data
    invoke-static {v0}, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->b(Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;)V

    # Create broadcast intent to change watch face
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.watchengine.changeface"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    # Add the watch face path as "faceName" extra
    const-string v3, "faceName"

    iget-object v0, v0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # Send the broadcast
    iget-object v0, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # Finish the activity
    iget-object p1, p0, Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity$c;->a:Lcom/ricktop/myclockskinApp/widgetprovider/ClockSelectActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
