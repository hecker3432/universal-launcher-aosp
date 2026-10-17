.class public final Lcom/ailife/ClockSkinTransfer/b456/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ailife/ClockSkinTransfer/b456/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinTransfer/b456/c/d$c;,
        Lcom/ailife/ClockSkinTransfer/b456/c/d$a;,
        Lcom/ailife/ClockSkinTransfer/b456/c/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ailife/ClockSkinTransfer/b456/f/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/ailife/ClockSkinTransfer/b456/c/f;

.field private final c:Lcom/ailife/ClockSkinTransfer/b456/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ailife/ClockSkinTransfer/b456/d/a/a<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ailife/ClockSkinTransfer/b456/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ailife/ClockSkinTransfer/b456/d/a/a<",
            "Ljava/io/File;",
            "Lcom/ailife/ClockSkinTransfer/b456/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ailife/ClockSkinTransfer/b456/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ailife/ClockSkinTransfer/b456/d/a/b<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lcom/ailife/ClockSkinTransfer/b456/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;)V
    .locals 10

    const-string v0, "start"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/ailife/ClockSkinTransfer/b456/c/d;-><init>(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/b;IILcom/ailife/ClockSkinTransfer/b456/d/b/a;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/ailife/ClockSkinTransfer/b456/c/f;",
            "Lcom/ailife/ClockSkinTransfer/b456/d/a/a<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/ailife/ClockSkinTransfer/b456/d/a/a<",
            "-",
            "Ljava/io/File;",
            "Lcom/ailife/ClockSkinTransfer/b456/d;",
            ">;",
            "Lcom/ailife/ClockSkinTransfer/b456/d/a/b<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lcom/ailife/ClockSkinTransfer/b456/d;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->b:Lcom/ailife/ClockSkinTransfer/b456/c/f;

    iput-object p3, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->c:Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    iput-object p4, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->d:Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    iput-object p5, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->e:Lcom/ailife/ClockSkinTransfer/b456/d/a/b;

    iput p6, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->f:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/b;IILcom/ailife/ClockSkinTransfer/b456/d/b/a;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    sget-object p2, Lcom/ailife/ClockSkinTransfer/b456/c/f;->a:Lcom/ailife/ClockSkinTransfer/b456/c/f;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ailife/ClockSkinTransfer/b456/c/d;-><init>(Ljava/io/File;Lcom/ailife/ClockSkinTransfer/b456/c/f;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/a;Lcom/ailife/ClockSkinTransfer/b456/d/a/b;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->c:Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/b;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->e:Lcom/ailife/ClockSkinTransfer/b456/d/a/b;

    return-object p0
.end method

.method public static final synthetic c(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->d:Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/c/f;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->b:Lcom/ailife/ClockSkinTransfer/b456/c/f;

    return-object p0
.end method

.method public static final synthetic e(Lcom/ailife/ClockSkinTransfer/b456/c/d;)I
    .locals 0

    iget p0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->f:I

    return p0
.end method

.method public static final synthetic f(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d;->a:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    invoke-direct {v0, p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;-><init>(Lcom/ailife/ClockSkinTransfer/b456/c/d;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
