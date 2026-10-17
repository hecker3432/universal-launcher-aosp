.class final Lcom/ailife/ClockSkinTransfer/b456/c/d$b;
.super Lcom/ailife/ClockSkinTransfer/b456/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/b456/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;,
        Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;,
        Lcom/ailife/ClockSkinTransfer/b456/c/d$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ailife/ClockSkinTransfer/b456/a/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/ailife/ClockSkinTransfer/b456/c/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ailife/ClockSkinTransfer/b456/c/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/b456/a/a;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->f(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->f(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a(Ljava/io/File;)Lcom/ailife/ClockSkinTransfer/b456/c/d$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->f(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    new-instance v1, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$b;

    invoke-static {p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->f(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$b;-><init>(Lcom/ailife/ClockSkinTransfer/b456/c/d$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b()V

    :goto_0
    return-void
.end method

.method private final a(Ljava/io/File;)Lcom/ailife/ClockSkinTransfer/b456/c/d$a;
    .locals 2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->d(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/c/f;

    move-result-object v0

    sget-object v1, Lcom/ailife/ClockSkinTransfer/b456/c/e;->a:[I

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/f;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lcom/ailife/ClockSkinTransfer/b456/b;

    invoke-direct {p1}, Lcom/ailife/ClockSkinTransfer/b456/b;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;

    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;-><init>(Lcom/ailife/ClockSkinTransfer/b456/c/d$b;Ljava/io/File;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;

    invoke-direct {v0, p0, p1}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;-><init>(Lcom/ailife/ClockSkinTransfer/b456/c/d$b;Ljava/io/File;)V

    :goto_0
    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$a;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c()Ljava/io/File;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_1
    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$c;

    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$c;->a()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$c;->b()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v2}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->e(Lcom/ailife/ClockSkinTransfer/b456/c/d;)I

    move-result v2

    if-lt v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b:Ljava/util/Stack;

    invoke-direct {p0, v1}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a(Ljava/io/File;)Lcom/ailife/ClockSkinTransfer/b456/c/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method


# virtual methods
.method protected a()V
    .locals 1

    invoke-direct {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->b()V

    :goto_0
    return-void
.end method
