.class LF/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:LF/c$b;


# direct methods
.method constructor <init>(LF/c$b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LF/c$b$a;->b:LF/c$b;

    iput-object p2, p0, LF/c$b$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LF/c$b$a;->b:LF/c$b;

    iget-object v0, v0, LF/c$b;->c:LF/c$d;

    iget-object v1, p0, LF/c$b$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, LF/c$d;->a(Ljava/lang/Object;)V

    return-void
.end method
