.class public Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;
.super Ljava/lang/Object;
.source "RcsRequestFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsRequestFactory"


# instance fields
.field private final mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->getRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;

    move-result-object p1

    return-object p1
.end method

.method public getRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/request/rcs/BaseRequest;
    .locals 8

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "reqType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isRelay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v0, "delete"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v7, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    return-object v7

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "msgContext is invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "group_info"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "upload_payload"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "download_payload"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "im"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "ft"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v3, "im_bot"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string v3, "ft_bot"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v3, "state_msg"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 8
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error in creating the object"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 9
    :pswitch_0
    new-instance v6, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/rcs/SmRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :pswitch_1
    new-instance v7, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/rcs/GioRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    goto :goto_2

    .line 11
    :pswitch_2
    new-instance v6, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtUploadRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;)V

    :goto_1
    move-object v2, v6

    goto :goto_3

    .line 12
    :pswitch_3
    new-instance v7, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/rcs/FtDownloadRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    goto :goto_2

    .line 13
    :pswitch_4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "M0003_CHAT_BOT not satisfied"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 15
    :cond_3
    :pswitch_5
    new-instance v7, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mClientMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RcsRequestFactory;->mNmsDbMgr:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/request/rcs/ChatRequest;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Ljava/lang/String;Z)V

    :goto_2
    move-object v2, v7

    :goto_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c4f152d -> :sswitch_7
        -0x4b625d2a -> :sswitch_6
        -0x46a677d4 -> :sswitch_5
        0xcce -> :sswitch_4
        0xd24 -> :sswitch_3
        0x33d948d7 -> :sswitch_2
        0x3a060550 -> :sswitch_1
        0x4c6c5e6e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
