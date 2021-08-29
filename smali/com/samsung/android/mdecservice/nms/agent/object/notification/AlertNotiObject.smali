.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;
.super Ljava/lang/Object;
.source "AlertNotiObject.java"


# static fields
.field public static final KEY_OBJ_NOTI_EVENT:Ljava/lang/String; = "notiEvent"

.field public static final KEY_OBJ_NOTI_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_ROOT_ALERT_NOTI:Ljava/lang/String; = "alertNoti"

.field public static final LOG_TAG:Ljava/lang/String; = "AlertMsgObj"


# instance fields
.field private mJsonObj:Lorg/json/JSONObject;

.field public mMmsNotiObj:Lorg/json/JSONObject;

.field private mNotiType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "notiEvent"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mMmsNotiObj:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mNotiType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "alertNoti"

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setMmsNotiObj(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mMmsNotiObj:Lorg/json/JSONObject;

    return-void
.end method

.method public setNotiType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/AlertNotiObject;->mNotiType:Ljava/lang/String;

    return-void
.end method
