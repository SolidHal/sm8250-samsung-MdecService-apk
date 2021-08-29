.class public Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;
.super Ljava/lang/Object;
.source "ContactReferenceObject.java"


# static fields
.field public static final KEY_ROOT_CONTACTREFERENCE:Ljava/lang/String; = "contactReference"

.field public static final LOG_TAG:Ljava/lang/String; = "ContactRefObj"


# instance fields
.field private mContactIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->mContactIdList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->mContactIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "contactReference"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setContactIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/contact/ContactReferenceObject;->mContactIdList:Ljava/util/List;

    return-void
.end method
