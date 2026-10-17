.class public LD0/h;
.super LD0/a;
.source "SourceFile"

# interfaces
.implements La0/q;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:La0/E;


# direct methods
.method public constructor <init>(La0/E;)V
    .locals 1

    invoke-direct {p0}, LD0/a;-><init>()V

    const-string v0, "Request line"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/E;

    iput-object v0, p0, LD0/h;->e:La0/E;

    invoke-interface {p1}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LD0/h;->c:Ljava/lang/String;

    invoke-interface {p1}, La0/E;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD0/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V
    .locals 1

    new-instance v0, LD0/n;

    invoke-direct {v0, p1, p2, p3}, LD0/n;-><init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V

    invoke-direct {p0, v0}, LD0/h;-><init>(La0/E;)V

    return-void
.end method


# virtual methods
.method public getProtocolVersion()La0/C;
    .locals 1

    invoke-virtual {p0}, LD0/h;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getProtocolVersion()La0/C;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()La0/E;
    .locals 4

    iget-object v0, p0, LD0/h;->e:La0/E;

    if-nez v0, :cond_0

    new-instance v0, LD0/n;

    iget-object v1, p0, LD0/h;->c:Ljava/lang/String;

    iget-object v2, p0, LD0/h;->d:Ljava/lang/String;

    sget-object v3, La0/v;->f:La0/v;

    invoke-direct {v0, v1, v2, v3}, LD0/n;-><init>(Ljava/lang/String;Ljava/lang/String;La0/C;)V

    iput-object v0, p0, LD0/h;->e:La0/E;

    :cond_0
    iget-object v0, p0, LD0/h;->e:La0/E;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LD0/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, LD0/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
