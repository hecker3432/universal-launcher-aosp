.class public Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LC0/e;

.field private final b:LC0/e;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(LC0/e;LC0/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu0/e;->c:J

    iput-wide v0, p0, Lu0/e;->d:J

    iput-object p1, p0, Lu0/e;->a:LC0/e;

    iput-object p2, p0, Lu0/e;->b:LC0/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-wide v0, p0, Lu0/e;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lu0/e;->c:J

    return-void
.end method

.method public b()V
    .locals 4

    iget-wide v0, p0, Lu0/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lu0/e;->d:J

    return-void
.end method
