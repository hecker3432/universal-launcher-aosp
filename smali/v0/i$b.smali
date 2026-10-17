.class Lv0/i$b;
.super Lv0/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final c:[B

.field private final d:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv0/i$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/i$b;->c:[B

    iput-object v0, p0, Lv0/i$b;->d:[B

    return-void
.end method
