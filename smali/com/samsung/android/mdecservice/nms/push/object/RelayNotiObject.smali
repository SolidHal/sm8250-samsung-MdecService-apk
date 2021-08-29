.class public Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;
.super Ljava/lang/Object;
.source "RelayNotiObject.java"


# static fields
.field public static final KEY_OBJ_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_OBJ_CALLBACKDATA:Ljava/lang/String; = "callbackData"

.field public static final KEY_OBJ_DORETRIEVE:Ljava/lang/String; = "doRetrieve"

.field public static final KEY_OBJ_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_OBJ_NOTILIST:Ljava/lang/String; = "notiList"

.field public static final KEY_OBJ_NOTIUPDATE:Ljava/lang/String; = "notiUpdate"

.field public static final KEY_OBJ_NOTYTPYE:Ljava/lang/String; = "type"

.field public static final KEY_OBJ_PMSGRELAYDATE:Ljava/lang/String; = "P-MsgRelay-Date"

.field public static final KEY_ROOT_RELAYNOTI:Ljava/lang/String; = "relayNoti"

.field public static final LOG_TAG:Ljava/lang/String; = "RelayNotiObject"


# instance fields
.field private isDoRetrieveObject:Z

.field private mAction:Ljava/lang/String;

.field private mCallBackData:Ljava/lang/String;

.field private mDoRetrieveDest:Ljava/lang/String;

.field private mIndex:Ljava/lang/Integer;

.field private mJsonStr:Ljava/lang/String;

.field private mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPMsgRelayDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->isDoRetrieveObject:Z

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallBackData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mCallBackData:Ljava/lang/String;

    return-object v0
.end method

.method public getDoRetrieveDest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mDoRetrieveDest:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getPMsgRelayDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mPMsgRelayDate:Ljava/lang/String;

    return-object v0
.end method

.method public isDoRetrieveObject()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->isDoRetrieveObject:Z

    return v0
.end method

.method public parseJSON()V
    .locals 8

    const-string v0, "doRetrieve"

    const-string v1, "notiUpdate"

    const-string v2, "P-MsgRelay-Date"

    const-string v3, "index"

    const-string v4, "callbackData"

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mNotifications:Ljava/util/List;

    .line 2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "relayNoti"

    .line 3
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 4
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "RelayNotiObject"

    if-eqz v6, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mCallBackData:Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallBackData="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mCallBackData:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mIndex:Ljava/lang/Integer;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mIndex:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mPMsgRelayDate:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPMsgRelayDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mPMsgRelayDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "consist notiUpdate obj"

    .line 14
    invoke-static {v7, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "action"

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mAction:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notiList"

    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    .line 21
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mNotifications:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "consist doRetrieve obj"

    .line 25
    invoke-static {v7, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mDoRetrieveDest:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->isDoRetrieveObject:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDoRetrieveDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/RelayNotiObject;->mDoRetrieveDest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
