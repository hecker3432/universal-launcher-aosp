.class LF/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF/b;->g(Landroid/content/Context;LF/a;LA/g$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LA/g$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(LA/g$a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, LF/b$b;->a:LA/g$a;

    iput-object p2, p0, LF/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LF/b$g;

    invoke-virtual {p0, p1}, LF/b$b;->b(LF/b$g;)V

    return-void
.end method

.method public b(LF/b$g;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, LF/b$b;->a:LA/g$a;

    const/4 v0, 0x1

    iget-object v1, p0, LF/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, LA/g$a;->a(ILandroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget v0, p1, LF/b$g;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, LF/b$b;->a:LA/g$a;

    iget-object p1, p1, LF/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, LF/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, LA/g$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LF/b$b;->a:LA/g$a;

    iget-object v1, p0, LF/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, LA/g$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method
