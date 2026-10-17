.class LB/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB/k;->h([LF/b$f;I)LF/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LB/k;


# direct methods
.method constructor <init>(LB/k;)V
    .locals 0

    iput-object p1, p0, LB/k$a;->a:LB/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LF/b$f;

    invoke-virtual {p0, p1}, LB/k$a;->c(LF/b$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LF/b$f;

    invoke-virtual {p0, p1}, LB/k$a;->d(LF/b$f;)Z

    move-result p1

    return p1
.end method

.method public c(LF/b$f;)I
    .locals 0

    invoke-virtual {p1}, LF/b$f;->d()I

    move-result p1

    return p1
.end method

.method public d(LF/b$f;)Z
    .locals 0

    invoke-virtual {p1}, LF/b$f;->e()Z

    move-result p1

    return p1
.end method
