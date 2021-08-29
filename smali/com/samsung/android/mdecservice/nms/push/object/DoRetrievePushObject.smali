.class public Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;
.super Ljava/lang/Object;
.source "DoRetrievePushObject.java"


# static fields
.field public static final KEY_OBJ_CALLBACKDATA:Ljava/lang/String; = "callbackData"

.field public static final KEY_OBJ_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_OBJ_PMSGRELAYDATE:Ljava/lang/String; = "P-MsgRelay-Date"

.field public static final KEY_OBJ_RESOURCEURL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_ROOT_DORETRIEVEPUSH:Ljava/lang/String; = "doRetrievePush"

.field public static final LOG_TAG:Ljava/lang/String; = "DoSearchObj"


# instance fields
.field private mCallBackData:Ljava/lang/String;

.field private mIndex:Ljava/lang/Integer;

.field private mJsonStr:Ljava/lang/String;

.field private mPMsgRelayDate:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallBackData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mCallBackData:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPMsgRelayDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mPMsgRelayDate:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON()V
    .locals 6

    const-string v0, "P-MsgRelay-Date"

    const-string v1, "index"

    const-string v2, "callbackData"

    const-string v3, "resourceURL"

    .line 1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "doRetrievePush"

    .line 2
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mResourceURL:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mCallBackData:Ljava/lang/String;

    .line 7
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mIndex:Ljava/lang/Integer;

    .line 9
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mPMsgRelayDate:Ljava/lang/String;

    :cond_3
    const-string v0, "DoSearchObj"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallBackData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mCallBackData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mResourceURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mResourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPMsgRelayDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DoRetrievePushObject;->mPMsgRelayDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
