.class public Lw0/w;
.super Lw0/b;
.source "SourceFile"


# static fields
.field public static final e:Lw0/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw0/w;

    invoke-direct {v0}, Lw0/w;-><init>()V

    sput-object v0, Lw0/w;->e:Lw0/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x191

    const-string v1, "WWW-Authenticate"

    invoke-direct {p0, v0, v1}, Lw0/b;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(La0/n;Lb0/c;LG0/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lw0/b;->a(La0/n;Lb0/c;LG0/e;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/util/Map;La0/n;La0/s;LG0/e;)Ljava/util/Queue;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lw0/b;->b(Ljava/util/Map;La0/n;La0/s;LG0/e;)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(La0/n;La0/s;LG0/e;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lw0/b;->c(La0/n;La0/s;LG0/e;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(La0/n;La0/s;LG0/e;)Ljava/util/Map;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lw0/b;->d(La0/n;La0/s;LG0/e;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(La0/n;Lb0/c;LG0/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lw0/b;->e(La0/n;Lb0/c;LG0/e;)V

    return-void
.end method

.method f(Ld0/a;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p1}, Ld0/a;->e()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
