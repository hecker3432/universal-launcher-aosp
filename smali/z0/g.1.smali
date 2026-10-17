.class public Lz0/g;
.super Lz0/a;
.source "SourceFile"

# interfaces
.implements Lr0/b;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lz0/a;-><init>()V

    const-string v0, "Array of date patterns"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz0/g;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Lr0/o;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lz0/g;->a:[Ljava/lang/String;

    invoke-static {p2, v0}, Li0/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lr0/o;->j(Ljava/util/Date;)V

    return-void

    :cond_0
    new-instance p1, Lr0/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid \'expires\' attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lr0/m;

    const-string p2, "Missing value for \'expires\' attribute"

    invoke-direct {p1, p2}, Lr0/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "expires"

    return-object v0
.end method
