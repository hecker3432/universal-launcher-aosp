.class Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;
.super Ljava/lang/Object;
.source "IconPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/IconPickerActivity;->showIconPackDialog(Ljava/lang/Object;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$filteredIcons:Ljava/util/ArrayList;

.field final synthetic val$iconNames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/IconPickerActivity;Ljava/util/ArrayList;Ljava/util/List;Landroid/widget/BaseAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 627
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->this$0:Lcom/ailife/ClockSkinCoco/IconPickerActivity;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$filteredIcons:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$iconNames:Ljava/util/List;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 654
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 630
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 635
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$filteredIcons:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 636
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 638
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$iconNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 639
    iget-object p3, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$filteredIcons:Ljava/util/ArrayList;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    goto :goto_19

    :cond_2b
    goto :goto_4e

    .line 642
    :cond_2c
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$iconNames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 643
    check-cast p3, Ljava/lang/String;

    .line 644
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4d

    .line 645
    iget-object p4, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$filteredIcons:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_4d
    goto :goto_32

    .line 649
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/IconPickerActivity$7;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 650
    return-void
.end method
