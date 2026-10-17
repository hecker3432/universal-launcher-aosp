.class public Lcom/ricktop/ClockSkinCoco/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ricktop/ClockSkinCoco/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/graphics/drawable/Drawable;

.field final c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field public h:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/b$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/ricktop/ClockSkinCoco/b$b;->c:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/ricktop/ClockSkinCoco/b$b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "swlauncher_app_pref"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/ricktop/ClockSkinCoco/b$b;->d:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/b$b;->d:Z

    :goto_0
    iget-boolean p1, p0, Lcom/ricktop/ClockSkinCoco/b$b;->d:Z

    invoke-static {p6, p0, p1, p2}, Lcom/ricktop/ClockSkinCoco/b;->f(Landroid/content/Context;Lcom/ricktop/ClockSkinCoco/b$b;ZZ)V

    # Initialize position field to -1 (not set)
    const/4 p1, -0x1

    iput p1, p0, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    return-void
.end method
