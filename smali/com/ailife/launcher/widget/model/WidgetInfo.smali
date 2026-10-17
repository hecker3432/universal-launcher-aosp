.class public Lcom/ailife/launcher/widget/model/WidgetInfo;
.super Ljava/lang/Object;
.source "WidgetInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_ADDED_TIMESTAMP:Ljava/lang/String; = "addedTimestamp"

.field private static final KEY_APP_WIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final KEY_IS_VALID:Ljava/lang/String; = "isValid"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_POSITION:Ljava/lang/String; = "position"

.field private static final TAG:Ljava/lang/String; = "WidgetInfo"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private addedTimestamp:J

.field private appWidgetId:I

.field private className:Ljava/lang/String;

.field private isValid:Z

.field private packageName:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    .line 46
    iput-object p2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    .line 50
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z

    .line 51
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/ailife/launcher/widget/model/WidgetInfo;
    .registers 6

    .line 126
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_56

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_56

    .line 131
    :cond_c
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance p0, Lcom/ailife/launcher/widget/model/WidgetInfo;

    invoke-direct {p0}, Lcom/ailife/launcher/widget/model/WidgetInfo;-><init>()V

    .line 133
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    .line 134
    const-string v3, "packageName"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    .line 135
    const-string v3, "className"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    .line 136
    const-string v0, "position"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    .line 137
    const-string v0, "addedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    .line 138
    const-string v0, "isValid"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_4c} :catch_4d

    .line 139
    return-object p0

    .line 140
    :catch_4d
    move-exception p0

    .line 141
    const-string v0, "WidgetInfo"

    const-string v2, "Failed to deserialize WidgetInfo from JSON"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    return-object v1

    .line 127
    :cond_56
    :goto_56
    return-object v1
.end method

.method public static fromLegacyBase64(Ljava/lang/String;)Lcom/ailife/launcher/widget/model/WidgetInfo;
    .registers 7

    .line 151
    const-string v0, "WidgetInfo"

    const/4 v1, 0x0

    if-eqz p0, :cond_8c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_8c

    .line 156
    :cond_d
    const/4 v2, 0x0

    :try_start_e
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 157
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 158
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 167
    if-eqz v2, :cond_84

    .line 168
    new-instance p0, Lcom/ailife/launcher/widget/model/WidgetInfo;

    invoke-direct {p0}, Lcom/ailife/launcher/widget/model/WidgetInfo;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_85

    .line 173
    const/4 v3, 0x1

    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 174
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_44} :catch_45

    .line 178
    goto :goto_4b

    .line 176
    :catch_45
    move-exception v4

    .line 177
    :try_start_46
    const-string v5, "Could not extract appWidgetId from legacy object"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4b} :catch_85

    .line 181
    :goto_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "b"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_61

    .line 186
    goto :goto_67

    .line 184
    :catch_61
    move-exception v4

    .line 185
    :try_start_62
    const-string v5, "Could not extract packageName from legacy object"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_85

    .line 189
    :goto_67
    :try_start_67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "c"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 190
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7c} :catch_7d

    .line 194
    goto :goto_83

    .line 192
    :catch_7d
    move-exception v2

    .line 193
    :try_start_7e
    const-string v3, "Could not extract className from legacy object"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_85

    .line 196
    :goto_83
    return-object p0

    .line 200
    :cond_84
    goto :goto_8b

    .line 198
    :catch_85
    move-exception p0

    .line 199
    const-string v2, "Failed to deserialize legacy WidgetInfo from Base64"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_8b
    return-object v1

    .line 152
    :cond_8c
    :goto_8c
    return-object v1
.end method


# virtual methods
.method public getAddedTimestamp()J
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    return-wide v0
.end method

.method public getAppWidgetId()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z

    return v0
.end method

.method public setAddedTimestamp(J)V
    .registers 3

    .line 91
    iput-wide p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    .line 92
    return-void
.end method

.method public setAppWidgetId(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    .line 60
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    .line 84
    return-void
.end method

.method public setValid(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z

    .line 100
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 5

    .line 108
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v1, "className"

    iget-object v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "position"

    iget v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v1, "addedTimestamp"

    iget-wide v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    const-string v1, "isValid"

    iget-boolean v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_34

    return-object v0

    .line 116
    :catch_34
    move-exception v0

    .line 117
    const-string v1, "WidgetInfo"

    const-string v2, "Failed to serialize WidgetInfo to JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetInfo{appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", className=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->addedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ailife/launcher/widget/model/WidgetInfo;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
