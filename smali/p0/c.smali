.class public Lp0/c;
.super Lp0/a;
.source "SourceFile"


# static fields
.field public static final c:Lp0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp0/c;

    invoke-direct {v0}, Lp0/c;-><init>()V

    sput-object v0, Lp0/c;->c:Lp0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lp0/a;->g(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BROWSER_COMPATIBLE"

    return-object v0
.end method
