.class LB/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB/k;->f(LA/d$b;I)LA/d$c;
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

    iput-object p1, p0, LB/k$b;->a:LB/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LA/d$c;

    invoke-virtual {p0, p1}, LB/k$b;->c(LA/d$c;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LA/d$c;

    invoke-virtual {p0, p1}, LB/k$b;->d(LA/d$c;)Z

    move-result p1

    return p1
.end method

.method public c(LA/d$c;)I
    .locals 0

    invoke-virtual {p1}, LA/d$c;->e()I

    move-result p1

    return p1
.end method

.method public d(LA/d$c;)Z
    .locals 0

    invoke-virtual {p1}, LA/d$c;->f()Z

    move-result p1

    return p1
.end method
