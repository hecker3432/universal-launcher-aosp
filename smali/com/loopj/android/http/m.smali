.class public interface abstract Lcom/loopj/android/http/m;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getUsePoolThread()Z
.end method

.method public abstract getUseSynchronousMode()Z
.end method

.method public abstract onPostProcessResponse(Lcom/loopj/android/http/m;La0/s;)V
.end method

.method public abstract onPreProcessResponse(Lcom/loopj/android/http/m;La0/s;)V
.end method

.method public abstract sendCancelMessage()V
.end method

.method public abstract sendFailureMessage(I[La0/e;[BLjava/lang/Throwable;)V
.end method

.method public abstract sendFinishMessage()V
.end method

.method public abstract sendResponseMessage(La0/s;)V
.end method

.method public abstract sendRetryMessage(I)V
.end method

.method public abstract sendStartMessage()V
.end method

.method public abstract setRequestHeaders([La0/e;)V
.end method

.method public abstract setRequestURI(Ljava/net/URI;)V
.end method
