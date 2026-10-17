.class public final La0/v;
.super La0/C;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:La0/v;

.field public static final e:La0/v;

.field public static final f:La0/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La0/v;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La0/v;-><init>(II)V

    sput-object v0, La0/v;->d:La0/v;

    new-instance v0, La0/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, La0/v;-><init>(II)V

    sput-object v0, La0/v;->e:La0/v;

    new-instance v0, La0/v;

    invoke-direct {v0, v1, v1}, La0/v;-><init>(II)V

    sput-object v0, La0/v;->f:La0/v;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, La0/C;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public b(II)La0/C;
    .locals 1

    iget v0, p0, La0/C;->b:I

    if-ne p1, v0, :cond_0

    iget v0, p0, La0/C;->c:I

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    sget-object p1, La0/v;->e:La0/v;

    return-object p1

    :cond_1
    if-ne p2, v0, :cond_2

    sget-object p1, La0/v;->f:La0/v;

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    sget-object p1, La0/v;->d:La0/v;

    return-object p1

    :cond_3
    new-instance v0, La0/v;

    invoke-direct {v0, p1, p2}, La0/v;-><init>(II)V

    return-object v0
.end method
