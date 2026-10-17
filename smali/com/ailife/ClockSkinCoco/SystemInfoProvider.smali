.class public Lcom/ailife/ClockSkinCoco/SystemInfoProvider;
.super Ljava/lang/Object;
.source "SystemInfoProvider.java"


# static fields
.field public static wifiSignalStrength:I

.field public static wifiIpAddress:Ljava/lang/String;

.field public static totalStorage:J

.field public static usedStorage:J

.field public static totalRam:J

.field public static usedRam:J

.field public static batteryTemperature:I

# Status fields (correspond to WatchApp h-m but local to SystemInfoProvider)
.field public static wifiStatus:I

.field public static bluetoothStatus:I

.field public static gpsStatus:I

.field public static cellSignalLevel:I

.field public static cellConnectionType:I

# device constants (set once)
.field public static androidApiVersion:I

.field public static systemLanguage:Ljava/lang/String;

.field public static deviceName:Ljava/lang/String;

.field public static deviceModel:Ljava/lang/String;

.field public static deviceManufacturer:Ljava/lang/String;

.field public static appVersionName:Ljava/lang/String;

# Alarm fields
.field public static alarmOn:I

.field public static alarmHours:Ljava/lang/String;

.field public static alarmMinutes:Ljava/lang/String;

# Constants initialization tracking
.field public static constantsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiSignalStrength:I

    const-string v1, "0.0.0.0"

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiIpAddress:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalStorage:J

    sput-wide v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->usedStorage:J

    sput-wide v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalRam:J

    sput-wide v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->usedRam:J

    const/4 v0, 0x0

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->batteryTemperature:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiStatus:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->bluetoothStatus:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->gpsStatus:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellSignalLevel:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellConnectionType:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->androidApiVersion:I

    const-string v1, ""

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->systemLanguage:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceName:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceModel:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceManufacturer:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->appVersionName:Ljava/lang/String;

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmOn:I

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmHours:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmMinutes:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->constantsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateSystemInfo(Landroid/content/Context;)V
    .locals 0

    # Update wifi signal and IP
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateWifiInfo(Landroid/content/Context;)V

    # Update storage info
    invoke-static {}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateStorageInfo()V

    # Update RAM info
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateRamInfo(Landroid/content/Context;)V

    # Update battery temperature
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateBatteryTemperature(Landroid/content/Context;)V

    # Update alarm info
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateAlarmInfo(Landroid/content/Context;)V

    # Update WatchApp status fields
    invoke-static {p0}, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->updateWatchAppStatus(Landroid/content/Context;)V

    return-void
.end method

.method public static updateWifiInfo(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_end

    # Get connection info for signal strength
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_signal

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    # Convert RSSI to percentage (rough approximation)
    # RSSI range: -100 (worst) to -30 (best)
    add-int/lit8 v2, v2, 0x64    # add 100
    mul-int/lit8 v2, v2, 0x64    # multiply by 100
    const/16 v3, 0x46            # 70 (range)
    div-int/2addr v2, v3

    # Clamp to 0-100
    const/4 v3, 0x0
    if-ge v2, v3, :cond_min
    move v2, v3
    :cond_min
    const/16 v3, 0x64
    if-le v2, v3, :cond_max
    move v2, v3
    :cond_max

    sput v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiSignalStrength:I

    :cond_signal
    # Get IP address
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_end

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    # Convert int to IP string
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v4, v2, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v2, 0x8
    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v2, 0x10
    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v2, 0x18
    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiIpAddress:Ljava/lang/String;

    :cond_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_end
    return-void
.end method

.method public static updateStorageInfo()V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    # Get total storage
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalStorage:J

    # Get available storage, then calculate used
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    # Used = Total - Available
    sget-wide v4, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalStorage:J

    sub-long/2addr v4, v2

    sput-wide v4, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->usedStorage:J

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_end
    return-void
.end method

.method public static updateRamInfo(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_end

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    # Get total RAM
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalRam:J

    # Get available RAM, then calculate used
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    # Used = Total - Available
    sget-wide v4, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalRam:J

    sub-long/2addr v4, v2

    sput-wide v4, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->usedRam:J

    :cond_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_end
    return-void
.end method

.method public static updateBatteryTemperature(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    if-eqz v0, :cond_end

    # BatteryManager.BATTERY_PROPERTY_TEMPERATURE = 4
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->batteryTemperature:I

    :cond_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_end
    return-void
.end method

.method public static updateAlarmInfo(Landroid/content/Context;)V
    .locals 12

    :try_start_0
    # Get AlarmManager
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_no_alarm

    # Get next alarm clock (API 21+)
    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    if-eqz v1, :cond_no_alarm

    # Get alarm trigger time in milliseconds
    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    # Get current time in milliseconds
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # Check if alarm is within 24 hours
    # 24 hours = 86400000 milliseconds
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    cmp-long v8, v2, v6

    if-gtz v8, :cond_no_alarm

    # Check if alarm is in the future
    cmp-long v6, v2, v4

    if-lez v6, :cond_no_alarm

    # Alarm is within 24 hours - set alarmOn to 1
    const/4 v4, 0x1

    sput v4, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmOn:I

    # Create Calendar instance to extract hour and minute
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    # Get hour of day (24-hour format)
    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    # Get minute
    const/16 v3, 0xc

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    # Convert hour to string
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmHours:Ljava/lang/String;

    # Convert minute to string
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmMinutes:Ljava/lang/String;

    goto :cond_end

    :cond_no_alarm
    # No alarm within 24 hours - set alarmOn to 0, strings to empty
    const/4 v0, 0x0

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmOn:I

    const-string v0, ""

    sput-object v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmHours:Ljava/lang/String;

    sput-object v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmMinutes:Ljava/lang/String;

    :cond_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    # On error, set to no alarm
    const/4 v1, 0x0

    sput v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmOn:I

    const-string v1, ""

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmHours:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmMinutes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_end
    return-void
.end method

.method public static initializeConstants(Landroid/content/Context;)V
    .locals 4

    # Get Android API version
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->androidApiVersion:I

    # Get system language
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->systemLanguage:Ljava/lang/String;

    # Get device name (using DEVICE)
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceName:Ljava/lang/String;

    # Get device model
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceModel:Ljava/lang/String;

    # Get device manufacturer
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceManufacturer:Ljava/lang/String;

    # Get app version name
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->appVersionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    const-string v1, "unknown"

    sput-object v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_end
    # Mark constants as initialized
    const/4 v0, 0x1
    
    sput-boolean v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->constantsInitialized:Z
    
    return-void
.end method

.method public static getSystemInfoString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # Append status fields (h through m positions)
    # h = wifi status
    sget v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # i = bluetooth status
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->bluetoothStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # j = GPS status
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->gpsStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # k = notification status (always 0, unused in Lua)
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # l = cell signal level
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellSignalLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # m = cell connection type
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellConnectionType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append wifi signal strength
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiSignalStrength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append wifi IP address
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append total storage (in MB)
    sget-wide v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalStorage:J

    const-wide/32 v4, 0x100000    # 1048576 (1MB)
    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append used storage (in MB)
    sget-wide v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->usedStorage:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append total RAM (in MB)
    sget-wide v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->totalRam:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append used RAM (in MB)
    sget-wide v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->usedRam:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append battery temperature (in tenths of degrees C)
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->batteryTemperature:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append alarm on (aalo)
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmOn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append alarm hours (aalh23z)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmHours:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append alarm minutes (aalmz)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->alarmMinutes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConstantsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`"

    # Append Android API version (aosv)
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->androidApiVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append system language (alangcode)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->systemLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append device name (aname)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append device model (amodel)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append device manufacturer (aman)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->deviceManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append watch name (awname) - always "Universal Launcher"
    const-string v2, "Universal Launcher"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append OS type (aos) - always "Full Android"
    const-string v2, "Full Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Append launcher version (ulver)
    sget-object v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->appVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateWatchAppStatus(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    # Update WiFi status
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_wifi_off

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_wifi_off

    const/4 v2, 0x1

    sput v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiStatus:I

    goto :cond_wifi_done

    :cond_wifi_off
    sput v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->wifiStatus:I

    :cond_wifi_done
    # Update Bluetooth status
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_bt_off

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_bt_off

    const/4 v2, 0x1

    sput v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->bluetoothStatus:I

    goto :cond_bt_done

    :cond_bt_off
    sput v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->bluetoothStatus:I

    :cond_bt_done
    # Update GPS status
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_gps_off

    const/4 v0, 0x1

    sput v0, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->gpsStatus:I

    goto :cond_gps_done

    :cond_gps_off
    sput v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->gpsStatus:I

    :cond_gps_done
    # Update cell signal level and connection type
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_cell_done

    # Get data state (0=disconnected, 1=connecting, 2=connected, 3=suspended)
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_cell_disconnected

    # Connected - set type to 1 or 3 based on network type
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v2, 0xd

    if-lt v4, v2, :cond_cell_3g

    # LTE or higher (13+) = type 3
    const/4 v2, 0x3

    sput v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellConnectionType:I

    goto :cond_cell_signal

    :cond_cell_3g
    # 3G or lower = type 1
    const/4 v2, 0x1

    sput v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellConnectionType:I

    goto :cond_cell_signal

    :cond_cell_disconnected
    # Not connected = type 0
    sput v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellConnectionType:I

    :cond_cell_signal
    # Get signal strength (approximate from service state)
    # For simplicity, use a default of 2 (medium signal) when connected, 0 when disconnected
    sget v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellConnectionType:I

    if-eqz v2, :cond_signal_none

    const/4 v2, 0x2

    sput v2, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellSignalLevel:I

    goto :cond_cell_done

    :cond_signal_none
    sput v1, Lcom/ailife/ClockSkinCoco/SystemInfoProvider;->cellSignalLevel:I

    :cond_cell_done
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_end

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_end
    return-void
.end method
