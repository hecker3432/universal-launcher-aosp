.class Lr0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/l;->c(Ljava/lang/String;)Lr0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lr0/l;


# direct methods
.method constructor <init>(Lr0/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr0/l$a;->b:Lr0/l;

    iput-object p2, p0, Lr0/l$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LG0/e;)Lr0/i;
    .locals 2

    const-string v0, "http.request"

    invoke-interface {p1, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/q;

    iget-object v0, p0, Lr0/l$a;->b:Lr0/l;

    iget-object v1, p0, Lr0/l$a;->a:Ljava/lang/String;

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lr0/l;->b(Ljava/lang/String;LE0/e;)Lr0/i;

    move-result-object p1

    return-object p1
.end method
