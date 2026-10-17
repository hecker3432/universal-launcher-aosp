.class public Lv0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/d;
.implements Lb0/e;


# instance fields
.field private final a:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv0/c;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/c;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a(LE0/e;)Lb0/c;
    .locals 0

    new-instance p1, Lv0/b;

    invoke-direct {p1}, Lv0/b;-><init>()V

    return-object p1
.end method

.method public b(LG0/e;)Lb0/c;
    .locals 1

    new-instance p1, Lv0/b;

    iget-object v0, p0, Lv0/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0}, Lv0/b;-><init>(Ljava/nio/charset/Charset;)V

    return-object p1
.end method
