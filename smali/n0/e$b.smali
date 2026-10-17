.class public final enum Ln0/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Ln0/e$b;

.field public static final enum b:Ln0/e$b;

.field private static final synthetic c:[Ln0/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln0/e$b;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln0/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/e$b;->a:Ln0/e$b;

    new-instance v1, Ln0/e$b;

    const-string v3, "TUNNELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln0/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln0/e$b;->b:Ln0/e$b;

    const/4 v3, 0x2

    new-array v3, v3, [Ln0/e$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ln0/e$b;->c:[Ln0/e$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln0/e$b;
    .locals 1

    const-class v0, Ln0/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln0/e$b;

    return-object p0
.end method

.method public static values()[Ln0/e$b;
    .locals 1

    sget-object v0, Ln0/e$b;->c:[Ln0/e$b;

    invoke-virtual {v0}, [Ln0/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/e$b;

    return-object v0
.end method
