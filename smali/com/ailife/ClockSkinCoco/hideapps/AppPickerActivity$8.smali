.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$8;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;->loadApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$8;->this$0:Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;)I
    .registers 3

    .line 222
    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->appName:Ljava/lang/String;

    iget-object p2, p2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 219
    check-cast p1, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    check-cast p2, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$8;->compare(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;)I

    move-result p1

    return p1
.end method
