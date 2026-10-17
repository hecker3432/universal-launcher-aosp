.class Lf0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/b;->b(Ll0/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll0/h;

.field final synthetic b:Lf0/b;


# direct methods
.method constructor <init>(Lf0/b;Ll0/h;)V
    .locals 0

    iput-object p1, p0, Lf0/b$b;->b:Lf0/b;

    iput-object p2, p0, Lf0/b$b;->a:Ll0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lf0/b$b;->a:Ll0/h;

    invoke-interface {v0}, Ll0/h;->s()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
