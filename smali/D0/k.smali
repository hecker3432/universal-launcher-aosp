.class public LD0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/u;


# static fields
.field public static final b:LD0/k;

.field public static final c:LD0/k;


# instance fields
.field protected final a:La0/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD0/k;

    invoke-direct {v0}, LD0/k;-><init>()V

    sput-object v0, LD0/k;->b:LD0/k;

    new-instance v0, LD0/k;

    invoke-direct {v0}, LD0/k;-><init>()V

    sput-object v0, LD0/k;->c:LD0/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LD0/k;-><init>(La0/C;)V

    return-void
.end method

.method public constructor <init>(La0/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, La0/v;->f:La0/v;

    :goto_0
    iput-object p1, p0, LD0/k;->a:La0/C;

    return-void
.end method


# virtual methods
.method public a(LH0/d;LD0/v;)La0/F;
    .locals 7

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v0

    invoke-virtual {p2}, LD0/v;->c()I

    move-result v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, LD0/k;->f(LH0/d;LD0/v;)La0/C;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, LD0/k;->g(LH0/d;LD0/v;)V

    invoke-virtual {p2}, LD0/v;->b()I

    move-result p2

    const/16 v3, 0x20

    invoke-virtual {p1, v3, p2, v1}, LH0/d;->l(III)I

    move-result v3

    if-gez v3, :cond_0

    move v3, v1

    :cond_0
    invoke-virtual {p1, p2, v3}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "Status line contains invalid status code: "

    if-ge v4, v5, :cond_2

    :try_start_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, La0/A;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, La0/A;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    if-ge v3, v1, :cond_3

    :try_start_3
    invoke-virtual {p1, v3, v1}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {p0, v2, p2, v3}, LD0/k;->e(La0/C;ILjava/lang/String;)La0/F;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance p2, La0/A;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, La0/A;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance p2, La0/A;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/A;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public b(LH0/d;LD0/v;)Z
    .locals 8

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, LD0/v;->b()I

    move-result p2

    iget-object v0, p0, LD0/k;->a:La0/C;

    invoke-virtual {v0}, La0/C;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, LH0/d;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x4

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return v4

    :cond_0
    if-gez p2, :cond_1

    invoke-virtual {p1}, LH0/d;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    :goto_0
    invoke-virtual {p1}, LH0/d;->length()I

    move-result v2

    if-ge p2, v2, :cond_2

    invoke-virtual {p1, p2}, LH0/d;->charAt(I)C

    move-result v2

    invoke-static {v2}, LG0/d;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int v2, p2, v1

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p1}, LH0/d;->length()I

    move-result v5

    if-le v3, v5, :cond_3

    return v4

    :cond_3
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-ge v6, v1, :cond_5

    add-int v5, p2, v6

    invoke-virtual {p1, v5}, LH0/d;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v5, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {p1, v2}, LH0/d;->charAt(I)C

    move-result p1

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_6

    const/4 v4, 0x1

    :cond_6
    move v5, v4

    :cond_7
    return v5
.end method

.method public c(LH0/d;)La0/e;
    .locals 1

    new-instance v0, LD0/q;

    invoke-direct {v0, p1}, LD0/q;-><init>(LH0/d;)V

    return-object v0
.end method

.method protected d(II)La0/C;
    .locals 1

    iget-object v0, p0, LD0/k;->a:La0/C;

    invoke-virtual {v0, p1, p2}, La0/C;->b(II)La0/C;

    move-result-object p1

    return-object p1
.end method

.method protected e(La0/C;ILjava/lang/String;)La0/F;
    .locals 1

    new-instance v0, LD0/o;

    invoke-direct {v0, p1, p2, p3}, LD0/o;-><init>(La0/C;ILjava/lang/String;)V

    return-object v0
.end method

.method public f(LH0/d;LD0/v;)La0/C;
    .locals 12

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LD0/k;->a:La0/C;

    invoke-virtual {v0}, La0/C;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v2

    invoke-virtual {p2}, LD0/v;->c()I

    move-result v3

    invoke-virtual {p0, p1, p2}, LD0/k;->g(LH0/d;LD0/v;)V

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v4

    add-int v5, v4, v1

    add-int/lit8 v6, v5, 0x4

    const-string v7, "Not a valid protocol version: "

    if-gt v6, v3, :cond_6

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    if-eqz v9, :cond_1

    if-ge v10, v1, :cond_1

    add-int v9, v4, v10

    invoke-virtual {p1, v9}, LH0/d;->charAt(I)C

    move-result v9

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v9, v11, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {p1, v5}, LH0/d;->charAt(I)C

    move-result v0

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_5

    :goto_2
    add-int/2addr v1, v8

    add-int/2addr v4, v1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v4, v3}, LH0/d;->l(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    :try_start_0
    invoke-virtual {p1, v4, v0}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v0, v8

    const/16 v5, 0x20

    invoke-virtual {p1, v5, v0, v3}, LH0/d;->l(III)I

    move-result v5

    if-ne v5, v1, :cond_3

    move v5, v3

    :cond_3
    :try_start_1
    invoke-virtual {p1, v0, v5}, LH0/d;->o(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p2, v5}, LD0/v;->d(I)V

    invoke-virtual {p0, v4, p1}, LD0/k;->d(II)La0/C;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance p2, La0/A;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol minor version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/A;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    new-instance p2, La0/A;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol major version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/A;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p2, La0/A;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid protocol version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/A;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, La0/A;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/A;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p2, La0/A;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, LH0/d;->n(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, La0/A;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method protected g(LH0/d;LD0/v;)V
    .locals 3

    invoke-virtual {p2}, LD0/v;->b()I

    move-result v0

    invoke-virtual {p2}, LD0/v;->c()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, LH0/d;->charAt(I)C

    move-result v2

    invoke-static {v2}, LG0/d;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, LD0/v;->d(I)V

    return-void
.end method
