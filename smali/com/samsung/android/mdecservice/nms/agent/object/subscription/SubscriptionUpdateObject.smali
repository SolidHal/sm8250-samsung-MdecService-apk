.class public Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;
.super Ljava/lang/Object;
.source "SubscriptionUpdateObject.java"


# static fields
.field public static final KEY_OBJ_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_ROOT_NMSSUBUPDATE:Ljava/lang/String; = "nmsSubscriptionUpdate"

.field public static final LOG_TAG:Ljava/lang/String; = "SubUpdateObj"


# instance fields
.field private mDuration:Ljava/lang/Integer;

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
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->mDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "duration"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->mDuration:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "nmsSubscriptionUpdate"

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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionUpdateObject;->mDuration:Ljava/lang/Integer;

    return-void
.end method
