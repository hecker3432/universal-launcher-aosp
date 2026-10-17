.class public abstract Lcom/loopj/android/http/d;
.super Lcom/loopj/android/http/c;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BinaryHttpRH"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/loopj/android/http/c;-><init>()V

    const-string v0, "image/png"

    const-string v1, "image/gif"

    const-string v2, "application/octet-stream"

    const-string v3, "image/jpeg"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/d;->mAllowedContentTypes:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/loopj/android/http/d;->mAllowedContentTypes:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    const-string v0, "BinaryHttpRH"

    const-string v1, "Constructor passed allowedContentTypes was null !"

    invoke-interface {p1, v0, v1}, Lcom/loopj/android/http/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/d;->mAllowedContentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final sendResponseMessage(La0/s;)V
    .locals 13

    invoke-interface {p1}, La0/s;->h()La0/F;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, La0/p;->getHeaders(Ljava/lang/String;)[La0/e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    invoke-interface {v0}, La0/F;->b()I

    move-result v1

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object p1

    new-instance v2, Lc0/j;

    invoke-interface {v0}, La0/F;->b()I

    move-result v0

    const-string v4, "None, or more than one, Content-Type Header found!"

    invoke-direct {v2, v0, v4}, Lc0/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, p1, v3, v2}, Lcom/loopj/android/http/c;->sendFailureMessage(I[La0/e;[BLjava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/loopj/android/http/d;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v8, v5, v2

    :try_start_0
    invoke-interface {v1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v9

    sget-object v10, Lcom/loopj/android/http/a;->j:Lcom/loopj/android/http/h;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given pattern is not valid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "BinaryHttpRH"

    invoke-interface {v10, v11, v8, v9}, Lcom/loopj/android/http/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    invoke-interface {v0}, La0/F;->b()I

    move-result v2

    invoke-interface {p1}, La0/p;->getAllHeaders()[La0/e;

    move-result-object p1

    new-instance v4, Lc0/j;

    invoke-interface {v0}, La0/F;->b()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, La0/e;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") not allowed!"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lc0/j;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/loopj/android/http/c;->sendFailureMessage(I[La0/e;[BLjava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/loopj/android/http/c;->sendResponseMessage(La0/s;)V

    return-void
.end method
