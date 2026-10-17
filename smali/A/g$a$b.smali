.class LA/g$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA/g$a;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:LA/g$a;


# direct methods
.method constructor <init>(LA/g$a;I)V
    .locals 0

    iput-object p1, p0, LA/g$a$b;->b:LA/g$a;

    iput p2, p0, LA/g$a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LA/g$a$b;->b:LA/g$a;

    iget v1, p0, LA/g$a$b;->a:I

    invoke-virtual {v0, v1}, LA/g$a;->c(I)V

    return-void
.end method
