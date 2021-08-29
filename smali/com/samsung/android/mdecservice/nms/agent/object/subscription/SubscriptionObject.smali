.class public Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;
.super Ljava/lang/Object;
.source "SubscriptionObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject$Calllog;,
        Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject$Message;
    }
.end annotation


# static fields
.field public static final FILTER_CRITERION_NAME_OBJTYPE:Ljava/lang/String; = "ObjectType"

.field public static final FILTER_CRITERION_NAME_PUSHCAPA:Ljava/lang/String; = "Push_capability"

.field public static final FILTER_CRITERION_TYPE_PRESETSEARCH:Ljava/lang/String; = "PresetSearch"

.field public static final KEY_OBJ_CALLBACKDATA:Ljava/lang/String; = "callbackData"

.field public static final KEY_OBJ_CLIENTCORRELATOR:Ljava/lang/String; = "clientCorrelator"

.field public static final KEY_OBJ_CRITERION:Ljava/lang/String; = "criterion"

.field public static final KEY_OBJ_CRITERION_NAME:Ljava/lang/String; = "name"

.field public static final KEY_OBJ_CRITERION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_OBJ_CRITERION_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_OBJ_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_OBJ_FILTER:Ljava/lang/String; = "filter"

.field public static final KEY_OBJ_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_OBJ_PUSHREF:Ljava/lang/String; = "pushReference"

.field public static final KEY_OBJ_PUSHTOKEN:Ljava/lang/String; = "push_token"

.field public static final KEY_OBJ_PUSHTYPE:Ljava/lang/String; = "push_type"

.field public static final KEY_OBJ_RESOURCEURL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_ROOT_NMSSUB:Ljava/lang/String; = "nmsSubscription"

.field public static final LOG_TAG:Ljava/lang/String; = "SubObj"


# instance fields
.field private mCallbackData:Ljava/lang/String;

.field private mClientCorrelator:Ljava/lang/String;

.field private mCriterionValue:Ljava/lang/String;

.field private mDuration:Ljava/lang/Integer;

.field private mEnabledServiceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/lang/Integer;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mJsonStr:Ljava/lang/String;

.field private mObjTypeValue:Ljava/lang/String;

.field private mPushCapaValue:Ljava/lang/String;

.field private mPushToken:Ljava/lang/String;

.field private mPushType:Ljava/lang/String;

.field private mResourceURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    const-string v0, "GCM"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonStr:Ljava/lang/String;

    const-string p1, "GCM"

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    return-void
.end method

.method private getCriterionValueSetForCalllog()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "calllog"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x-msg-log,x-call-log"

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x-call-log"

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x-msg-log"

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private getCriterionValueSetForMessage()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "relayResponse,NonDeleted"

    goto :goto_0

    :cond_0
    const-string v0, "relayData,contactRCSSupported,relayRequest,currentNoti"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",contactRCSCapa"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",groupChat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",msgAppSetting"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ddmMsg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",stateMsg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ftUploadStatus"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mmsnotiMsg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sseMsg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",rcsnotiMsg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",chatbot"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public encodeJSON()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "clientCorrelator"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "duration"

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mDuration:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "push_token"

    .line 9
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "push_type"

    .line 11
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCallbackData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "callbackData"

    .line 13
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCallbackData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "pushReference"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "nmsSubscription"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 18
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "type"

    const-string v5, "PresetSearch"

    .line 19
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    const-string v5, "Push_capability"

    .line 20
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    sget-object v4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCriterionValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "value"

    if-eqz v4, :cond_5

    .line 22
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->getCriterionValueSetForMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 23
    :cond_5
    sget-object v4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCriterionValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->getCriterionValueSetForCalllog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    :cond_6
    :goto_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "criterion"

    .line 26
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "filter"

    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSubID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mResourceURL:Ljava/lang/String;

    const-string v1, "[/]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseJSON()V
    .locals 11

    const-string v0, "name"

    const-string v1, "criterion"

    const-string v2, "filter"

    const-string v3, "pushReference"

    const-string v4, "duration"

    const-string v5, "index"

    const-string v6, "resourceURL"

    const-string v7, "clientCorrelator"

    .line 1
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonStr:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "nmsSubscription"

    .line 2
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 3
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "SubObj"

    if-eqz v9, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mClientCorrelator:Ljava/lang/String;

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mClientCorrelator="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mResourceURL:Ljava/lang/String;

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mResourceURL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mResourceURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mIndex:Ljava/lang/Integer;

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mIndex:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mDuration:Ljava/lang/Integer;

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mDuration:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "push_token"

    .line 17
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushToken:Ljava/lang/String;

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPushToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "push_type"

    .line 19
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPushType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "callbackData"

    .line 21
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCallbackData:Ljava/lang/String;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCallbackData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCallbackData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_4
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 26
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 27
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 30
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    .line 31
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Push_capability"

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 33
    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushCapaValue:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v5, "ObjectType"

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 35
    iput-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mObjTypeValue:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public setCallbackData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCallbackData:Ljava/lang/String;

    return-void
.end method

.method public setClientCorrelator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mClientCorrelator:Ljava/lang/String;

    return-void
.end method

.method public setCriterionValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mCriterionValue:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setEnabledServiceSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mEnabledServiceSet:Ljava/util/Set;

    return-void
.end method

.method public setIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setJsonStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mJsonStr:Ljava/lang/String;

    return-void
.end method

.method public setPushToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushToken:Ljava/lang/String;

    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;->mPushType:Ljava/lang/String;

    return-void
.end method
