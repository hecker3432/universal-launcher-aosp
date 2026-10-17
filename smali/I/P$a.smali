.class LI/P$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI/P;->U(Landroid/view/View;LI/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LI/v;


# direct methods
.method constructor <init>(LI/v;)V
    .locals 0

    iput-object p1, p0, LI/P$a;->a:LI/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {p2}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object p2

    iget-object v0, p0, LI/P$a;->a:LI/v;

    invoke-interface {v0, p1, p2}, LI/v;->a(Landroid/view/View;LI/o0;)LI/o0;

    move-result-object p1

    invoke-virtual {p1}, LI/o0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
