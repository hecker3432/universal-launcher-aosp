.class Li/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Li/m;


# direct methods
.method constructor <init>(Li/m;)V
    .locals 0

    iput-object p1, p0, Li/m$a;->b:Li/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Li/m$a;->b:Li/m;

    invoke-virtual {v0, p1}, Li/m;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
