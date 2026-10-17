.class Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$4;
.super Ljava/lang/Object;
.source "TapActionEditorActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;->loadInstalledApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;


# direct methods
.method constructor <init>(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$4;->this$0:Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;)I
    .locals 1

    iget-object p1, p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->appName:Ljava/lang/String;

    iget-object p2, p2, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;

    check-cast p2, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$4;->compare(Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;)I

    move-result p1

    return p1
.end method
