.class Lcom/ricktop/ClockSkinCoco/SettingsFragment$ShareCrashReportClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/SettingsFragment;->K1(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/SettingsFragment$ShareCrashReportClickListener;->a:Lcom/ricktop/ClockSkinCoco/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 8

    # Get the context
    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;
    move-result-object v0

    # Get the crash log file from external files directory
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    move-result-object v1

    # Create File object for crash log
    new-instance v2, Ljava/io/File;
    const-string v3, "UniversalLauncherCrashLog.txt"
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Check if file exists
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_file_exists

    # Show toast: No crash report found
    const-string v1, "No crash report found"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_file_exists
    # Read file content as text
    :try_start_read
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/InputStreamReader;
    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_read_loop
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v5

    if-eqz v5, :cond_read_done

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "\n"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_read_loop

    :cond_read_done
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    # Get the text content
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    # Create ACTION_SEND intent with text
    new-instance v2, Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v4, Landroid/content/Intent;->ACTION_SEND:Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    # Set MIME type
    const-string v4, "text/plain"
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    # Set the text content
    const-string v4, "android.intent.extra.TEXT"
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # Set subject
    const-string v1, "android.intent.extra.SUBJECT"
    const-string v4, "Universal Launcher Crash Report"
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    # Add FLAG_ACTIVITY_NEW_TASK
    sget v1, Landroid/content/Intent;->FLAG_ACTIVITY_NEW_TASK:I
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    # Create chooser
    const-string v1, "Share crash report"
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    move-result-object v1

    # Add FLAG_ACTIVITY_NEW_TASK to chooser
    sget v2, Landroid/content/Intent;->FLAG_ACTIVITY_NEW_TASK:I
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    # Start activity
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_read
    .catch Ljava/io/IOException; {:try_start_read .. :try_end_read} :catch_io

    goto :goto_end

    :catch_io
    move-exception v1

    # Show toast: Failed to share crash report
    const-string v1, "Failed to share crash report"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_end
    return v3
.end method
