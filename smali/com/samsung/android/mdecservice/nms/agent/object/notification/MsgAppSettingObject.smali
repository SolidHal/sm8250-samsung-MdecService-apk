.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;
.super Ljava/lang/Object;
.source "MsgAppSettingObject.java"


# static fields
.field public static final KEY_ROOT_MSGAPPSETTING:Ljava/lang/String; = "msgAppSetting"

.field public static final LOG_TAG:Ljava/lang/String; = "MsgAppSettingObj"


# instance fields
.field private mAppSettings:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mJsonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "msgAppSetting"

    .line 2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mAppSettings:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAppSettings()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mAppSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public parseJSON()V
    .locals 3

    const-string v0, "msgAppSetting"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mAppSettings:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAppSettings(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgAppSettingObject;->mAppSettings:Ljava/lang/String;

    return-void
.end method
