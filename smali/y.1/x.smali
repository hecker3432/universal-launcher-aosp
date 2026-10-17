.class public final Ly/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/CharSequence;

.field private final c:[Ljava/lang/CharSequence;

.field private final d:Z

.field private final e:I

.field private final f:Landroid/os/Bundle;

.field private final g:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/x;->a:Ljava/lang/String;

    iput-object p2, p0, Ly/x;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Ly/x;->c:[Ljava/lang/CharSequence;

    iput-boolean p4, p0, Ly/x;->d:Z

    iput p5, p0, Ly/x;->e:I

    iput-object p6, p0, Ly/x;->f:Landroid/os/Bundle;

    iput-object p7, p0, Ly/x;->g:Ljava/util/Set;

    invoke-virtual {p0}, Ly/x;->b()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Ly/x;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Ly/x;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly/x;->e:I

    return v0
.end method
