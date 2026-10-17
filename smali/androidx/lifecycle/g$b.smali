.class Landroidx/lifecycle/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/c$b;

.field b:Landroidx/lifecycle/d;


# direct methods
.method constructor <init>(Landroidx/lifecycle/e;Landroidx/lifecycle/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/lifecycle/h;->f(Ljava/lang/Object;)Landroidx/lifecycle/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/g$b;->b:Landroidx/lifecycle/d;

    iput-object p2, p0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/f;Landroidx/lifecycle/c$a;)V
    .locals 2

    invoke-static {p2}, Landroidx/lifecycle/g;->h(Landroidx/lifecycle/c$a;)Landroidx/lifecycle/c$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/g;->l(Landroidx/lifecycle/c$b;Landroidx/lifecycle/c$b;)Landroidx/lifecycle/c$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    iget-object v1, p0, Landroidx/lifecycle/g$b;->b:Landroidx/lifecycle/d;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/c$a;)V

    iput-object v0, p0, Landroidx/lifecycle/g$b;->a:Landroidx/lifecycle/c$b;

    return-void
.end method
