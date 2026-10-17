.class Lq/b$a;
.super Lq/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lq/b$c;Lq/b$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lq/b$e;-><init>(Lq/b$c;Lq/b$c;)V

    return-void
.end method


# virtual methods
.method e(Lq/b$c;)Lq/b$c;
    .locals 0

    iget-object p1, p1, Lq/b$c;->d:Lq/b$c;

    return-object p1
.end method

.method f(Lq/b$c;)Lq/b$c;
    .locals 0

    iget-object p1, p1, Lq/b$c;->c:Lq/b$c;

    return-object p1
.end method
