.class final Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;
.super Lcom/ailife/ClockSkinTransfer/b456/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/b456/c/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

.field private b:Z

.field private c:[Ljava/io/File;

.field private d:I

.field private e:Z


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

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    invoke-direct {p0, p2}, Lcom/ailife/ClockSkinTransfer/b456/c/d$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 11

    iget-boolean v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->a(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b()Ljava/io/File;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/ailife/ClockSkinTransfer/b456/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->c:[Ljava/io/File;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->b(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b()Ljava/io/File;

    move-result-object v3

    new-instance v10, Lcom/ailife/ClockSkinTransfer/b456/c/a;

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "Cannot list files in a directory"

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/ailife/ClockSkinTransfer/b456/c/a;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILcom/ailife/ClockSkinTransfer/b456/d/b/a;)V

    invoke-interface {v0, v3, v10}, Lcom/ailife/ClockSkinTransfer/b456/d/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/d;

    :cond_1
    iput-boolean v2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->e:Z

    :cond_2
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->c:[Ljava/io/File;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->d:I

    iget-object v3, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->c:[Ljava/io/File;

    if-nez v3, :cond_3

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_3
    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ailife/ClockSkinTransfer/b456/d/b/b;->a()V

    :cond_4
    iget v1, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->d:I

    aget-object v0, v0, v1

    return-object v0

    :cond_5
    iget-boolean v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b:Z

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b:Z

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d$b;

    iget-object v0, v0, Lcom/ailife/ClockSkinTransfer/b456/c/d$b;->a:Lcom/ailife/ClockSkinTransfer/b456/c/d;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/b456/c/d;->c(Lcom/ailife/ClockSkinTransfer/b456/c/d;)Lcom/ailife/ClockSkinTransfer/b456/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ailife/ClockSkinTransfer/b456/c/d$b$a;->b()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ailife/ClockSkinTransfer/b456/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ailife/ClockSkinTransfer/b456/d;

    :cond_7
    return-object v1
.end method
