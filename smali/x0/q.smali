.class public Lx0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/i;


# static fields
.field public static final a:Lx0/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx0/q;

    invoke-direct {v0}, Lx0/q;-><init>()V

    sput-object v0, Lx0/q;->a:Lx0/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method
