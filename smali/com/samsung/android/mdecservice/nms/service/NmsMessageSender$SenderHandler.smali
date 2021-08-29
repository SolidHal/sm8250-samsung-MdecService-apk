.class Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;
.super Landroid/os/Handler;
.source "NmsMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SenderHandler"
.end annotation


# instance fields
.field private mAttachUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

.field private mContext:Landroid/content/Context;

.field private mCorrelationTag:Ljava/lang/String;

.field private mMessageId:I

.field private mMessageType:Ljava/lang/String;

.field private mObjectID:Ljava/lang/String;

.field private mPayloadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceURL:Ljava/lang/String;

.field private mResponseCounter:I

.field private mResultValue:I

.field private mSent:Z

.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageId:I

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mObjectID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 8
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mPayloadInfos:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttachUris:Ljava/util/ArrayList;

    const-string p1, "sms"

    .line 10
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mSent:Z

    .line 12
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResponseCounter:I

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResultValue:I

    .line 14
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mSent:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mSent:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->sendRelaySMS()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->sendRelayMMS()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mObjectID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mPayloadInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageId:I

    return p1
.end method

.method private deleteFile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttachUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttachUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendRelayMMS()V
    .locals 13

    const-string v0, "correlation_tag"

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendRelayMMS()"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendMessage mRecipients is null return"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    const-string v3, "mms"

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setEventType(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setRelayRequest()V

    .line 7
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    if-eqz v1, :cond_a

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 9
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 10
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "res_url"

    .line 11
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "object_id"

    .line 12
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mObjectID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "m_type"

    const-string v6, "OUT"

    .line 13
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "_to"

    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    .line 15
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 19
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 20
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 21
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v5, "_from"

    .line 22
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {v2, v6}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "read"

    .line 25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "relay_id"

    .line 26
    iget v6, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageId:I

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 28
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "mmsmessage"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 30
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1800()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mPayloadInfos:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 32
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendRelayedMMS payloadInfo count = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mPayloadInfos:Ljava/util/List;

    .line 33
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-static {v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mPayloadInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    .line 36
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send payload "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 39
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v8, "text/plain relay"

    invoke-static {v1, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getBinaryContent()[B

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 41
    :cond_4
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    .line 42
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_5

    .line 44
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 45
    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create new file: "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_5
    :goto_2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "externalFile path ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 48
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getBinaryContent()[B

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 49
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 50
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttachUris:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto/16 :goto_1

    .line 51
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mPayloadInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v7, :cond_7

    const-string v5, "android.intent.extra.STREAM"

    .line 52
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttachUris:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string v3, "send_multi_slide"

    .line 54
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttachUris:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 55
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 56
    invoke-virtual {v5}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 57
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v5, "recipients"

    .line 58
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "forcemms"

    .line 59
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "delete"

    .line 60
    invoke-virtual {v4, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "message"

    .line 61
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestApp"

    .line 62
    invoke-virtual {v4, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "subject"

    .line 63
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "sim_slot"

    .line 65
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "device_id"

    .line 66
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x25b2

    goto :goto_4

    :cond_9
    const/16 v1, 0x25b7

    :goto_4
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageId:I

    invoke-interface {v0, v1, v2, v4}, Lc/a/a/a/a;->w(IILandroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1608(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 70
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    .line 72
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    :goto_5
    return-void

    .line 73
    :goto_6
    throw v0
.end method

.method private sendRelaySMS()V
    .locals 8

    const-string v0, "correlation_tag"

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendRelaySMS()"

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendMessage mRecipients is null return"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPerformanceTest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setEventType(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->setRelayRequest()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResponseCounter:I

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 11
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 12
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 14
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 16
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_to"

    .line 17
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_from"

    .line 18
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    .line 19
    invoke-static {v6, v5}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const-string v5, "OUT"

    .line 21
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "read"

    const/4 v5, 0x1

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "body"

    .line 23
    invoke-virtual {v4, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "res_url"

    .line 25
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "object_id"

    .line 26
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mObjectID:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relay_id"

    .line 27
    iget v5, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageId:I

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 29
    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_2

    .line 31
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "smsmessages"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 32
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1800()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    .line 33
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "recipients"

    .line 34
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sim_slot"

    .line 35
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "device_id"

    .line 36
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mServiceBinder:Lc/a/a/a/a;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x25b2

    goto :goto_1

    :cond_3
    const/16 v1, 0x25b7

    :goto_1
    iget v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageId:I

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/a;->w(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 39
    :try_start_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    return-void

    .line 40
    :goto_3
    throw v0
.end method


# virtual methods
.method public handleMMSResult(I)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "sub"

    const-string v2, "m_size"

    const-string v3, "000"

    const-string v4, "thread_id"

    const-string v5, "m_id"

    const-string v6, "date"

    const-string v7, "_id"

    const-string v8, "thread_id"

    const-string v9, "date"

    const-string v10, "m_size"

    const-string v11, "sub"

    const-string v12, "m_id"

    .line 1
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v15

    .line 2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(app_id = 9650 OR app_id = 9655) AND msg_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x0

    .line 3
    :try_start_0
    iget-object v8, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const-string v18, "date DESC"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 7
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v8, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 10
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v8, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date_formated"

    .line 12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 14
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v8, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 18
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->bytes2kb(J)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 21
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ISO-8859-1"

    .line 23
    invoke-static {v2, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v4, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 25
    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mmsmessage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 29
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "object_id=?"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mObjectID:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v2, v0, v8, v4, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 33
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v2

    .line 35
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMessageID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v9}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 37
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1900(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1900(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 39
    :cond_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v2, "eventTypeServer"

    .line 43
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v2, "UpdateRequest"

    .line 44
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v2, "\\Delivered"

    .line 45
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v0

    .line 47
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->deleteFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v7, :cond_3

    .line 49
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_4
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received from service result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    const-string v2, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mAttr:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 7
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResponseCounter:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResponseCounter:I

    .line 8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResultValue:I

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ResultValue set as FAIL"

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResponseCounter:I

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResultValue:I

    .line 13
    :cond_3
    iget p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResultValue:I

    const-string v1, "mms"

    if-ne p1, v3, :cond_5

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->handleSMSResult(I)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->handleMMSResult(I)V

    goto :goto_0

    :cond_5
    if-nez p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mMessageType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->deleteFile()V

    .line 20
    :cond_6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string v1, "eventTypeServer"

    .line 23
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string v1, "UpdateRequest"

    .line 24
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    const-string v1, "\\Failed"

    .line 25
    invoke-virtual {p1, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v1, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    .line 28
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1610(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I

    .line 29
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunningCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1600(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->removeRelayHandler(I)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1600(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)I

    move-result p1

    if-gtz p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->doUnbindService()V

    .line 33
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->quitThreadHanderLooper()V

    :cond_8
    :goto_1
    return-void
.end method

.method public handleSMSResult(I)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "seen"

    const-string v2, "thread_id"

    const-string v3, "type"

    const-string v4, "date"

    const-string v5, "_id"

    const-string v6, "address"

    const-string v7, "type"

    const-string v8, "body"

    const-string v9, "thread_id"

    const-string v10, "read"

    const-string v11, "seen"

    const-string v12, "date"

    .line 1
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v15

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(app_id = 9650 OR app_id = 9655) AND msg_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x0

    .line 3
    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sms.getCount() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date_formated"

    .line 16
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1700(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "smsmessages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "object_id=?"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mObjectID:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v0, v2, v6, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v0

    .line 21
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v2

    .line 23
    invoke-virtual {v2, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 24
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1900(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->access$1900(Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 26
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mResourceURL:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->mCorrelationTag:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v2, "eventTypeServer"

    .line 30
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v2, "UpdateRequest"

    .line 31
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v2, "\\Delivered"

    .line 32
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v0

    .line 34
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender$SenderHandler;->this$0:Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    iget-object v2, v2, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v5, :cond_2

    .line 35
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_3

    .line 37
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 38
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_3
    throw v0
.end method
