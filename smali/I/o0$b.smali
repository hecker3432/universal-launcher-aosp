.class LI/o0$b;
.super LI/o0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static c:Ljava/lang/reflect/Field; = null

.field private static d:Z = false

.field private static e:Ljava/lang/reflect/Constructor; = null

.field private static f:Z = false


# instance fields
.field private b:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, LI/o0$d;-><init>()V

    invoke-static {}, LI/o0$b;->d()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, LI/o0$b;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(LI/o0;)V
    .locals 0

    invoke-direct {p0}, LI/o0$d;-><init>()V

    invoke-virtual {p1}, LI/o0;->m()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, LI/o0$b;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method private static d()Landroid/view/WindowInsets;
    .locals 7

    const/4 v0, 0x0

    sget-boolean v1, LI/o0$b;->d:Z

    const/4 v2, 0x1

    const-string v3, "WindowInsetsCompat"

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, LI/q0;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "CONSUMED"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, LI/o0$b;->c:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Could not retrieve WindowInsets.CONSUMED field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v2, LI/o0$b;->d:Z

    :cond_0
    sget-object v1, LI/o0$b;->c:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LI/n0;->a(Ljava/lang/Object;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v5, Landroid/view/WindowInsets;

    invoke-direct {v5, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    move-exception v1

    const-string v5, "Could not get value from WindowInsets.CONSUMED field"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-boolean v1, LI/o0$b;->f:Z

    if-nez v1, :cond_2

    :try_start_2
    invoke-static {}, LI/q0;->a()Ljava/lang/Class;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, LI/o0$b;->e:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sput-boolean v2, LI/o0$b;->f:Z

    :cond_2
    sget-object v1, LI/o0$b;->e:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3

    :try_start_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LI/n0;->a(Ljava/lang/Object;)Landroid/view/WindowInsets;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v4
.end method


# virtual methods
.method a()LI/o0;
    .locals 1

    iget-object v0, p0, LI/o0$b;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, LI/o0;->n(Landroid/view/WindowInsets;)LI/o0;

    move-result-object v0

    return-object v0
.end method

.method c(LB/c;)V
    .locals 4

    iget-object v0, p0, LI/o0$b;->b:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget v1, p1, LB/c;->a:I

    iget v2, p1, LB/c;->b:I

    iget v3, p1, LB/c;->c:I

    iget p1, p1, LB/c;->d:I

    invoke-static {v0, v1, v2, v3, p1}, LI/p0;->a(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, LI/o0$b;->b:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
