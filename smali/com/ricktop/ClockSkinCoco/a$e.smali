.class Lcom/ricktop/ClockSkinCoco/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/b$b;

.field final synthetic d:Lcom/ricktop/ClockSkinCoco/a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/a;Lcom/ricktop/ClockSkinCoco/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/a$e;->d:Lcom/ricktop/ClockSkinCoco/a;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/a$e;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    # Create an Intent with ACTION_APPLICATION_DETAILS_SETTINGS
    new-instance v0, Landroid/content/Intent;

    # Load the action string for app details settings
    sget-object v1, Landroid/content/Intent;->ACTION_DELETE:Ljava/lang/String;

    # Initialize the Intent with the action
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # Add FLAG_ACTIVITY_NEW_TASK to the Intent
    sget v1, Landroid/content/Intent;->FLAG_ACTIVITY_NEW_TASK:I
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    # Get the app's package name (assuming 'p0' is the current Activity)
    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/a$e;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v1, v1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    # Build the "package:your.package.name" URI
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "package:"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # Append package name to URI
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Finalize URI string
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    # Convert to Uri and set as Intent data
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    # get context
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object v1

    # Start the activity with the Intent
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
