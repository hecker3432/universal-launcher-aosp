.class public abstract Lw0/a;
.super Lw0/g;
.source "SourceFile"


# instance fields
.field public b:Lt0/b;

.field private c:LE0/e;

.field private d:LG0/h;

.field private e:Ll0/b;

.field private f:La0/b;

.field private g:Ll0/f;

.field private h:Lr0/l;

.field private i:Lb0/f;

.field private j:LG0/b;

.field private k:LG0/i;

.field private l:Lc0/i;

.field private m:Lc0/n;

.field private n:Lc0/b;

.field private o:Lc0/b;

.field private p:Lc0/g;

.field private q:Lc0/h;

.field private r:Ln0/d;

.field private s:Lc0/p;


# direct methods
.method protected constructor <init>(Ll0/b;LE0/e;)V
    .locals 2

    invoke-direct {p0}, Lw0/g;-><init>()V

    new-instance v0, Lt0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lw0/a;->b:Lt0/b;

    iput-object p2, p0, Lw0/a;->c:LE0/e;

    iput-object p1, p0, Lw0/a;->e:Ll0/b;

    return-void
.end method

.method private declared-synchronized k0()LG0/g;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->k:LG0/i;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lw0/a;->h0()LG0/b;

    move-result-object v0

    invoke-virtual {v0}, LG0/b;->k()I

    move-result v1

    new-array v2, v1, [La0/r;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, LG0/b;->j(I)La0/r;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, LG0/b;->m()I

    move-result v1

    new-array v4, v1, [La0/u;

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, LG0/b;->l(I)La0/u;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, LG0/i;

    invoke-direct {v0, v2, v4}, LG0/i;-><init>([La0/r;[La0/u;)V

    iput-object v0, p0, Lw0/a;->k:LG0/i;

    :cond_2
    iget-object v0, p0, Lw0/a;->k:LG0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized D(La0/r;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lw0/a;->h0()LG0/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LG0/b;->c(La0/r;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/a;->k:LG0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized E(La0/r;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lw0/a;->h0()LG0/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LG0/b;->d(La0/r;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/a;->k:LG0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized F(La0/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lw0/a;->h0()LG0/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LG0/b;->e(La0/u;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lw0/a;->k:LG0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected G()Lb0/f;
    .locals 3

    new-instance v0, Lb0/f;

    invoke-direct {v0}, Lb0/f;-><init>()V

    new-instance v1, Lv0/c;

    invoke-direct {v1}, Lv0/c;-><init>()V

    const-string v2, "Basic"

    invoke-virtual {v0, v2, v1}, Lb0/f;->d(Ljava/lang/String;Lb0/d;)V

    new-instance v1, Lv0/e;

    invoke-direct {v1}, Lv0/e;-><init>()V

    const-string v2, "Digest"

    invoke-virtual {v0, v2, v1}, Lb0/f;->d(Ljava/lang/String;Lb0/d;)V

    new-instance v1, Lv0/k;

    invoke-direct {v1}, Lv0/k;-><init>()V

    const-string v2, "NTLM"

    invoke-virtual {v0, v2, v1}, Lb0/f;->d(Ljava/lang/String;Lb0/d;)V

    return-object v0
.end method

.method protected H()Ll0/b;
    .locals 4

    invoke-static {}, Lx0/p;->a()Lo0/h;

    move-result-object v0

    invoke-virtual {p0}, Lw0/a;->j0()LE0/e;

    move-result-object v1

    const-string v2, "http.connection-manager.factory-class-name"

    invoke-interface {v1, v2}, LE0/e;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Li/r;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_2
    new-instance v1, Lx0/d;

    invoke-direct {v1, v0}, Lx0/d;-><init>(Lo0/h;)V

    return-object v1
.end method

.method protected I(LG0/h;Ll0/b;La0/b;Ll0/f;Ln0/d;LG0/g;Lc0/i;Lc0/n;Lc0/b;Lc0/b;Lc0/p;LE0/e;)Lc0/o;
    .locals 16

    new-instance v14, Lw0/o;

    move-object/from16 v15, p0

    iget-object v1, v15, Lw0/a;->b:Lt0/b;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lw0/o;-><init>(Lt0/b;LG0/h;Ll0/b;La0/b;Ll0/f;Ln0/d;LG0/g;Lc0/i;Lc0/n;Lc0/b;Lc0/b;Lc0/p;LE0/e;)V

    return-object v14
.end method

.method protected J()Ll0/f;
    .locals 1

    new-instance v0, Lw0/i;

    invoke-direct {v0}, Lw0/i;-><init>()V

    return-object v0
.end method

.method protected K()La0/b;
    .locals 1

    new-instance v0, Lu0/b;

    invoke-direct {v0}, Lu0/b;-><init>()V

    return-object v0
.end method

.method protected L()Lr0/l;
    .locals 3

    new-instance v0, Lr0/l;

    invoke-direct {v0}, Lr0/l;-><init>()V

    new-instance v1, Lz0/l;

    invoke-direct {v1}, Lz0/l;-><init>()V

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    new-instance v1, Lz0/l;

    invoke-direct {v1}, Lz0/l;-><init>()V

    const-string v2, "best-match"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    new-instance v1, Lz0/n;

    invoke-direct {v1}, Lz0/n;-><init>()V

    const-string v2, "compatibility"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    new-instance v1, Lz0/w;

    invoke-direct {v1}, Lz0/w;-><init>()V

    const-string v2, "netscape"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    new-instance v1, Lz0/z;

    invoke-direct {v1}, Lz0/z;-><init>()V

    const-string v2, "rfc2109"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    new-instance v1, Lz0/G;

    invoke-direct {v1}, Lz0/G;-><init>()V

    const-string v2, "rfc2965"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    new-instance v1, Lz0/s;

    invoke-direct {v1}, Lz0/s;-><init>()V

    const-string v2, "ignoreCookies"

    invoke-virtual {v0, v2, v1}, Lr0/l;->d(Ljava/lang/String;Lr0/j;)V

    return-object v0
.end method

.method protected M()Lc0/g;
    .locals 1

    new-instance v0, Lw0/d;

    invoke-direct {v0}, Lw0/d;-><init>()V

    return-object v0
.end method

.method protected N()Lc0/h;
    .locals 1

    new-instance v0, Lw0/e;

    invoke-direct {v0}, Lw0/e;-><init>()V

    return-object v0
.end method

.method protected O()LG0/e;
    .locals 3

    new-instance v0, LG0/a;

    invoke-direct {v0}, LG0/a;-><init>()V

    invoke-virtual {p0}, Lw0/a;->c0()Ll0/b;

    move-result-object v1

    invoke-interface {v1}, Ll0/b;->b()Lo0/h;

    move-result-object v1

    const-string v2, "http.scheme-registry"

    invoke-interface {v0, v2, v1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lw0/a;->Y()Lb0/f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lw0/a;->e0()Lr0/l;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lw0/a;->f0()Lc0/g;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lw0/a;->g0()Lc0/h;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected abstract P()LE0/e;
.end method

.method protected abstract Q()LG0/b;
.end method

.method protected R()Lc0/i;
    .locals 1

    new-instance v0, Lw0/k;

    invoke-direct {v0}, Lw0/k;-><init>()V

    return-object v0
.end method

.method protected S()Ln0/d;
    .locals 2

    new-instance v0, Lx0/i;

    invoke-virtual {p0}, Lw0/a;->c0()Ll0/b;

    move-result-object v1

    invoke-interface {v1}, Ll0/b;->b()Lo0/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lx0/i;-><init>(Lo0/h;)V

    return-object v0
.end method

.method protected T()Lc0/b;
    .locals 1

    new-instance v0, Lw0/s;

    invoke-direct {v0}, Lw0/s;-><init>()V

    return-object v0
.end method

.method protected U()LG0/h;
    .locals 1

    new-instance v0, LG0/h;

    invoke-direct {v0}, LG0/h;-><init>()V

    return-object v0
.end method

.method protected V()Lc0/b;
    .locals 1

    new-instance v0, Lw0/w;

    invoke-direct {v0}, Lw0/w;-><init>()V

    return-object v0
.end method

.method protected W()Lc0/p;
    .locals 1

    new-instance v0, Lw0/p;

    invoke-direct {v0}, Lw0/p;-><init>()V

    return-object v0
.end method

.method protected X(La0/q;)LE0/e;
    .locals 3

    new-instance v0, Lw0/f;

    invoke-virtual {p0}, Lw0/a;->j0()LE0/e;

    move-result-object v1

    invoke-interface {p1}, La0/p;->getParams()LE0/e;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, v2}, Lw0/f;-><init>(LE0/e;LE0/e;LE0/e;LE0/e;)V

    return-object v0
.end method

.method public final declared-synchronized Y()Lb0/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->i:Lb0/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->G()Lb0/f;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->i:Lb0/f;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->i:Lb0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z()Lc0/c;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized a0()Lc0/f;
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized b0()Ll0/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->g:Ll0/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->J()Ll0/f;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->g:Ll0/f;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->g:Ll0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c0()Ll0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->e:Ll0/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->H()Ll0/b;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->e:Ll0/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->e:Ll0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lw0/a;->c0()Ll0/b;

    move-result-object v0

    invoke-interface {v0}, Ll0/b;->c()V

    return-void
.end method

.method public final declared-synchronized d0()La0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->f:La0/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->K()La0/b;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->f:La0/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->f:La0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e0()Lr0/l;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->h:Lr0/l;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->L()Lr0/l;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->h:Lr0/l;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->h:Lr0/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f0()Lc0/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->p:Lc0/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->M()Lc0/g;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->p:Lc0/g;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->p:Lc0/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g0()Lc0/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->q:Lc0/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->N()Lc0/h;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->q:Lc0/h;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->q:Lc0/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized h0()LG0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->j:LG0/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->Q()LG0/b;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->j:LG0/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->j:LG0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i0()Lc0/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->l:Lc0/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->R()Lc0/i;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->l:Lc0/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->l:Lc0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j0()LE0/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->c:LE0/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->P()LE0/e;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->c:LE0/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->c:LE0/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l0()Lc0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->o:Lc0/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->T()Lc0/b;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->o:Lc0/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->o:Lc0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m0()Lc0/n;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->m:Lc0/n;

    if-nez v0, :cond_0

    new-instance v0, Lw0/m;

    invoke-direct {v0}, Lw0/m;-><init>()V

    iput-object v0, p0, Lw0/a;->m:Lc0/n;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->m:Lc0/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n0()LG0/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->d:LG0/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->U()LG0/h;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->d:LG0/h;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->d:LG0/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o0()Ln0/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->r:Ln0/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->S()Ln0/d;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->r:Ln0/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->r:Ln0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p0()Lc0/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->n:Lc0/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->V()Lc0/b;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->n:Lc0/b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->n:Lc0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q0()Lc0/p;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/a;->s:Lc0/p;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/a;->W()Lc0/p;

    move-result-object v0

    iput-object v0, p0, Lw0/a;->s:Lc0/p;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw0/a;->s:Lc0/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r0(Lc0/i;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lw0/a;->l:Lc0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final s(La0/n;La0/q;LG0/e;)Lf0/c;
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "HTTP request"

    invoke-static {v0, v2}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lw0/a;->O()LG0/e;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v15, v2

    goto :goto_0

    :cond_0
    new-instance v3, LG0/c;

    invoke-direct {v3, v1, v2}, LG0/c;-><init>(LG0/e;LG0/e;)V

    move-object v15, v3

    :goto_0
    invoke-virtual {v14, v0}, Lw0/a;->X(La0/q;)LE0/e;

    move-result-object v13

    invoke-static {v13}, Lg0/a;->a(LE0/e;)Ld0/a;

    move-result-object v1

    const-string v2, "http.request-config"

    invoke-interface {v15, v2, v1}, LG0/e;->w(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lw0/a;->n0()LG0/h;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lw0/a;->c0()Ll0/b;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lw0/a;->d0()La0/b;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lw0/a;->b0()Ll0/f;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lw0/a;->o0()Ln0/d;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lw0/a;->k0()LG0/g;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lw0/a;->i0()Lc0/i;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lw0/a;->m0()Lc0/n;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lw0/a;->p0()Lc0/b;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lw0/a;->l0()Lc0/b;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lw0/a;->q0()Lc0/p;

    move-result-object v12

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v13}, Lw0/a;->I(LG0/h;Ll0/b;La0/b;Ll0/f;Ln0/d;LG0/g;Lc0/i;Lc0/n;Lc0/b;Lc0/b;Lc0/p;LE0/e;)Lc0/o;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lw0/a;->o0()Ln0/d;

    invoke-virtual/range {p0 .. p0}, Lw0/a;->a0()Lc0/f;

    invoke-virtual/range {p0 .. p0}, Lw0/a;->Z()Lc0/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    :try_start_1
    invoke-interface {v1, v2, v0, v15}, Lc0/o;->a(La0/n;La0/q;LG0/e;)La0/s;

    move-result-object v0

    invoke-static {v0}, Lw0/h;->b(La0/s;)Lf0/c;
    :try_end_1
    .catch La0/m; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lc0/e;

    invoke-direct {v1, v0}, Lc0/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized s0(Lc0/m;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lw0/n;

    invoke-direct {v0, p1}, Lw0/n;-><init>(Lc0/m;)V

    iput-object v0, p0, Lw0/a;->m:Lc0/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
