.class public final Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;
.super Ljava/lang/Object;
.source "NmsRcsCapaManager.java"


# static fields
.field protected static final CAPABILITY_REFRESH_PERIOD:J = 0x4ef6d80L

.field protected static final EVT_CAPABILITY_CHECK_TIMEOUT:I = 0x1

.field protected static final INTENT_CONTACT_REFRESH_TIMEOUT:Ljava/lang/String; = "com.samsung.android.mdecservice.INTENT_CONTACT_REFRESH_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "NmsRcsCapaManager"

.field protected static mUpdater:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;


# instance fields
.field private mActiveSimSlot:I

.field protected mCapaCheckBotList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCapaCheckList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityListener:Lcom/sec/ims/options/CapabilityListener;

.field private mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

.field public final mConnectionListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

.field protected mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

.field protected final mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCmcSubscribed:Z

.field private mIsInitialized:Z

.field private mIsRcsEnabled:Z

.field protected mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field protected mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

.field protected mRefreshIntent:Landroid/app/PendingIntent;

.field private mRequestSearchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsCmcSubscribed:Z

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/sec/ims/options/CapabilityManager;

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRequestSearchTime:J

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRefreshIntent:Landroid/app/PendingIntent;

    .line 8
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    .line 9
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 10
    new-instance v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$2;-><init>(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    new-instance v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$3;-><init>(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mConnectionListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 14
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    .line 15
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    .line 16
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    .line 17
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    .line 18
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 20
    :goto_0
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result p2

    if-ge v0, p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    new-instance p3, Lcom/sec/ims/options/CapabilityManager;

    iget-object p4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, v0}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;I)V

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->getCapabilityListener()Lcom/sec/ims/options/CapabilityListener;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityListener:Lcom/sec/ims/options/CapabilityListener;

    .line 23
    :cond_1
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "capaHandler"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 24
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance p2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;

    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$1;-><init>(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance p3, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object p3, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mUpdater:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleCapaCheckList()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->refreshContactInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->refreshCapabilityInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendSearchRequest()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRefreshTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendCheckBotResponse(Lcom/sec/ims/options/Capabilities;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->checkCapabilityChange(Lcom/sec/ims/options/Capabilities;)V

    return-void
.end method

.method private checkCapabilityChange(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;Ljava/lang/String;)V
    .locals 4

    .line 21
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->insertContactBufferDB(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 24
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getContactFromBufferDB(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    const/4 p2, 0x1

    .line 27
    :cond_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCapabilityChange isCapaChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_3

    .line 28
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->updateCapabilityBufferDB(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;)V

    .line 29
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mUpdater:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->updateCapabilityContactDB(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private checkCapabilityChange(Lcom/sec/ims/options/Capabilities;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->insertContactBufferDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getContactFromBufferDB(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getFeatures()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v4, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCapabilityChange status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isCapaChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v3, :cond_3

    const-string v3, "-1"

    .line 9
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "-2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    :cond_3
    new-instance v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {v3, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setAvailable(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setFeatures(J)V

    .line 14
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setLastUpdateTime(J)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p1, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->updateCapabilityBufferDB(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;)V

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "rcscapa_check"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "rcscapa_update"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private contactCompareBoth(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "normalized_number"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-1"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->addCapaList(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    sget-object p2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private contactCompareLeft(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "data4"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->isExistBufferDB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p3, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "0"

    .line 5
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    :cond_0
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p3

    if-nez p3, :cond_3

    .line 8
    new-instance p3, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {p3, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->addCapaList(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance p3, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {p3, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    sget-object p2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private contactCompareRight(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "normalized_number"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    const-string v3, "-1"

    if-eqz v1, :cond_2

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->removeCapaList(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->addCapaList(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    :goto_0
    new-instance p1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    sget-object p2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private getCapabilitiesByNumber(Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {v1}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/ims/options/CapabilityManager;->getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCapabilitiesByUri(Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    aget-object v0, v0, v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {v1}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/ims/options/CapabilityManager;->getCapabilities(Landroid/net/Uri;I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized handleCapaCheckList()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->getNextCapa()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCapaCheckList getCapaList size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->removeCapaList(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->getCapabilitiesByNumber(Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->checkCapabilityChange(Lcom/sec/ims/options/Capabilities;)V

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-nez v2, :cond_2

    const-wide/16 v1, 0x3e8

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleRefreshTimer()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->getTimeStampForContactRefresh()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    const-wide/32 v0, 0x4ef6d80

    add-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->setTimeStampForContactRefresh(J)V

    :cond_1
    sub-long v2, v0, v2

    .line 4
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->startRefreshTimer(J)V

    .line 5
    sget-object v4, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRefreshTimer millis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", refreshTime="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private handleRelayRequestAdd(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getContactList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "-1"

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 5
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v5, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->isExistBufferDB(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v5, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v6, v3, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->addDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "2"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const-string v7, "0"

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->changeStatusBufferDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "-2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v4, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getContactFromBufferDB(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0, v3}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->addCapaList(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRelayRequestAdd insertContactList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "listToNotify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p1, v2, v4, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->insertContactListBufferDB(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rcscapa_update"

    .line 18
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleRelayRequestDelete(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getContactList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 6
    invoke-virtual {v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v6, v5, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->removeDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v6, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->isExistContactDB(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v6, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getDeviceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v5}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->removeCapaList(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v4, v5}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getStatusFromBufferDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRelayRequestDelete deleteContactList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", changeStatusToLocal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", listDeleted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {p1, v0, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->deleteContactListBufferDB(Ljava/util/List;)V

    .line 18
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const-string v0, "1"

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->changeStatusBufferDB(Ljava/util/List;Ljava/lang/String;)V

    const-string p1, "rcscapa_delete"

    .line 19
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private refreshCapabilityInfo()V
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v2, "refreshCapabilityInfo()"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const/4 v2, 0x0

    const-string v3, "status=?"

    const-string v4, "0"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "normalized_number"

    .line 5
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_update_time"

    .line 6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v6, 0x4ef6d80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 8
    invoke-virtual {p0, v3}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->addCapaList(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleCapaCheckList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 11
    throw v1
.end method

.method private refreshContactInfo()V
    .locals 9

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v2, "refreshContactInfo()"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const/4 v2, 0x0

    const-string v3, "status=?"

    const-string v4, "2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "normalized_number"

    .line 6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "last_update_time"

    .line 7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/32 v7, 0x4ef6d80

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v1, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->deleteContactListBufferDB(Ljava/util/List;)V

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0, v3}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->removeCapaList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 14
    throw v1
.end method

.method private registerCapabilityListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityListener:Lcom/sec/ims/options/CapabilityListener;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v2, "registerCapabilityListener"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityListener:Lcom/sec/ims/options/CapabilityListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendCheckBotResponse(Lcom/sec/ims/options/Capabilities;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    new-instance v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {v2, v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setAvailable(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setFeatures(J)V

    .line 7
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->setLastUpdateTime(J)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    .line 10
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rcscapa_checkbot"

    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private sendRelayRequest(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->setContactSyncRunning(Z)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "RelayRequest"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayRequestList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method private sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "All"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendRelayResponse(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->setContactSyncRunning(Z)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "RelayResponse"

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayResponseList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method private sendSearchRequest()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRequestSearchTime:J

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->getTimeStampForContact()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSearchRequest() mRequestTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRequestSearchTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", searchTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    const-string v2, "eventTypeServer"

    .line 7
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    const-string v2, "RelayRequest"

    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    const-string v2, "rcscapa_search"

    .line 9
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setSearchTime(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method private startRefreshTimer(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRefreshIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->stopRefreshTimer()V

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdecservice.INTENT_CONTACT_REFRESH_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRefreshIntent:Landroid/app/PendingIntent;

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method private stopRefreshTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRefreshIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRefreshIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private unregisterCapabilityListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityListener:Lcom/sec/ims/options/CapabilityListener;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v2, "unregisterCapabilityListener"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityListener:Lcom/sec/ims/options/CapabilityListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->unregisterListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCapaList(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkContactChange()V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "0"

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v3, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v4, "checkContactChange"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->setContactSyncRunning(Z)V

    const-string v2, "content://com.android.contacts/data_groupby/"

    .line 4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "groupby"

    const-string v5, "data4"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const-string v9, "mimetype = ?"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 6
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v10

    const-string v2, "data1"

    .line 7
    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v4, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v11, "data4 ASC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object v6, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const/4 v7, 0x0

    const-string v8, "status!=? AND status!=?"

    const-string v9, "2"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "normalized_number ASC"

    sget-object v11, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/mdecservice/nms/querybuilder/QueryBuilderBase;->queryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_9

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 10
    :cond_1
    :try_start_2
    new-instance v7, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    const-string v5, "normalized_number"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->STRING:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    sget-object v18, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    move-object v12, v7

    move-object v13, v4

    move-object v15, v6

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;)V

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v7}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    .line 19
    sget-object v15, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$5;->$SwitchMap$com$samsung$android$mdecservice$nms$util$CustomCursorJoiner$Result:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v15, v14

    if-eq v14, v3, :cond_4

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {v1, v6, v5, v13}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->contactCompareBoth(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {v1, v6, v8, v10, v12}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->contactCompareRight(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 22
    :cond_4
    invoke-direct {v1, v4, v5, v9, v11}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->contactCompareLeft(Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 23
    :cond_5
    sget-object v3, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v7, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkContactChange():listAdded="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", listDeleted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", insertContactList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", deleteContactList="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", changeStatusToLocal="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", changeStatusToRemote="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", changeStatusToInvalid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", mCapaCheckList="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 27
    invoke-static {v3, v7, v13}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 29
    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->setContactSyncRunning(Z)V

    .line 30
    :cond_6
    iget-object v3, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const-string v7, "-1"

    invoke-virtual {v3, v9, v7, v2}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->insertContactListBufferDB(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v2, v10}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->deleteContactListBufferDB(Ljava/util/List;)V

    .line 32
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    const-string v3, "1"

    invoke-virtual {v2, v11, v3}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->changeStatusBufferDB(Ljava/util/List;Ljava/lang/String;)V

    .line 33
    iget-object v2, v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v2, v12, v0}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->changeStatusBufferDB(Ljava/util/List;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "rcscapa_delete"

    if-eqz v0, :cond_7

    :try_start_3
    const-string v0, "rcscapa_update"

    .line 35
    invoke-direct {v1, v5, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V

    .line 36
    invoke-direct {v1, v8, v2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "rcscapa_add"

    .line 37
    invoke-direct {v1, v5, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayRequest(Ljava/util/List;Ljava/lang/String;)V

    .line 38
    invoke-direct {v1, v8, v2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayRequest(Ljava/util/List;Ljava/lang/String;)V

    .line 39
    :goto_1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleCapaCheckList()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :cond_8
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 42
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    .line 43
    :cond_9
    :goto_2
    :try_start_4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "can not find bufferDB or contactDB"

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 45
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v2

    :goto_3
    move-object v2, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v2

    .line 46
    :goto_4
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 47
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 48
    throw v0
.end method

.method public clearCapaList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized deinit()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v2, "deinit()"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRcsEnableResponse()V

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->unregisterCapabilityListener()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->stopRefreshTimer()V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->clearCapaList()V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCapabilityListener()Lcom/sec/ims/options/CapabilityListener;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager$4;-><init>(Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NoClassDefFoundError : CapabilityListener"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getNextCapa()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleInitOrDeinit()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInitOrDeinit() mIsInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCmcSubscribed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsCmcSubscribed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRcsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsCmcSubscribed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsCmcSubscribed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    if-nez v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->deinit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleRelayRequest(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getRelayType()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRelayRequest type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "rcscapa_search"

    const-string v3, "rcscapa_check"

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "rcscapa_add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "rcscapa_delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_3
    const-string v1, "rcscapa_checkbot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_5
    const-string v1, "rcs_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_b

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getLastUpdateTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getContactListFromBufferDB(J)Ljava/util/List;

    move-result-object v1

    .line 6
    sget-object v3, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRelayRequest lastUpdateTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getLastUpdateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getContactList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckBotList:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->getCapabilitiesByUri(Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendCheckBotResponse(Lcom/sec/ims/options/Capabilities;)V

    goto :goto_2

    .line 17
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;->getContactList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->getContactFromBufferDB(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->addCapaList(Ljava/lang/String;)V

    goto :goto_3

    .line 23
    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayResponse(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRelayRequestDelete(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V

    goto :goto_4

    .line 25
    :cond_9
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRelayRequestAdd(Lcom/samsung/android/mdecservice/nms/object/RelayRequestObject;)V

    .line 26
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleCapaCheckList()V

    return-void

    .line 27
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRcsEnableResponse()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7264979c -> :sswitch_5
        -0x2162ae86 -> :sswitch_4
        -0x1ab1fdf3 -> :sswitch_3
        -0x9655887 -> :sswitch_2
        0x102e8776 -> :sswitch_1
        0x5cef5993 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleRelayResponse(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->getRelayType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->getContactList()Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRelayResponse type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", contactList size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "rcscapa_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "rcscapa_search"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "sub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "rcscapa_delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "rcscapa_checkbot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "rcscapa_check"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "rcs_enabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v2, "-1"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 5
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContactQueryBuilder:Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/querybuilder/ContactQueryBuilder;->deleteContactListBufferDB(Ljava/util/List;)V

    goto/16 :goto_6

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p1, v1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyRcsCapabilityChanged(Ljava/util/List;)V

    goto/16 :goto_6

    .line 10
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    const-string v2, "2"

    .line 12
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->checkCapabilityChange(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->notifyRcsCapabilityChanged(Ljava/util/List;)V

    goto :goto_6

    .line 15
    :pswitch_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 16
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->checkCapabilityChange(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;Ljava/lang/String;)V

    goto :goto_4

    .line 17
    :cond_3
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRequestSearchTime:J

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->setTimeStampForContact(J)V

    .line 18
    sget-object p1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search completed time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mRequestSearchTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {p1}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->startContactSync()V

    goto :goto_6

    .line 20
    :pswitch_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    .line 21
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->checkCapabilityChange(Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;Ljava/lang/String;)V

    goto :goto_5

    .line 22
    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;->getRcsEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->setRcsEnabled(Z)V

    :cond_4
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7264979c -> :sswitch_6
        -0x2162ae86 -> :sswitch_5
        -0x1ab1fdf3 -> :sswitch_4
        -0x9655887 -> :sswitch_3
        0x1be40 -> :sswitch_2
        0x102e8776 -> :sswitch_1
        0x14345a97 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized init()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getActiveSimSlot()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    .line 3
    sget-object v1, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "init()"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.mdecservice.INTENT_CONTACT_REFRESH_TIMEOUT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRefreshTimer()V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapabilityManager:[Lcom/sec/ims/options/CapabilityManager;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mConnectionListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->setConnectionListener(Lcom/sec/ims/options/CapabilityManager$ConnectionListener;)V

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->registerCapabilityListener()V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsDbMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->startContactSync()V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRcsEnableResponse()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendSearchRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsInitialized:Z

    return v0
.end method

.method public removeCapaList(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeCapaList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mCapaCheckList:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendCheckRequest(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "rcscapa_checkbot"

    goto :goto_1

    :cond_1
    const-string p1, "rcscapa_check"

    .line 4
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->sendRelayRequest(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public sendRcsEnableRequest()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    const-string v2, "sendRcsEnableRequest()"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "RelayRequest"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "rcs_enabled"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public sendRcsEnableResponse()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mActiveSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRcsEnableResponse() mIsRcsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "RelayResponse"

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "rcs_enabled"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRelayType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setRcsEnabled(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    const-string v1, "All"

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    return-void
.end method

.method public setCmcSubscribed(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmcSubscribed enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCmcSubscribed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsCmcSubscribed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsCmcSubscribed:Z

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleInitOrDeinit()V

    return-void
.end method

.method public setRcsEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRcsEnabled enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRcsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->mIsRcsEnabled:Z

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleInitOrDeinit()V

    return-void
.end method
