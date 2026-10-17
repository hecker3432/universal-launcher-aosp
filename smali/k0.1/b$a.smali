.class public Lk0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lk0/b$a;->a:I

    iput v0, p0, Lk0/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lk0/b;
    .locals 3

    new-instance v0, Lk0/b;

    iget v1, p0, Lk0/b$a;->a:I

    iget v2, p0, Lk0/b$a;->b:I

    invoke-direct {v0, v1, v2}, Lk0/b;-><init>(II)V

    return-object v0
.end method

.method public b(I)Lk0/b$a;
    .locals 0

    iput p1, p0, Lk0/b$a;->b:I

    return-object p0
.end method

.method public c(I)Lk0/b$a;
    .locals 0

    iput p1, p0, Lk0/b$a;->a:I

    return-object p0
.end method
