.class public abstract LB0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC0/c;


# instance fields
.field private final a:LC0/f;

.field private final b:Lk0/b;

.field private final c:Ljava/util/List;

.field protected final d:LD0/u;

.field private e:I

.field private f:La0/p;


# direct methods
.method public constructor <init>(LC0/f;LD0/u;LE0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, LB0/a;->a:LC0/f;

    invoke-static {p3}, LE0/d;->a(LE0/e;)Lk0/b;

    move-result-object p1

    iput-object p1, p0, LB0/a;->b:Lk0/b;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, LD0/k;->c:LD0/k;

    :goto_0
    iput-object p2, p0, LB0/a;->d:LD0/u;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB0/a;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, LB0/a;->e:I

    return-void
.end method

.method public static c(LC0/f;IILD0/u;)[La0/e;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, LD0/k;->c:LD0/k;

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, LB0/a;->d(LC0/f;IILD0/u;Ljava/util/List;)[La0/e;

    move-result-object p0

    return-object p0
.end method

.method public static d(LC0/f;IILD0/u;Ljava/util/List;)[La0/e;
    .locals 8

    const-string v0, "Session input buffer"

    invoke-static {p0, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Line parser"

    invoke-static {p3, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header line list"

    invoke-static {p4, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    new-instance v1, LH0/d;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, LH0/d;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, LH0/d;->h()V

    :goto_1
    invoke-interface {p0, v1}, LC0/f;->b(LH0/d;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_a

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto :goto_6

    :cond_2
    invoke-virtual {v1, v5}, LH0/d;->charAt(I)C

    move-result v3

    const/16 v6, 0x9

    const/16 v7, 0x20

    if-eq v3, v7, :cond_3

    invoke-virtual {v1, v5}, LH0/d;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_8

    :cond_3
    if-eqz v2, :cond_8

    :goto_2
    invoke-virtual {v1}, LH0/d;->length()I

    move-result v3

    if-ge v5, v3, :cond_5

    invoke-virtual {v1, v5}, LH0/d;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-lez p2, :cond_7

    invoke-virtual {v2}, LH0/d;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    if-gt v3, p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, La0/x;

    const-string p1, "Maximum line length limit exceeded"

    invoke-direct {p0, p1}, La0/x;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {v2, v7}, LH0/d;->a(C)V

    invoke-virtual {v1}, LH0/d;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v1, v5, v3}, LH0/d;->c(LH0/d;II)V

    goto :goto_5

    :cond_8
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move-object v1, v0

    :goto_5
    if-lez p1, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p1, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, La0/x;

    const-string p1, "Maximum header count exceeded"

    invoke-direct {p0, p1}, La0/x;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [La0/e;

    :goto_7
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_b

    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH0/d;

    :try_start_0
    invoke-interface {p3, p1}, LD0/u;->c(LH0/d;)La0/e;

    move-result-object p1

    aput-object p1, p0, v5
    :try_end_0
    .catch La0/A; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_0
    move-exception p0

    new-instance p1, La0/B;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, La0/B;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-object p0
.end method


# virtual methods
.method public a()La0/p;
    .locals 5

    iget v0, p0, LB0/a;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent parser state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, LB0/a;->a:LC0/f;

    invoke-virtual {p0, v0}, LB0/a;->b(LC0/f;)La0/p;

    move-result-object v0

    iput-object v0, p0, LB0/a;->f:La0/p;
    :try_end_0
    .catch La0/A; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, LB0/a;->e:I

    :goto_0
    iget-object v0, p0, LB0/a;->a:LC0/f;

    iget-object v1, p0, LB0/a;->b:Lk0/b;

    invoke-virtual {v1}, Lk0/b;->c()I

    move-result v1

    iget-object v2, p0, LB0/a;->b:Lk0/b;

    invoke-virtual {v2}, Lk0/b;->d()I

    move-result v2

    iget-object v3, p0, LB0/a;->d:LD0/u;

    iget-object v4, p0, LB0/a;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, LB0/a;->d(LC0/f;IILD0/u;Ljava/util/List;)[La0/e;

    move-result-object v0

    iget-object v1, p0, LB0/a;->f:La0/p;

    invoke-interface {v1, v0}, La0/p;->f([La0/e;)V

    iget-object v0, p0, LB0/a;->f:La0/p;

    const/4 v1, 0x0

    iput-object v1, p0, LB0/a;->f:La0/p;

    iget-object v1, p0, LB0/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, LB0/a;->e:I

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La0/B;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La0/B;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract b(LC0/f;)La0/p;
.end method
