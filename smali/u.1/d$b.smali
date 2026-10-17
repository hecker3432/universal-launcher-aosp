.class Lu/d$b;
.super Lu/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Lu/d;


# direct methods
.method public constructor <init>(Lu/d;Lu/c;)V
    .locals 0

    iput-object p1, p0, Lu/d$b;->g:Lu/d;

    invoke-direct {p0}, Lu/b;-><init>()V

    new-instance p1, Lu/j;

    invoke-direct {p1, p0, p2}, Lu/j;-><init>(Lu/b;Lu/c;)V

    iput-object p1, p0, Lu/b;->e:Lu/b$a;

    return-void
.end method
