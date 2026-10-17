.class Lcom/ricktop/ClockSkinCoco/D$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ricktop/ClockSkinCoco/D;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/ricktop/ClockSkinCoco/D;


# direct methods
.method constructor <init>(Lcom/ricktop/ClockSkinCoco/D;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ricktop/ClockSkinCoco/D$b;->c:Lcom/ricktop/ClockSkinCoco/D;

    iput-object p2, p0, Lcom/ricktop/ClockSkinCoco/D$b;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 v1, 0x1    # Load 1 into v1
    xor-int p2, p2, v1 # v0 = v0 ^ v1

    iget-object v0, p0, Lcom/ricktop/ClockSkinCoco/D$b;->c:Lcom/ricktop/ClockSkinCoco/D;

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationName:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationX:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v0, Lcom/ricktop/ClockSkinCoco/D;->mainLocationY:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    

    return-void
.end method
