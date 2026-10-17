.class Lf0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/b;->e(Ll0/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll0/d;

.field final synthetic b:Lf0/b;


# direct methods
.method constructor <init>(Lf0/b;Ll0/d;)V
    .locals 0

    iput-object p1, p0, Lf0/b$a;->b:Lf0/b;

    iput-object p2, p0, Lf0/b$a;->a:Ll0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    iget-object v0, p0, Lf0/b$a;->a:Ll0/d;

    invoke-interface {v0}, Ll0/d;->a()V

    const/4 v0, 0x1

    return v0
.end method
