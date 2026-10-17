.class public final LA/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LA/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:[LA/d$c;


# direct methods
.method public constructor <init>([LA/d$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/d$b;->a:[LA/d$c;

    return-void
.end method


# virtual methods
.method public a()[LA/d$c;
    .locals 1

    iget-object v0, p0, LA/d$b;->a:[LA/d$c;

    return-object v0
.end method
