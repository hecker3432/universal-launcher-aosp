.class public Lw0/x;
.super La0/m;
.source "SourceFile"


# instance fields
.field private final a:La0/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;La0/s;)V
    .locals 0

    invoke-direct {p0, p1}, La0/m;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lw0/x;->a:La0/s;

    return-void
.end method


# virtual methods
.method public a()La0/s;
    .locals 1

    iget-object v0, p0, Lw0/x;->a:La0/s;

    return-object v0
.end method
