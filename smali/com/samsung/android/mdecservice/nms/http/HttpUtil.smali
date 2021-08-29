.class public Lcom/samsung/android/mdecservice/nms/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HttpUtil"

.field private static mReqId:I

.field private static final mRequestTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mRequestTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMultipartFromPayloadInfos(Ljava/util/List;)Lf/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;)",
            "Lf/a0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/v$a;

    invoke-direct {v0}, Lf/v$a;-><init>()V

    sget-object v1, Lf/v;->e:Lf/u;

    .line 2
    invoke-virtual {v0, v1}, Lf/v$a;->d(Lf/u;)Lf/v$a;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payloadCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getBinaryContent()[B

    move-result-object v1

    .line 10
    invoke-static {v4, v1}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Content-Disposition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment; filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 12
    invoke-static {v4}, Lf/r;->e([Ljava/lang/String;)Lf/r;

    move-result-object v4

    .line 13
    invoke-static {v4, v1}, Lf/v$b;->b(Lf/r;Lf/a0;)Lf/v$b;

    move-result-object v1

    .line 14
    sget-object v4, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adding part for attachment : filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lf/v$a;->b(Lf/v$b;)Lf/v$a;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lf/v$a;->c()Lf/v;

    move-result-object p0

    return-object p0
.end method

.method public static generatePayloadRequestBodyFromUri(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Lf/u;)Lf/a0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content_uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File read from TP uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->byteFromUri(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Uri from TP does not exist!"

    invoke-static {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 7
    invoke-static {p0, p1}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized generateRequestId()Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mReqId:I

    const/16 v2, 0x2710

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sput v3, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mReqId:I

    :cond_0
    const-string v1, "%04d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    sget v4, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mReqId:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mReqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static generateThumbNailPayloadRequestBody(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lf/a0;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "invalid attr"

    invoke-static {p0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [B

    .line 2
    invoke-static {v1, p0}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0002_GDPR_FIX:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThumbContentType()Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "contentType is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_2
    invoke-static {v2}, Lf/u;->c(Ljava/lang/String;)Lf/u;

    move-result-object v2

    .line 9
    sget-boolean v3, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;->isQosAndLess:Z

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getThumbFilePath()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-static {v2, v3}, Lf/a0;->create(Lf/u;Ljava/io/File;)Lf/a0;

    move-result-object v0

    goto :goto_1

    .line 15
    :cond_3
    sget-object v2, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "file does not exist!"

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v0, [B

    .line 16
    invoke-static {v1, v0}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object v0

    .line 17
    :goto_1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding part for attachment : filepath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_4
    sget-object p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "filepath is null!"

    invoke-static {p0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [B

    .line 19
    invoke-static {v1, p0}, Lf/a0;->create(Lf/u;[B)Lf/a0;

    move-result-object p0

    return-object p0

    .line 20
    :cond_5
    invoke-static {p0, v2}, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->generatePayloadRequestBodyFromUri(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;Lf/u;)Lf/a0;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static translateRequestType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mRequestTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->mRequestTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No request map defined"

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;->POST:Lcom/samsung/android/mdecservice/nms/http/HttpUtil$HttpMethod;

    return-object p0
.end method
