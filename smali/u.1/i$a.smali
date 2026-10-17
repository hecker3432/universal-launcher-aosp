.class public final enum Lu/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lu/i$a;

.field public static final enum b:Lu/i$a;

.field public static final enum c:Lu/i$a;

.field public static final enum d:Lu/i$a;

.field public static final enum e:Lu/i$a;

.field private static final synthetic f:[Lu/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lu/i$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/i$a;->a:Lu/i$a;

    new-instance v1, Lu/i$a;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/i$a;->b:Lu/i$a;

    new-instance v3, Lu/i$a;

    const-string v5, "SLACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu/i$a;->c:Lu/i$a;

    new-instance v5, Lu/i$a;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lu/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lu/i$a;->d:Lu/i$a;

    new-instance v7, Lu/i$a;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lu/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lu/i$a;->e:Lu/i$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lu/i$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lu/i$a;->f:[Lu/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/i$a;
    .locals 1

    const-class v0, Lu/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/i$a;

    return-object p0
.end method

.method public static values()[Lu/i$a;
    .locals 1

    sget-object v0, Lu/i$a;->f:[Lu/i$a;

    invoke-virtual {v0}, [Lu/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/i$a;

    return-object v0
.end method
