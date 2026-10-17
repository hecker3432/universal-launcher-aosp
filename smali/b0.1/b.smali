.class public final enum Lb0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lb0/b;

.field public static final enum b:Lb0/b;

.field public static final enum c:Lb0/b;

.field public static final enum d:Lb0/b;

.field public static final enum e:Lb0/b;

.field private static final synthetic f:[Lb0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lb0/b;

    const-string v1, "UNCHALLENGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb0/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb0/b;->a:Lb0/b;

    new-instance v1, Lb0/b;

    const-string v3, "CHALLENGED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb0/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb0/b;->b:Lb0/b;

    new-instance v3, Lb0/b;

    const-string v5, "HANDSHAKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb0/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb0/b;->c:Lb0/b;

    new-instance v5, Lb0/b;

    const-string v7, "FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb0/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb0/b;->d:Lb0/b;

    new-instance v7, Lb0/b;

    const-string v9, "SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb0/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb0/b;->e:Lb0/b;

    const/4 v9, 0x5

    new-array v9, v9, [Lb0/b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lb0/b;->f:[Lb0/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb0/b;
    .locals 1

    const-class v0, Lb0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb0/b;

    return-object p0
.end method

.method public static values()[Lb0/b;
    .locals 1

    sget-object v0, Lb0/b;->f:[Lb0/b;

    invoke-virtual {v0}, [Lb0/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb0/b;

    return-object v0
.end method
