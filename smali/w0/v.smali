.class public Lw0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lw0/u;

.field protected final b:Ln0/b;


# direct methods
.method public constructor <init>(Lw0/u;Ln0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/v;->a:Lw0/u;

    iput-object p2, p0, Lw0/v;->b:Ln0/b;

    return-void
.end method


# virtual methods
.method public final a()Lw0/u;
    .locals 1

    iget-object v0, p0, Lw0/v;->a:Lw0/u;

    return-object v0
.end method

.method public final b()Ln0/b;
    .locals 1

    iget-object v0, p0, Lw0/v;->b:Ln0/b;

    return-object v0
.end method
