.class Lcom/ricktop/ClockSkinCoco/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/n;->i(Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:[Landroid/graphics/drawable/Drawable;

.field final synthetic e:Lcom/ricktop/ClockSkinCoco/n;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/n;Landroid/app/Dialog;Landroid/widget/ImageView;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$e;->e:Lcom/ricktop/ClockSkinCoco/n;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/n$e;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/n$e;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/ricktop/ClockSkinCoco/n$e;->d:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$e;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$e;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/n$e;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/n$e;->e:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/n;->e(Lcom/ricktop/ClockSkinCoco/n;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/n$e;->e:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/n;->g(Lcom/ricktop/ClockSkinCoco/n;)Lcom/ricktop/ClockSkinCoco/b$b;

    move-result-object v1

    iget-object v1, v1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_image_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/n$e;->e:Lcom/ricktop/ClockSkinCoco/n;

    invoke-static {v1}, Lcom/ricktop/ClockSkinCoco/n;->e(Lcom/ricktop/ClockSkinCoco/n;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
