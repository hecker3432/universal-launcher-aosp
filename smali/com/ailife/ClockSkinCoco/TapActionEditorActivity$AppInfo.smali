.class Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;
.super Ljava/lang/Object;
.source "TapActionEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/TapActionEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field activityName:Ljava/lang/String;

.field appName:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->activityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method getActivityString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/TapActionEditorActivity$AppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
