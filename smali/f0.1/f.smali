.class public Lf0/f;
.super Lf0/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Lf0/h;-><init>()V

    invoke-virtual {p0, p1}, Lf0/h;->m(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method
