.class public Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;
.super Ljava/lang/Object;
.source "NmsSmsSingleMessageSender.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NmsSmsSingleMessageSender"

.field private static mRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRunningCounter:I

.field private requestCodelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->requestCodelist:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender$1;-><init>(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mResolver:Landroid/content/ContentResolver;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->requestCodelist:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.mdecservice.SMS_SENT"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private UpdateGearMessageProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "objectId"

    .line 2
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "correlationTag"

    .line 3
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 5
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->messageProviderSMSURI:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_1

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->messageProviderSMSURI:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "itemId=?"

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 7
    sget-object v1, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGearMessageProvider affectedRow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", i : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    goto :goto_1

    .line 8
    :catch_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to access Gear Provider - Exception! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->messageProviderSMSURI:Ljava/util/List;

    .line 9
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->requestCodelist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    return p0
.end method

.method static synthetic access$310(Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    return v0
.end method

.method public static generateRequestCode()I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRequestId:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRequestId:I

    .line 2
    :cond_0
    sget v0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRequestId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRequestId:I

    return v0
.end method


# virtual methods
.method public insertRelayedDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertRelayedDB : correlationTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resourceURL = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", objectID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rowID = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendRelayedSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->generateRequestCode()I

    move-result v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.mdecservice.SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "correlationTag"

    .line 4
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "resourceURL"

    .line 5
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "objectID"

    .line 6
    invoke-virtual {v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p4, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;

    invoke-virtual {v1, p4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    iget p4, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    .line 9
    iget-object p4, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->requestCodelist:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object p4, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correlationTAG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", objectID : "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", requestCode : "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mRunningCounter : "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mRunningCounter:I

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/service/NmsSmsSingleMessageSender;->mContext:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-static {p3, v0, v1, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 12
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    .line 13
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
