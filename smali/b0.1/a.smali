.class public final Lb0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lb0/c;

.field private final b:Lb0/m;


# direct methods
.method public constructor <init>(Lb0/c;Lb0/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User credentials"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb0/a;->a:Lb0/c;

    iput-object p2, p0, Lb0/a;->b:Lb0/m;

    return-void
.end method


# virtual methods
.method public a()Lb0/c;
    .locals 1

    iget-object v0, p0, Lb0/a;->a:Lb0/c;

    return-object v0
.end method

.method public b()Lb0/m;
    .locals 1

    iget-object v0, p0, Lb0/a;->b:Lb0/m;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb0/a;->a:Lb0/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
