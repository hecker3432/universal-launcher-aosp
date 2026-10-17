.class final enum Lv0/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lv0/j$a;

.field public static final enum b:Lv0/j$a;

.field public static final enum c:Lv0/j$a;

.field public static final enum d:Lv0/j$a;

.field public static final enum e:Lv0/j$a;

.field public static final enum f:Lv0/j$a;

.field private static final synthetic g:[Lv0/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lv0/j$a;

    const-string v1, "UNINITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv0/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv0/j$a;->a:Lv0/j$a;

    new-instance v1, Lv0/j$a;

    const-string v3, "CHALLENGE_RECEIVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv0/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv0/j$a;->b:Lv0/j$a;

    new-instance v3, Lv0/j$a;

    const-string v5, "MSG_TYPE1_GENERATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv0/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv0/j$a;->c:Lv0/j$a;

    new-instance v5, Lv0/j$a;

    const-string v7, "MSG_TYPE2_RECEVIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lv0/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lv0/j$a;->d:Lv0/j$a;

    new-instance v7, Lv0/j$a;

    const-string v9, "MSG_TYPE3_GENERATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lv0/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lv0/j$a;->e:Lv0/j$a;

    new-instance v9, Lv0/j$a;

    const-string v11, "FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lv0/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lv0/j$a;->f:Lv0/j$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lv0/j$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lv0/j$a;->g:[Lv0/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv0/j$a;
    .locals 1

    const-class v0, Lv0/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv0/j$a;

    return-object p0
.end method

.method public static values()[Lv0/j$a;
    .locals 1

    sget-object v0, Lv0/j$a;->g:[Lv0/j$a;

    invoke-virtual {v0}, [Lv0/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv0/j$a;

    return-object v0
.end method
