.class Lw0/q$a;
.super Ls0/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lw0/q;


# direct methods
.method constructor <init>(Lw0/q;La0/k;)V
    .locals 0

    iput-object p1, p0, Lw0/q$a;->b:Lw0/q;

    invoke-direct {p0, p2}, Ls0/f;-><init>(La0/k;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lw0/q$a;->b:Lw0/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lw0/q;->p(Lw0/q;Z)Z

    invoke-super {p0, p1}, Ls0/f;->f(Ljava/io/OutputStream;)V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lw0/q$a;->b:Lw0/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lw0/q;->p(Lw0/q;Z)Z

    invoke-super {p0}, Ls0/f;->o()V

    return-void
.end method

.method public q()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lw0/q$a;->b:Lw0/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lw0/q;->p(Lw0/q;Z)Z

    invoke-super {p0}, Ls0/f;->q()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
