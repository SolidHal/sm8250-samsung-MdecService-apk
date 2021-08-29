.class public Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;
.super Ljava/lang/Object;
.source "PayloadPart.java"


# static fields
.field private static final KEY_ATTR_NAME_CONTENT_DISPOSITION:Ljava/lang/String; = "contentDisposition"

.field private static final KEY_ATTR_NAME_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final KEY_ATTR_NAME_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final KEY_ATTR_NAME_SIZE:Ljava/lang/String; = "size"

.field private static final KEY_ATTR_NAME_UPLOAD_STATUS:Ljava/lang/String; = "uploadStatus"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private contentDisposition:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private payloadPartJson:Lorg/json/JSONObject;

.field private size:Ljava/lang/Long;

.field private uploadStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentDisposition:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentType:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->filename:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->size:Ljava/lang/Long;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->uploadStatus:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentDisposition:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentType:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->filename:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->size:Ljava/lang/Long;

    .line 12
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->uploadStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodeJSON()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->uploadStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentDisposition:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "contentDisposition"

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    const-string v1, "contentType"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->filename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    const-string v1, "filename"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    const-string v1, "size"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->size:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->uploadStatus:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    const-string v1, "uploadStatus"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->uploadStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->LOG_TAG:Ljava/lang/String;

    const-string v2, "can not create payload json!"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    throw v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/PayloadPart;->payloadPartJson:Lorg/json/JSONObject;

    return-object v0
.end method
