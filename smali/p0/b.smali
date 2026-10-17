.class public Lp0/b;
.super Lp0/a;
.source "SourceFile"


# static fields
.field public static final c:Lp0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp0/b;

    invoke-direct {v0}, Lp0/b;-><init>()V

    sput-object v0, Lp0/b;->c:Lp0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ALLOW_ALL"

    return-object v0
.end method
