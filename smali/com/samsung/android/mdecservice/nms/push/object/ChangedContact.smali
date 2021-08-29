.class public Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;
.super Ljava/lang/Object;
.source "ChangedContact.java"


# static fields
.field public static final KEY_OBJ_CAPA:Ljava/lang/String; = "capa"

.field public static final KEY_OBJ_EXPIRY:Ljava/lang/String; = "expiry"

.field public static final KEY_OBJ_ID:Ljava/lang/String; = "id"

.field public static final KEY_OBJ_PD:Ljava/lang/String; = "pd"

.field public static final KEY_OBJ_RCSUSER:Ljava/lang/String; = "rcsuser"

.field public static final LOG_TAG:Ljava/lang/String; = "ChangedContact"


# instance fields
.field private mChangedContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedNumberList:Ljava/util/List;
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

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->mChangedContactList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->mChangedNumberList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChangedContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->mChangedContactList:Ljava/util/List;

    return-object v0
.end method

.method public getChangedNumberList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->mChangedNumberList:Ljava/util/List;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONArray;)V
    .locals 11

    const-string v0, "capa"

    const-string v1, "expiry"

    const-string v2, "rcsuser"

    const-string v3, "pd"

    const-string v4, "id"

    const/4 v5, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 3
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    new-instance v8, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;

    invoke-direct {v8, v7}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 7
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setPd(Z)V

    .line 8
    :cond_0
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 9
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setRcsUser(Z)V

    .line 10
    :cond_1
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 11
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setExpiryDate(Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 13
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->setCapabilityFeatures(Ljava/lang/Long;)V

    .line 14
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->mChangedNumberList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/push/object/ChangedContact;->mChangedContactList:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method
