.class Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;
.super Ljava/lang/Object;
.source "OTAManager2Lite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->checkUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

.field final synthetic val$apiUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->val$apiUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 130
    nop

    .line 132
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->val$apiUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_95
    .catchall {:try_start_2 .. :try_end_f} :catchall_90

    .line 134
    :try_start_f
    const-string v0, "GET"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 135
    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 138
    # getter for: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->GITLAB_TOKEN:Ljava/lang/String;
    invoke-static {}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    # getter for: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->GITLAB_TOKEN:Ljava/lang/String;
    invoke-static {}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 139
    const-string v0, "PRIVATE-TOKEN"

    # getter for: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->GITLAB_TOKEN:Ljava/lang/String;
    invoke-static {}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_35
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 143
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_62

    .line 144
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "API request failed with code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$100(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    const-string v2, "Update server is down"

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$200(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5c} :catch_8e
    .catchall {:try_start_f .. :try_end_5c} :catchall_d7

    .line 164
    if-eqz v1, :cond_61

    .line 165
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_61
    return-void

    .line 149
    :cond_62
    :try_start_62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 150
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    :goto_75
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7f

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 156
    :cond_7f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 158
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->parseReleaseInfo(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$300(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_8b} :catch_8e
    .catchall {:try_start_62 .. :try_end_8b} :catchall_d7

    .line 164
    if-eqz v1, :cond_d6

    .line 165
    goto :goto_d3

    .line 160
    :catch_8e
    move-exception v0

    goto :goto_99

    .line 164
    :catchall_90
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_d8

    .line 160
    :catch_95
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 161
    :goto_99
    :try_start_99
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "API request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->logError(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$100(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/ailife/ClockSkinCoco/OTAManager2Lite$1;->this$0:Lcom/ailife/ClockSkinCoco/OTAManager2Lite;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update check failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/ailife/ClockSkinCoco/OTAManager2Lite;->access$200(Lcom/ailife/ClockSkinCoco/OTAManager2Lite;Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_99 .. :try_end_d1} :catchall_d7

    .line 164
    if-eqz v1, :cond_d6

    .line 165
    :goto_d3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_d6
    return-void

    .line 164
    :catchall_d7
    move-exception v0

    :goto_d8
    if-eqz v1, :cond_dd

    .line 165
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 167
    :cond_dd
    goto :goto_df

    :goto_de
    throw v0

    :goto_df
    goto :goto_de
.end method
