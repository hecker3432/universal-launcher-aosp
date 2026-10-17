.class public LQ/e;
.super Landroidx/recyclerview/widget/l;
.source "SourceFile"


# instance fields
.field final f:Landroidx/recyclerview/widget/RecyclerView;

.field final g:LI/a;

.field final h:LI/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/l;->n()LI/a;

    move-result-object v0

    iput-object v0, p0, LQ/e;->g:LI/a;

    new-instance v0, LQ/e$a;

    invoke-direct {v0, p0}, LQ/e$a;-><init>(LQ/e;)V

    iput-object v0, p0, LQ/e;->h:LI/a;

    iput-object p1, p0, LQ/e;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public n()LI/a;
    .locals 1

    iget-object v0, p0, LQ/e;->h:LI/a;

    return-object v0
.end method
