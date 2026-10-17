.class Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field hasLaunchIntent:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field isSelected:Z

.field isSystemApp:Z

.field packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$1;)V
    .registers 2

    .line 325
    invoke-direct {p0}, Lcom/ailife/ClockSkinCoco/hideapps/AppPickerActivity$AppInfo;-><init>()V

    return-void
.end method
