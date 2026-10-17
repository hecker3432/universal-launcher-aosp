.class public final Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo0/i;

.field private final c:I

.field private final d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILo0/i;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const v2, 0xffff

    if-gt p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Port is invalid"

    invoke-static {v2, v3}, LH0/a;->a(ZLjava/lang/String;)V

    const-string v2, "Socket factory"

    invoke-static {p3, v2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->a:Ljava/lang/String;

    iput p2, p0, Lo0/d;->c:I

    instance-of p1, p3, Lo0/e;

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lo0/d;->d:Z

    iput-object p3, p0, Lo0/d;->b:Lo0/i;

    goto :goto_1

    :cond_1
    instance-of p1, p3, Lo0/a;

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lo0/d;->d:Z

    new-instance p1, Lo0/f;

    check-cast p3, Lo0/a;

    invoke-direct {p1, p3}, Lo0/f;-><init>(Lo0/a;)V

    iput-object p1, p0, Lo0/d;->b:Lo0/i;

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lo0/d;->d:Z

    iput-object p3, p0, Lo0/d;->b:Lo0/i;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo0/k;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme name"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Socket factory"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    const v2, 0xffff

    if-gt p3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Port is invalid"

    invoke-static {v2, v3}, LH0/a;->a(ZLjava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/d;->a:Ljava/lang/String;

    instance-of p1, p2, Lo0/b;

    if-eqz p1, :cond_1

    new-instance p1, Lo0/g;

    check-cast p2, Lo0/b;

    invoke-direct {p1, p2}, Lo0/g;-><init>(Lo0/b;)V

    iput-object p1, p0, Lo0/d;->b:Lo0/i;

    iput-boolean v1, p0, Lo0/d;->d:Z

    goto :goto_1

    :cond_1
    new-instance p1, Lo0/j;

    invoke-direct {p1, p2}, Lo0/j;-><init>(Lo0/k;)V

    iput-object p1, p0, Lo0/d;->b:Lo0/i;

    iput-boolean v0, p0, Lo0/d;->d:Z

    :goto_1
    iput p3, p0, Lo0/d;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lo0/d;->c:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo0/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lo0/i;
    .locals 1

    iget-object v0, p0, Lo0/d;->b:Lo0/i;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lo0/d;->d:Z

    return v0
.end method

.method public final e(I)I
    .locals 0

    if-gtz p1, :cond_0

    iget p1, p0, Lo0/d;->c:I

    :cond_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lo0/d;

    iget-object v1, p0, Lo0/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lo0/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo0/d;->c:I

    iget v3, p1, Lo0/d;->c:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lo0/d;->d:Z

    iget-boolean p1, p1, Lo0/d;->d:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget v1, p0, Lo0/d;->c:I

    invoke-static {v0, v1}, LH0/h;->c(II)I

    move-result v0

    iget-object v1, p0, Lo0/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LH0/h;->d(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lo0/d;->d:Z

    invoke-static {v0, v1}, LH0/h;->e(IZ)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo0/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo0/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/d;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lo0/d;->e:Ljava/lang/String;

    return-object v0
.end method
