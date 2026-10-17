.class public Lv0/d;
.super Lv0/l;
.source "SourceFile"


# static fields
.field private static final j:[C


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lv0/d;->j:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, La0/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lv0/d;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0, p1}, Lv0/l;-><init>(Ljava/nio/charset/Charset;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv0/d;->d:Z

    return-void
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1}, Lv0/d;->q([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o(Lb0/m;La0/q;)La0/e;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v4, "uri"

    invoke-virtual {v1, v4}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "realm"

    invoke-virtual {v1, v6}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "nonce"

    invoke-virtual {v1, v8}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "opaque"

    invoke-virtual {v1, v10}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "methodname"

    invoke-virtual {v1, v12}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "algorithm"

    invoke-virtual {v1, v13}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "MD5"

    if-nez v14, :cond_0

    move-object v14, v15

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const-string v3, "qop"

    move-object/from16 v16, v15

    invoke-virtual {v1, v3}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v10

    const-string v10, "auth-int"

    move-object/from16 v19, v11

    const-string v11, "auth"

    if-eqz v15, :cond_4

    move-object/from16 v20, v13

    new-instance v13, Ljava/util/StringTokenizer;

    move-object/from16 v21, v3

    const-string v3, ","

    invoke-direct {v13, v15, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v13

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v22

    goto :goto_0

    :cond_1
    instance-of v3, v0, La0/l;

    if-eqz v3, :cond_2

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_1
    const/4 v13, -0x1

    goto :goto_2

    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v20, v13

    const/4 v3, 0x0

    goto :goto_1

    :goto_2
    if-eq v3, v13, :cond_1a

    const-string v13, "charset"

    invoke-virtual {v1, v13}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    const-string v13, "ISO-8859-1"

    :cond_5
    const-string v15, "MD5-sess"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v10

    goto :goto_3

    :cond_6
    move-object/from16 v18, v10

    move-object/from16 v16, v14

    :goto_3
    :try_start_0
    invoke-static/range {v16 .. v16}, Lv0/d;->p(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10
    :try_end_0
    .catch Lv0/m; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface/range {p1 .. p1}, Lb0/m;->a()Ljava/security/Principal;

    move-result-object v16

    move-object/from16 v22, v4

    invoke-interface/range {v16 .. v16}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v8

    invoke-interface/range {p1 .. p1}, Lb0/m;->b()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v24, v6

    iget-object v6, v1, Lv0/d;->e:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v26, v11

    move-object/from16 v25, v12

    if-eqz v6, :cond_7

    iget-wide v11, v1, Lv0/d;->f:J

    move-object/from16 v28, v5

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    iput-wide v11, v1, Lv0/d;->f:J

    goto :goto_4

    :cond_7
    move-object/from16 v28, v5

    const-wide/16 v5, 0x1

    iput-wide v5, v1, Lv0/d;->f:J

    const/4 v5, 0x0

    iput-object v5, v1, Lv0/d;->g:Ljava/lang/String;

    iput-object v9, v1, Lv0/d;->e:Ljava/lang/String;

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/util/Formatter;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v5, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iget-wide v11, v1, Lv0/d;->f:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v27, v2

    const/4 v12, 0x1

    new-array v2, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v11, v2, v12

    const-string v11, "%08x"

    invoke-virtual {v6, v11, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lv0/d;->g:Ljava/lang/String;

    if-nez v6, :cond_8

    invoke-static {}, Lv0/d;->n()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lv0/d;->g:Ljava/lang/String;

    :cond_8
    const/4 v6, 0x0

    iput-object v6, v1, Lv0/d;->h:Ljava/lang/String;

    iput-object v6, v1, Lv0/d;->i:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/16 v12, 0x3a

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, LH0/f;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    invoke-static {v8}, Lv0/d;->q([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lv0/d;->g:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lv0/d;->h:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lv0/d;->h:Ljava/lang/String;

    :goto_5
    iget-object v8, v1, Lv0/d;->h:Ljava/lang/String;

    invoke-static {v8, v13}, LH0/f;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    invoke-static {v8}, Lv0/d;->q([B)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    if-ne v3, v11, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v6, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lv0/d;->i:Ljava/lang/String;

    move-object/from16 v12, v26

    goto/16 :goto_9

    :cond_a
    move-object/from16 v15, v25

    move-object/from16 v6, v28

    const/4 v11, 0x1

    if-ne v3, v11, :cond_f

    instance-of v11, v0, La0/l;

    if-eqz v11, :cond_b

    check-cast v0, La0/l;

    invoke-interface {v0}, La0/l;->getEntity()La0/k;

    move-result-object v11

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_d

    invoke-interface {v11}, La0/k;->k()Z

    move-result v0

    if-nez v0, :cond_d

    move-object/from16 v12, v26

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lv0/d;->i:Ljava/lang/String;

    const/4 v3, 0x2

    goto :goto_9

    :cond_c
    new-instance v0, Lb0/i;

    const-string v2, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v0, v2}, Lb0/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v12, v26

    new-instance v0, Lv0/g;

    invoke-direct {v0, v10}, Lv0/g;-><init>(Ljava/security/MessageDigest;)V

    if-eqz v11, :cond_e

    :try_start_1
    invoke-interface {v11, v0}, La0/k;->f(Ljava/io/OutputStream;)V

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    invoke-virtual {v0}, Lv0/g;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x3a

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lv0/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lv0/d;->q([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lv0/d;->i:Ljava/lang/String;

    goto :goto_9

    :goto_8
    new-instance v2, Lb0/i;

    const-string v3, "I/O error reading entity content"

    invoke-direct {v2, v3, v0}, Lb0/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    move-object/from16 v12, v26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3a

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lv0/d;->i:Ljava/lang/String;

    :goto_9
    iget-object v0, v1, Lv0/d;->i:Ljava/lang/String;

    invoke-static {v0, v13}, LH0/f;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lv0/d;->q([B)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_10

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    const/16 v13, 0x3a

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lv0/d;->g:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    if-ne v3, v8, :cond_11

    move-object/from16 v8, v18

    goto :goto_a

    :cond_11
    move-object v8, v12

    :goto_a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-static {v0}, LH0/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lv0/d;->q([B)Ljava/lang/String;

    move-result-object v0

    new-instance v5, LH0/d;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, LH0/d;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lv0/a;->h()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "Proxy-Authorization"

    invoke-virtual {v5, v8}, LH0/d;->d(Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    const-string v8, "Authorization"

    invoke-virtual {v5, v8}, LH0/d;->d(Ljava/lang/String;)V

    :goto_c
    const-string v8, ": Digest "

    invoke-virtual {v5, v8}, LH0/d;->d(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0x14

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, LD0/m;

    const-string v13, "username"

    invoke-direct {v10, v13, v4}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LD0/m;

    move-object/from16 v10, v24

    invoke-direct {v4, v10, v7}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LD0/m;

    move-object/from16 v7, v23

    invoke-direct {v4, v7, v9}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LD0/m;

    move-object/from16 v7, v22

    invoke-direct {v4, v7, v6}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LD0/m;

    const-string v6, "response"

    invoke-direct {v4, v6, v0}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "nc"

    if-eqz v3, :cond_14

    new-instance v4, LD0/m;

    const/4 v6, 0x1

    if-ne v3, v6, :cond_13

    move-object/from16 v10, v18

    :goto_d
    move-object/from16 v3, v21

    goto :goto_e

    :cond_13
    move-object v10, v12

    goto :goto_d

    :goto_e
    invoke-direct {v4, v3, v10}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LD0/m;

    invoke-direct {v4, v0, v2}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LD0/m;

    const-string v4, "cnonce"

    iget-object v6, v1, Lv0/d;->g:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    move-object/from16 v3, v21

    :goto_f
    new-instance v2, LD0/m;

    move-object/from16 v4, v20

    invoke-direct {v2, v4, v14}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v19, :cond_15

    new-instance v2, LD0/m;

    move-object/from16 v6, v17

    move-object/from16 v7, v19

    invoke-direct {v2, v6, v7}, LD0/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v12, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_19

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LD0/m;

    if-lez v12, :cond_16

    const-string v6, ", "

    invoke-virtual {v5, v6}, LH0/d;->d(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v2}, LD0/m;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_11

    :cond_17
    const/4 v6, 0x0

    goto :goto_12

    :cond_18
    :goto_11
    const/4 v6, 0x1

    :goto_12
    sget-object v7, LD0/f;->b:LD0/f;

    const/4 v9, 0x1

    xor-int/2addr v6, v9

    invoke-virtual {v7, v5, v2, v6}, LD0/f;->f(LH0/d;La0/y;Z)LH0/d;

    add-int/2addr v12, v9

    goto :goto_10

    :cond_19
    new-instance v0, LD0/q;

    invoke-direct {v0, v5}, LD0/q;-><init>(LH0/d;)V

    return-object v0

    :catch_1
    new-instance v0, Lb0/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsuppported digest algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lb0/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lb0/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "None of the qop methods is supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lb0/i;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13
.end method

.method private static p(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lv0/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lv0/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static q([B)Ljava/lang/String;
    .locals 7

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lv0/d;->j:[C

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v3, v6, v4

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public a(Lb0/m;La0/q;LG0/e;)La0/e;
    .locals 2

    const-string p3, "Credentials"

    invoke-static {p1, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP request"

    invoke-static {p2, p3}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "realm"

    invoke-virtual {p0, p3}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p3, "nonce"

    invoke-virtual {p0, p3}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lv0/l;->m()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "methodname"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lv0/l;->m()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2}, La0/q;->getRequestLine()La0/E;

    move-result-object v0

    invoke-interface {v0}, La0/E;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "charset"

    invoke-virtual {p0, p3}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv0/l;->m()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p2}, Lv0/l;->j(La0/q;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2}, Lv0/d;->o(Lb0/m;La0/q;)La0/e;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lb0/i;

    const-string p2, "missing nonce in challenge"

    invoke-direct {p1, p2}, Lb0/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lb0/i;

    const-string p2, "missing realm in challenge"

    invoke-direct {p1, p2}, Lb0/i;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lb0/m;La0/q;)La0/e;
    .locals 1

    new-instance v0, LG0/a;

    invoke-direct {v0}, LG0/a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lv0/d;->a(Lb0/m;La0/q;LG0/e;)La0/e;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lv0/l;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lv0/d;->d:Z

    return v0
.end method

.method public f(La0/e;)V
    .locals 1

    invoke-super {p0, p1}, Lv0/a;->f(La0/e;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv0/d;->d:Z

    invoke-virtual {p0}, Lv0/l;->m()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lb0/o;

    const-string v0, "Authentication challenge is empty"

    invoke-direct {p1, v0}, Lb0/o;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "digest"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIGEST [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lv0/d;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv0/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lv0/d;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
