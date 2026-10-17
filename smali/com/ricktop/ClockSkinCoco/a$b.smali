.class Lcom/ricktop/ClockSkinCoco/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/a;->c(Lcom/ricktop/ClockSkinCoco/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/b$b;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/ricktop/ClockSkinCoco/a;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/a;Lcom/ricktop/ClockSkinCoco/b$b;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/a$b;->d:Lcom/ricktop/ClockSkinCoco/a;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/a$b;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iput-object p3, p0, Lcom/ricktop/ClockSkinCoco/a$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/ricktop/ClockSkinCoco/WatchApp;->a()Lcom/ricktop/ClockSkinCoco/WatchApp;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/g;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ricktop/ClockSkinCoco/a$b;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v1, v1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_image_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ricktop/ClockSkinCoco/MainActivity;->F:Lcom/ricktop/ClockSkinCoco/m;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/m;->c()Lcom/ricktop/ClockSkinCoco/m$a;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/a$b;->b:Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v0, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/ricktop/ClockSkinCoco/b$b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, p1}, Lcom/ricktop/ClockSkinCoco/m$a;->b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/a$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
