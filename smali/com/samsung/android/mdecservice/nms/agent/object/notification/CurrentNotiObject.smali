.class public Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;
.super Ljava/lang/Object;
.source "CurrentNotiObject.java"


# static fields
.field public static final KEY_OBJ_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_OBJ_NOTILIST:Ljava/lang/String; = "notiList"

.field public static final KEY_OBJ_NOTYTPYE:Ljava/lang/String; = "type"

.field public static final KEY_ROOT_NOTIUPDATE:Ljava/lang/String; = "notiUpdate"

.field public static final LOG_TAG:Ljava/lang/String; = "CurrentNotiObj"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mJsonObj:Lorg/json/JSONObject;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mJsonStr:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mJsonObj:Lorg/json/JSONObject;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    .line 8
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "CurrentNotiObj"

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "notiList"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "notiUpdate"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJsonObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setNotifications(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/object/notification/CurrentNotiObject;->mNotifications:Ljava/util/List;

    return-void
.end method
