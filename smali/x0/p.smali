.class public abstract Lx0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lo0/h;
    .locals 5

    new-instance v0, Lo0/h;

    invoke-direct {v0}, Lo0/h;-><init>()V

    new-instance v1, Lo0/d;

    const/16 v2, 0x50

    invoke-static {}, Lo0/c;->i()Lo0/c;

    move-result-object v3

    const-string v4, "http"

    invoke-direct {v1, v4, v2, v3}, Lo0/d;-><init>(Ljava/lang/String;ILo0/i;)V

    invoke-virtual {v0, v1}, Lo0/h;->d(Lo0/d;)Lo0/d;

    new-instance v1, Lo0/d;

    const/16 v2, 0x1bb

    invoke-static {}, Lp0/i;->l()Lp0/i;

    move-result-object v3

    const-string v4, "https"

    invoke-direct {v1, v4, v2, v3}, Lo0/d;-><init>(Ljava/lang/String;ILo0/i;)V

    invoke-virtual {v0, v1}, Lo0/h;->d(Lo0/d;)Lo0/d;

    return-object v0
.end method
