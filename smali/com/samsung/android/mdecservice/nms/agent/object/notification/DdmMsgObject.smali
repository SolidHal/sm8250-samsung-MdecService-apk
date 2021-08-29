.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;
.super Ljava/lang/Object;
.source "DdmMsgObject.java"


# static fields
.field public static final KEY_OBJ_DDM_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_OBJ_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_ROOT_DDM_MESSAGE:Ljava/lang/String; = "ddmMsg"

.field public static final LOG_TAG:Ljava/lang/String; = "DdmMsgObj"


# instance fields
.field private mDdmMsg:[B

.field private mDdmType:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mDdmType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mDdmMsg:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "ddmMsg"

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setDdmMsg([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mDdmMsg:[B

    return-void
.end method

.method public setDdmType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/DdmMsgObject;->mDdmType:Ljava/lang/String;

    return-void
.end method
