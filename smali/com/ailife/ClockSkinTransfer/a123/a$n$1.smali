.class Lcom/ailife/ClockSkinTransfer/a123/a$n$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinTransfer/a123/a$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/a123/a$n;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinTransfer/a123/a$n;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/a123/a$n$1;->a:Lcom/ailife/ClockSkinTransfer/a123/a$n;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/a123/a$n$1;->a:Lcom/ailife/ClockSkinTransfer/a123/a$n;

    invoke-static {v0}, Lcom/ailife/ClockSkinTransfer/a123/a$n;->a(Lcom/ailife/ClockSkinTransfer/a123/a$n;)Ljava/util/Map;

    move-result-object v0

    if-nez p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinTransfer/a123/a$n$1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
