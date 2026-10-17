.class public LD0/i;
.super LD0/a;
.source "SourceFile"

# interfaces
.implements La0/s;


# instance fields
.field private c:La0/F;

.field private d:La0/C;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:La0/k;

.field private final h:La0/D;

.field private i:Ljava/util/Locale;


# direct methods
.method public constructor <init>(La0/F;La0/D;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, LD0/a;-><init>()V

    const-string v0, "Status line"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/F;

    iput-object v0, p0, LD0/i;->c:La0/F;

    invoke-interface {p1}, La0/F;->getProtocolVersion()La0/C;

    move-result-object v0

    iput-object v0, p0, LD0/i;->d:La0/C;

    invoke-interface {p1}, La0/F;->b()I

    move-result v0

    iput v0, p0, LD0/i;->e:I

    invoke-interface {p1}, La0/F;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LD0/i;->f:Ljava/lang/String;

    iput-object p2, p0, LD0/i;->h:La0/D;

    iput-object p3, p0, LD0/i;->i:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public a(La0/k;)V
    .locals 0

    iput-object p1, p0, LD0/i;->g:La0/k;

    return-void
.end method

.method public getEntity()La0/k;
    .locals 1

    iget-object v0, p0, LD0/i;->g:La0/k;

    return-object v0
.end method

.method public getProtocolVersion()La0/C;
    .locals 1

    iget-object v0, p0, LD0/i;->d:La0/C;

    return-object v0
.end method

.method public h()La0/F;
    .locals 4

    iget-object v0, p0, LD0/i;->c:La0/F;

    if-nez v0, :cond_2

    new-instance v0, LD0/o;

    iget-object v1, p0, LD0/i;->d:La0/C;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, La0/v;->f:La0/v;

    :goto_0
    iget v2, p0, LD0/i;->e:I

    iget-object v3, p0, LD0/i;->f:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, LD0/i;->j(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-direct {v0, v1, v2, v3}, LD0/o;-><init>(La0/C;ILjava/lang/String;)V

    iput-object v0, p0, LD0/i;->c:La0/F;

    :cond_2
    iget-object v0, p0, LD0/i;->c:La0/F;

    return-object v0
.end method

.method protected j(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LD0/i;->h:La0/D;

    if-eqz v0, :cond_1

    iget-object v1, p0, LD0/i;->i:Ljava/util/Locale;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    invoke-interface {v0, p1, v1}, La0/D;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LD0/i;->h()La0/F;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, LD0/a;->a:LD0/r;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LD0/i;->g:La0/k;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LD0/i;->g:La0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
