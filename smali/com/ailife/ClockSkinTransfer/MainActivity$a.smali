.class final Lcom/ailife/ClockSkinTransfer/MainActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinTransfer/MainActivity;->a(Ljava/lang/String;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ailife/ClockSkinTransfer/MainActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinTransfer/MainActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;->a:Lcom/ailife/ClockSkinTransfer/MainActivity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget v0, p0, Lcom/ailife/ClockSkinTransfer/MainActivity$a;->c:I

    invoke-virtual {p1, p2, v0}, Lcom/ailife/ClockSkinTransfer/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
