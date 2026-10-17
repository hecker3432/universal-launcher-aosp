.class public Ld0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:La0/n;

.field private c:Ljava/net/InetAddress;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Ljava/util/Collection;

.field private l:Ljava/util/Collection;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld0/a$a;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld0/a$a;->f:Z

    const/16 v1, 0x32

    iput v1, p0, Ld0/a$a;->i:I

    iput-boolean v0, p0, Ld0/a$a;->g:Z

    iput-boolean v0, p0, Ld0/a$a;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Ld0/a$a;->m:I

    iput v1, p0, Ld0/a$a;->n:I

    iput v1, p0, Ld0/a$a;->o:I

    iput-boolean v0, p0, Ld0/a$a;->p:Z

    return-void
.end method


# virtual methods
.method public a()Ld0/a;
    .locals 20

    move-object/from16 v0, p0

    new-instance v18, Ld0/a;

    move-object/from16 v1, v18

    iget-boolean v2, v0, Ld0/a$a;->a:Z

    iget-object v3, v0, Ld0/a$a;->b:La0/n;

    iget-object v4, v0, Ld0/a$a;->c:Ljava/net/InetAddress;

    iget-boolean v5, v0, Ld0/a$a;->d:Z

    iget-object v6, v0, Ld0/a$a;->e:Ljava/lang/String;

    iget-boolean v7, v0, Ld0/a$a;->f:Z

    iget-boolean v8, v0, Ld0/a$a;->g:Z

    iget-boolean v9, v0, Ld0/a$a;->h:Z

    iget v10, v0, Ld0/a$a;->i:I

    iget-boolean v11, v0, Ld0/a$a;->j:Z

    iget-object v12, v0, Ld0/a$a;->k:Ljava/util/Collection;

    iget-object v13, v0, Ld0/a$a;->l:Ljava/util/Collection;

    iget v14, v0, Ld0/a$a;->m:I

    iget v15, v0, Ld0/a$a;->n:I

    move-object/from16 v19, v1

    iget v1, v0, Ld0/a$a;->o:I

    move/from16 v16, v1

    iget-boolean v1, v0, Ld0/a$a;->p:Z

    move/from16 v17, v1

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Ld0/a;-><init>(ZLa0/n;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZ)V

    return-object v18
.end method

.method public b(Z)Ld0/a$a;
    .locals 0

    iput-boolean p1, p0, Ld0/a$a;->j:Z

    return-object p0
.end method

.method public c(Z)Ld0/a$a;
    .locals 0

    iput-boolean p1, p0, Ld0/a$a;->h:Z

    return-object p0
.end method

.method public d(I)Ld0/a$a;
    .locals 0

    iput p1, p0, Ld0/a$a;->n:I

    return-object p0
.end method

.method public e(I)Ld0/a$a;
    .locals 0

    iput p1, p0, Ld0/a$a;->m:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ld0/a$a;
    .locals 0

    iput-object p1, p0, Ld0/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)Ld0/a$a;
    .locals 0

    iput-boolean p1, p0, Ld0/a$a;->a:Z

    return-object p0
.end method

.method public h(Ljava/net/InetAddress;)Ld0/a$a;
    .locals 0

    iput-object p1, p0, Ld0/a$a;->c:Ljava/net/InetAddress;

    return-object p0
.end method

.method public i(I)Ld0/a$a;
    .locals 0

    iput p1, p0, Ld0/a$a;->i:I

    return-object p0
.end method

.method public j(La0/n;)Ld0/a$a;
    .locals 0

    iput-object p1, p0, Ld0/a$a;->b:La0/n;

    return-object p0
.end method

.method public k(Ljava/util/Collection;)Ld0/a$a;
    .locals 0

    iput-object p1, p0, Ld0/a$a;->l:Ljava/util/Collection;

    return-object p0
.end method

.method public l(Z)Ld0/a$a;
    .locals 0

    iput-boolean p1, p0, Ld0/a$a;->f:Z

    return-object p0
.end method

.method public m(Z)Ld0/a$a;
    .locals 0

    iput-boolean p1, p0, Ld0/a$a;->g:Z

    return-object p0
.end method

.method public n(I)Ld0/a$a;
    .locals 0

    iput p1, p0, Ld0/a$a;->o:I

    return-object p0
.end method

.method public o(Z)Ld0/a$a;
    .locals 0

    iput-boolean p1, p0, Ld0/a$a;->d:Z

    return-object p0
.end method

.method public p(Ljava/util/Collection;)Ld0/a$a;
    .locals 0

    iput-object p1, p0, Ld0/a$a;->k:Ljava/util/Collection;

    return-object p0
.end method
