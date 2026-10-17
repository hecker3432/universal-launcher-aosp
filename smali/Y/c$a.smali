.class LY/c$a;
.super LY/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY/c;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LY/c;


# direct methods
.method constructor <init>(LY/c;)V
    .locals 0

    iput-object p1, p0, LY/c$a;->a:LY/c;

    invoke-direct {p0}, LY/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, LY/c$a;->a:LY/c;

    invoke-static {p1}, LY/c;->a(LY/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LY/c$a;->a:LY/c;

    invoke-static {p1}, LY/c;->a(LY/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LY/c$a;->a:LY/c;

    invoke-static {p1}, LY/c;->a(LY/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Li/r;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
