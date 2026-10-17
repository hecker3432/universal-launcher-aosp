.class abstract Lcom/ailife/ClockSkinTransfer/b456/c/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/b456/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$c;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/File;
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$c;->a:Ljava/io/File;

    return-object v0
.end method
