.class LY/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:LY/c;


# direct methods
.method constructor <init>(LY/c;)V
    .locals 0

    iput-object p1, p0, LY/c$b;->a:LY/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, LY/c;->b(LY/b;)LY/b;

    const-string v0, "OppoManager"

    const-string v1, "OIfaceService binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
