.class public LB0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/e;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LB0/k;->a:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-wide v0, p0, LB0/k;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LB0/k;->a:J

    return-void
.end method
