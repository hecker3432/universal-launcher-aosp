.class Lcom/loopj/android/http/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/k;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loopj/android/http/b;

.field final synthetic b:Z

.field final synthetic c:Lcom/loopj/android/http/k;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/k;Lcom/loopj/android/http/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/k$a;->c:Lcom/loopj/android/http/k;

    iput-object p2, p0, Lcom/loopj/android/http/k$a;->a:Lcom/loopj/android/http/b;

    iput-boolean p3, p0, Lcom/loopj/android/http/k$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/k$a;->a:Lcom/loopj/android/http/b;

    iget-boolean v1, p0, Lcom/loopj/android/http/k$a;->b:Z

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/b;->a(Z)Z

    return-void
.end method
