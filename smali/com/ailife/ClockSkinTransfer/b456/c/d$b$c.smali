.class final Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;
.super Lcom/ailife/ClockSkinTransfer/b456/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/b456/c/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

.field private b:Z

.field private c:[Ljava/io/File;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/ailife/ClockSkinTransfer/b456/c/d$b;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinTransfer/b456/c/d$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 10

    iget-boolean v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->a(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b:Z

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->d:I

    iget-object v2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_2
    array-length v2, v2

    if-ge v0, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->c(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/d;

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->b(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v2

    new-instance v9, Lcom/ailife/ClockSkinTransfer/b456/c/a;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "Cannot list files in a directory"

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/ailife/ClockSkinTransfer/b456/c/a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILcom/ailife/ClockSkinTransfer/b456/d/b/a;)V

    invoke-interface {v0, v2, v9}, Lcom/ailife/ClockSkinTransfer/b456/d/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/d;

    :cond_6
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_7
    array-length v0, v0

    if-nez v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->c(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->b()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/d;

    :cond_9
    return-object v1

    :cond_a
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->c:[Ljava/io/File;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_b
    iget v1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$c;->d:I

    aget-object v0, v0, v1

    return-object v0
.end method
