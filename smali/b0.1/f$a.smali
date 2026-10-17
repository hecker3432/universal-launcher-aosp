.class Lb0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb0/f;->c(Ljava/lang/String;)Lb0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lb0/f;


# direct methods
.method constructor <init>(Lb0/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb0/f$a;->b:Lb0/f;

    iput-object p2, p0, Lb0/f$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LG0/e;)Lb0/c;
    .locals 2

    const-string v0, "http.request"

    invoke-interface {p1, v0}, LG0/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/q;

    iget-object v0, p0, Lb0/f$a;->b:Lb0/f;

    iget-object v1, p0, Lb0/f$a;->a:Ljava/lang/String;

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lb0/f;->b(Ljava/lang/String;LE0/e;)Lb0/c;

    move-result-object p1

    return-object p1
.end method
