.class LF/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF/b;->g(Landroid/content/Context;LF/a;LA/g$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:LF/a;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;LF/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, LF/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, LF/b$a;->b:LF/a;

    iput p3, p0, LF/b$a;->c:I

    iput-object p4, p0, LF/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LF/b$g;
    .locals 4

    iget-object v0, p0, LF/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, LF/b$a;->b:LF/a;

    iget v2, p0, LF/b$a;->c:I

    invoke-static {v0, v1, v2}, LF/b;->f(Landroid/content/Context;LF/a;I)LF/b$g;

    move-result-object v0

    iget-object v1, v0, LF/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, LF/b;->a:Lr/e;

    iget-object v3, p0, LF/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lr/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LF/b$a;->a()LF/b$g;

    move-result-object v0

    return-object v0
.end method
