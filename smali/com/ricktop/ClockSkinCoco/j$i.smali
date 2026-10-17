.class Lcom/ricktop/ClockSkinCoco/j$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/j;->k(ILjava/lang/String;IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lcom/ricktop/ClockSkinCoco/j;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/j;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$i;->d:Lcom/ricktop/ClockSkinCoco/j;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/j$i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/j$i;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Lua_memory_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/j$i;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "saveMemory"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$i;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$i;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->b(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/j$i;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {v0}, Lcom/ricktop/ClockSkinCoco/j;->a(Lcom/ricktop/ClockSkinCoco/j;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/j$i;->d:Lcom/ricktop/ClockSkinCoco/j;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/j;->e(Lcom/ricktop/ClockSkinCoco/j;)Lcom/ricktop/ClockSkinCoco/CocosClockFragment;

    move-result-object p1

    new-instance v0, Lcom/ricktop/ClockSkinCoco/j$i$a;

    invoke-direct {v0, p0}, Lcom/ricktop/ClockSkinCoco/j$i$a;-><init>(Lcom/ricktop/ClockSkinCoco/j$i;)V

    invoke-virtual {p1, v0}, Lcom/ricktop/ClockSkinCoco/CocosClockFragment;->e2(Ljava/lang/Runnable;)V

    return-void
.end method
