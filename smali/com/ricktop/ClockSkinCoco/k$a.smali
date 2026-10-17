.class Lcom/ricktop/ClockSkinCoco/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ricktop/ClockSkinCoco/k;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/k;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/k$a;->b:Lcom/ricktop/ClockSkinCoco/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/k$a;->b:Lcom/ricktop/ClockSkinCoco/k;

    invoke-static {p1}, Lcom/ricktop/ClockSkinCoco/k;->D1(Lcom/ricktop/ClockSkinCoco/k;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ricktop/ClockSkinCoco/MainActivity;

    invoke-virtual {p1}, Lcom/ricktop/ClockSkinCoco/MainActivity;->B()V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/k$a;->b:Lcom/ricktop/ClockSkinCoco/k;

    const-string v0, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/k;->C1(Lcom/ricktop/ClockSkinCoco/k;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/ricktop/ClockSkinCoco/k$a;->b:Lcom/ricktop/ClockSkinCoco/k;

    const-string v0, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-static {p1, v0}, Lcom/ricktop/ClockSkinCoco/k;->C1(Lcom/ricktop/ClockSkinCoco/k;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00fb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
