.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;
.super Ljava/lang/Object;
.source "MsgDefaultSettingObject.java"


# static fields
.field public static final KEY_OBJ_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_OBJ_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_ROOT_SETTINGDEFAULT:Ljava/lang/String; = "settingDefault"

.field public static final LOG_TAG:Ljava/lang/String; = "MsgDefaultSettingObj"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mJsonStr:Ljava/lang/String;

.field private mStatus:Z


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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "status"

    .line 4
    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "settingDefault"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/MsgDefaultSettingObject;->mStatus:Z

    return-void
.end method
