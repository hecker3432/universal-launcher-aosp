.class public Lcom/ailife/ClockSkinCoco/AppOrderManager;
.super Ljava/lang/Object;
.source "AppOrderManager.java"


# static fields
.field private static final KEY_NEXT_POSITION:Ljava/lang/String; = "next_position"

.field private static final KEY_ORDER_JSON:Ljava/lang/String; = "app_order_json"

.field private static final KEY_ALPHABETICAL_SORT:Ljava/lang/String; = "force_alphabetical_sort"

.field private static final PREF_NAME:Ljava/lang/String; = "swlauncher_app_order"

.field public static currentAppList:Ljava/util/ArrayList;

.field public static scrollToPosition:I


# instance fields
.field private context:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    # Initialize scrollToPosition to -1 (no scroll)
    const/4 v0, -0x1
    sput v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->context:Landroid/content/Context;

    .line 27
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method


# virtual methods
.method public assignNewAppPosition(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "next_position"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    invoke-virtual {p0, p1, p2, v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->setPosition(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 p2, v0, 0x1

    .line 85
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return v0
.end method

.method public clearAllPositions()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    const-string v1, "app_order_json"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    const-string v1, "next_position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public getAllPositions()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "app_order_json"

    const-string v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_2f} :catch_31

    .line 127
    goto :goto_18

    .line 130
    :cond_30
    goto :goto_35

    .line 128
    :catch_31
    move-exception v1

    .line 129
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    :goto_35
    return-object v0
.end method

.method public getPosition(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "app_order_json"

    const-string v1, "{}"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 43
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_30} :catch_32

    return p1

    .line 47
    :cond_31
    goto :goto_36

    .line 45
    :catch_32
    move-exception p1

    .line 46
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    :goto_36
    const/4 p1, -0x1

    return p1
.end method

.method public removeApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "{}"

    const-string v1, "app_order_json"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 145
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 147
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_40} :catch_41

    .line 154
    :cond_40
    goto :goto_45

    .line 152
    :catch_41
    move-exception p1

    .line 153
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 155
    :goto_45
    return-void
.end method

.method public saveOrder(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 99
    nop

    .line 100
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, -0x1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 101
    if-le v2, v1, :cond_22

    .line 102
    move v1, v2

    .line 104
    :cond_22
    goto :goto_f

    .line 106
    :cond_23
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 107
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_order_json"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    .line 108
    const-string v0, "next_position"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 109
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method

.method public saveOrderFromList(Ljava/util/ArrayList;)V
    .registers 10

    .line 164
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const/4 v1, 0x0

    # Track max position for next_position
    const/4 v7, -0x1

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 167
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 171
    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 172
    const-string v5, "a"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 173
    # Get field h (position)
    const-string v6, "h"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 175
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 176
    # Get position value from field h (primitive int)
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    # Track max position
    if-le v6, v7, :skip_max_update

    move v7, v6

    :skip_max_update

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    # Use actual position v6 instead of loop counter v1
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 181
    :cond_49
    iget-object v1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_order_json"

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_position"

    .line 183
    # Use max position plus 1 for next_position
    add-int/lit8 v7, v7, 0x1

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    .line 188
    goto :goto_6b

    .line 186
    :catch_67
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :goto_6b
    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "{}"

    const-string v1, "app_order_json"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    iget-object p1, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3a} :catch_3b

    .line 71
    goto :goto_3f

    .line 69
    :catch_3b
    move-exception p1

    .line 70
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    :goto_3f
    return-void
.end method

.method public moveToTop(Lcom/ricktop/ClockSkinCoco/b$b;)V
    .registers 13

    # Get the current list
    sget-object v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->currentAppList:Ljava/util/ArrayList;
    if-eqz v0, :end_method

    # Get package/class name from parameter for identification
    iget-object v8, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;
    iget-object v9, p1, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    # Find the actual target app in currentAppList
    const/4 v2, 0x0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v10, 0x0  # v10 will hold the actual target from list

    :find_target_loop
    if-ge v2, v3, :target_not_found
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :next_find

    iget-object v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :next_find

    move-object v10, v4
    goto :target_found

    :next_find
    add-int/lit8 v2, v2, 0x1
    goto :find_target_loop

    :target_not_found
    goto :end_method

    :target_found
    # Get target app's current position from the list object
    iget v1, v10, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Iterate through all apps and shift down those before target
    const/4 v2, 0x0

    :loop_start
    if-ge v2, v3, :loop_end
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/ricktop/ClockSkinCoco/b$b;

    # Get this app's position
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # If position < target position, shift down by 1
    if-ge v5, v1, :skip_shift
    add-int/lit8 v5, v5, 0x1
    iput v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    :skip_shift
    add-int/lit8 v2, v2, 0x1
    goto :loop_start

    :loop_end
    # Set target app (from list) to position 0
    const/4 v6, 0x0
    iput v6, v10, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Also update dialog's reference
    iput v6, p1, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Set scroll position to 0 (top of list)
    sput v6, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    # Save all positions to SharedPreferences
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->saveOrderFromList(Ljava/util/ArrayList;)V

    :end_method
    return-void
.end method

.method public moveToBottom(Lcom/ricktop/ClockSkinCoco/b$b;)V
    .registers 14

    # Get the current list
    sget-object v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->currentAppList:Ljava/util/ArrayList;
    if-eqz v0, :end_method

    # Get package/class name from parameter for identification
    iget-object v8, p1, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;
    iget-object v9, p1, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;

    # Find the actual target app in currentAppList
    const/4 v2, 0x0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v3
    const/4 v10, 0x0  # v10 will hold the actual target from list

    :find_target_loop
    if-ge v2, v3, :target_not_found
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/ricktop/ClockSkinCoco/b$b;

    iget-object v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->e:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :next_find

    iget-object v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->f:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :next_find

    move-object v10, v4
    goto :target_found

    :next_find
    add-int/lit8 v2, v2, 0x1
    goto :find_target_loop

    :target_not_found
    goto :end_method

    :target_found
    # Get target app's current position from the list object
    iget v1, v10, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Find max position and shift apps after target up by 1
    const/4 v2, 0x0
    const/4 v7, -0x1

    :loop_start
    if-ge v2, v3, :loop_end
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/ricktop/ClockSkinCoco/b$b;

    # Get this app's position
    iget v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Track max position
    if-le v5, v7, :skip_max
    move v7, v5

    :skip_max
    # If position > target position, shift up by 1
    if-le v5, v1, :skip_shift
    add-int/lit8 v5, v5, -0x1
    iput v5, v4, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    :skip_shift
    add-int/lit8 v2, v2, 0x1
    goto :loop_start

    :loop_end
    # Set target app (from list) to max position
    iput v7, v10, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Also update dialog's reference
    iput v7, p1, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    # Set scroll position to max position (bottom of list)
    sput v7, Lcom/ailife/ClockSkinCoco/AppOrderManager;->scrollToPosition:I

    # Save all positions to SharedPreferences
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->saveOrderFromList(Ljava/util/ArrayList;)V

    :end_method
    return-void
.end method

.method public normalizePositions()V
    .registers 7

    # Get the current list
    sget-object v0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->currentAppList:Ljava/util/ArrayList;
    if-eqz v0, :end_method

    # Sort the list by current positions
    new-instance v1, Lcom/ailife/ClockSkinCoco/AppPositionComparator;
    invoke-direct {v1}, Lcom/ailife/ClockSkinCoco/AppPositionComparator;-><init>()V
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    # Reassign positions to 0, 1, 2, 3...
    const/4 v1, 0x0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    move-result v2

    :loop_start
    if-ge v1, v2, :loop_end
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Lcom/ricktop/ClockSkinCoco/b$b;

    # Set position to list index
    iput v1, v3, Lcom/ricktop/ClockSkinCoco/b$b;->h:I

    add-int/lit8 v1, v1, 0x1
    goto :loop_start

    :loop_end
    # Save normalized positions
    invoke-virtual {p0, v0}, Lcom/ailife/ClockSkinCoco/AppOrderManager;->saveOrderFromList(Ljava/util/ArrayList;)V

    :end_method
    return-void
.end method

.method public isAlphabeticalSortEnabled()Z
    .registers 4

    # Get the preference value (default false)
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "force_alphabetical_sort"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAlphabeticalSortEnabled(Z)V
    .registers 4

    # Save the preference value
    iget-object v0, p0, Lcom/ailife/ClockSkinCoco/AppOrderManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_alphabetical_sort"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
