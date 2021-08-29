.class public Lcom/samsung/android/mdecservice/nms/AgentEventListeners;
.super Ljava/lang/Object;
.source "AgentEventListeners.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgentEventListeners"


# instance fields
.field private buffercv:Landroid/content/ContentValues;

.field private final mCallLogAgentEventListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

.field private mClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mContext:Landroid/content/Context;

.field private mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

.field private final mMessageAgentEventListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

.field private mRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$1;-><init>(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mMessageAgentEventListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners$2;-><init>(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mCallLogAgentEventListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    .line 7
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 9
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mRequestMan:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->handleReceivedNewDataFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/AgentEventListeners;ZLcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->logEvent(ZLcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V

    return-void
.end method

.method private createMMSPartDataBase(Ljava/util/List;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payloadCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AgentEventListeners"

    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    .line 3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content_type"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "message_id"

    move-object/from16 v6, p2

    .line 6
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getPayloadSize()Ljava/lang/String;

    move-result-object v5

    const-string v7, "size"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "text/plain"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "application/smil"

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getBinaryContent()[B

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getMmsText([B)Ljava/lang/String;

    move-result-object v5

    const-string v9, "text"

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v5, v1, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "mmspartmessage"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 12
    invoke-virtual {v5, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inserted PartURI : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object v5, v1, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v5, "_data"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    .line 17
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/16 v17, 0x0

    const-string v15, "_bufferdbid=?"

    move-object/from16 v16, v7

    .line 18
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 19
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing data directly to path = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v9

    :goto_1
    if-nez v7, :cond_5

    const-string v0, "path is null cannot write file"

    .line 22
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0x100

    :try_start_0
    new-array v10, v10, [B

    .line 23
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/samsung/android/cmcopenapi/pdu/MmsException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getBinaryContent()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/samsung/android/cmcopenapi/pdu/MmsException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    :goto_2
    :try_start_2
    invoke-virtual {v5, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 26
    invoke-virtual {v11, v10, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/cmcopenapi/pdu/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 27
    :cond_6
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 28
    :goto_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 29
    :cond_7
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v5

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v9, v5

    goto :goto_4

    :catch_2
    move-object v9, v5

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v5

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v11, v9

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v11, v9

    .line 30
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_8

    .line 31
    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_8
    if-eqz v11, :cond_7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_7
    move-object v11, v9

    :catch_8
    :goto_5
    :try_start_6
    const-string v0, "partPayload exception"

    .line 32
    invoke-static {v2, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v9, :cond_9

    .line 33
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    if-eqz v11, :cond_7

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v11, v9

    :goto_6
    :try_start_8
    const-string v5, "Failed to open Input/Output stream."

    .line 34
    invoke-static {v2, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_a

    .line 36
    :try_start_9
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_a
    if-eqz v11, :cond_7

    goto :goto_3

    :goto_7
    if-eqz v9, :cond_b

    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_b
    if-eqz v11, :cond_c

    .line 37
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 38
    :cond_c
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 39
    :catch_a
    throw v0

    :cond_d
    return-void
.end method

.method private handleReceivedNewDataFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v2, p6

    move-object/from16 v8, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    if-eqz p10, :cond_0

    if-eqz v8, :cond_0

    const-string v1, "unknown"

    .line 1
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v1, v9, v10, v8}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->isDuplicatedLastModSeq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\\Recent"

    .line 2
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x0

    const-string v7, "sms"

    const/4 v6, 0x1

    const-string v5, "AgentEventListeners"

    const-string v4, "mms"

    if-nez v1, :cond_b

    const-string v1, "\\Delivered"

    .line 3
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "\\Seen"

    .line 4
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "\\Failed"

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v3, "\\Pending"

    .line 6
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Device is PD, Relay requested Msg"

    .line 8
    invoke-static {v5, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2, v10, v9}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->checkResendRequestedMsg(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Message is already sent"

    .line 11
    invoke-static {v5, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    const-string v3, "eventTypeServer"

    .line 13
    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    const-string v3, "UpdateRequest"

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object v1

    .line 15
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void

    .line 16
    :cond_2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->getInstance()Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;

    move-result-object v12

    .line 17
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    move-object v1, v12

    move-object v8, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move v10, v6

    move-object/from16 v6, p3

    move-object v11, v7

    move-object/from16 v7, p8

    move-object v13, v8

    move-object/from16 v8, p9

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->initData(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v12}, Lcom/samsung/android/mdecservice/nms/service/NmsMessageSender;->startSenderBindService()V

    const-string v1, ""

    if-eqz v14, :cond_7

    .line 19
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v1

    move v3, v15

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getPayloadSize()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 21
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getPayloadSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 22
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->getContentType()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const-string v7, "lms"

    goto :goto_1

    :cond_5
    if-lez v3, :cond_6

    move-object v7, v13

    goto :goto_1

    :cond_6
    move-object v7, v11

    .line 23
    :goto_1
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v10, :cond_8

    const-string v4, "multi"

    goto :goto_2

    :cond_7
    move-object v4, v1

    move-object v7, v11

    move v3, v15

    .line 24
    :cond_8
    :goto_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v15, v7, v4, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventMsgPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    const-string v1, "Device is not PD, Ignore PENDING msg"

    .line 25
    invoke-static {v5, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 26
    :cond_b
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-object/from16 v2, p6

    move-object v15, v3

    move-object/from16 v3, p8

    move-object v12, v4

    move-object/from16 v4, p4

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    move v11, v6

    move-object/from16 v6, p2

    move-object v11, v7

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->composeContentValuesFromGettingData(Ljava/util/List;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    const/4 v1, -0x1

    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc5f

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v2, v3, :cond_f

    const v3, 0x1a6d3

    if-eq v2, v3, :cond_e

    const v3, 0x1bd59

    if-eq v2, v3, :cond_d

    const v3, 0x1cae6

    if-eq v2, v3, :cond_c

    goto :goto_5

    :cond_c
    const-string v2, "wap"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v1, v4

    goto :goto_5

    :cond_d
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v1, v5

    goto :goto_5

    :cond_f
    const-string v2, "cb"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    :goto_5
    if-eqz v1, :cond_12

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    if-eq v1, v4, :cond_12

    if-eq v1, v5, :cond_11

    goto :goto_6

    .line 29
    :cond_11
    invoke-direct {v0, v9, v13, v14, v15}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->processDatatypeMMS(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 30
    :cond_12
    invoke-direct {v0, v9, v13, v10, v15}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->processDatatypeSMSCBWAP(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    :goto_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "correlation_tag"

    move-object/from16 v4, p4

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "correlation_id"

    move-object/from16 v6, p5

    move-object v7, v12

    .line 35
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferdbid"

    .line 36
    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFallbackFailed()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFallbackFailed()Ljava/lang/String;

    move-result-object v3

    const-string v8, "true"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 38
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFallbackFailed()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v8, "fallbackFailed"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    :cond_13
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "misc attr bundle size: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v16

    invoke-static {v8, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    :cond_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mmsnoti-message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "mms_noti"

    move-object v7, v2

    goto :goto_7

    :cond_15
    move-object v7, v9

    .line 44
    :cond_16
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    const-string v3, "insert"

    invoke-virtual {v2, v1, v7, v3, v5}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->makePendingObject(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v5, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v5, v2, v7, v3, v1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->sendBroadcastToApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {v1, v10}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    .line 47
    iget-object v1, v0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2, v4, v6}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->checkPendingDdm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_8
    return-void
.end method

.method private logEvent(ZLcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Big Data Logging, isRlayOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentEventListeners"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFileSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat-message"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->buildEventRcsPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processDatatypeMMS(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBccList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBccList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "bcc"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getCcList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getCcList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cc"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDirection()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMmsSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->kb2bytes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_size"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSubject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sub"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMmsContentLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ct_l"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMmsExpiryTimeStamp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exp"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMmsCmcProp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmc_prop"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mmsnoti-message"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    const-string p2, "text"

    const-string v0, "mms_noti"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mResolver:Landroid/content/ContentResolver;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mmsmessage"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert mms table : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AgentEventListeners"

    invoke-static {p4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 23
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->createMMSPartDataBase(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private processDatatypeSMSCBWAP(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDirection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgentEventListeners"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDirection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "address"

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->buffercv:Landroid/content/ContentValues;

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mDBMan:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->removeChangedObjEvent(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCallLogAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mCallLogAgentEventListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/ICallLogAgentEventListener;

    return-object v0
.end method

.method public getMessageAgentEventListener()Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/AgentEventListeners;->mMessageAgentEventListener:Lcom/samsung/android/mdecservice/nms/agent/interfaces/IMessageAgentEventListener;

    return-object v0
.end method
