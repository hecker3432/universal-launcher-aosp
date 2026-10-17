.class Lcom/loopj/android/http/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/loopj/android/http/c;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/c;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/loopj/android/http/c$a;->a:Lcom/loopj/android/http/c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/c$a;->a:Lcom/loopj/android/http/c;

    invoke-virtual {v0, p1}, Lcom/loopj/android/http/c;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
