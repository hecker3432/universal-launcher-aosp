.class public Lu0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/t;


# static fields
.field public static final b:Lu0/c;


# instance fields
.field protected final a:La0/D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/c;

    invoke-direct {v0}, Lu0/c;-><init>()V

    sput-object v0, Lu0/c;->b:Lu0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lu0/d;->a:Lu0/d;

    invoke-direct {p0, v0}, Lu0/c;-><init>(La0/D;)V

    return-void
.end method

.method public constructor <init>(La0/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Reason phrase catalog"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/D;

    iput-object p1, p0, Lu0/c;->a:La0/D;

    return-void
.end method


# virtual methods
.method public a(La0/F;LG0/e;)La0/s;
    .locals 2

    const-string v0, "Status line"

    invoke-static {p1, v0}, LH0/a;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LD0/i;

    iget-object v1, p0, Lu0/c;->a:La0/D;

    invoke-virtual {p0, p2}, Lu0/c;->b(LG0/e;)Ljava/util/Locale;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, LD0/i;-><init>(La0/F;La0/D;Ljava/util/Locale;)V

    return-object v0
.end method

.method protected b(LG0/e;)Ljava/util/Locale;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method
