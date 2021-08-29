.class public Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;
.super Ljava/lang/Object;
.source "DdmMsgObject.java"


# static fields
.field public static final KEY_OBJ_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_OBJ_RESOURCEURL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_OBJ_TYPE:Ljava/lang/String; = "type"

.field public static final LOG_TAG:Ljava/lang/String; = "DdmMsgObj"


# instance fields
.field private mMessage:[B

.field private mResourceURL:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mMessage:[B

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mResourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public parseJSON(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "type"

    const-string v1, "message"

    const-string v2, "resourceURL"

    .line 1
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mResourceURL:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 5
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mMessage:[B

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mType:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public setDdmMsg([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mMessage:[B

    return-void
.end method

.method public setDdmResourceURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mResourceURL:Ljava/lang/String;

    return-void
.end method

.method public setDdmType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;->mType:Ljava/lang/String;

    return-void
.end method
