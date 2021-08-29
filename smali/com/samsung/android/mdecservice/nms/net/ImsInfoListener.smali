.class public Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;
.super Ljava/lang/Object;
.source "ImsInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsInfoListener"

.field private static mOwnNumbers:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsManagers:[Lcom/sec/ims/ImsManager;

.field private mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

.field private mListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$2;-><init>(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/sec/ims/ImsManager;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    new-array p1, p1, [Ljava/lang/String;

    .line 6
    sput-object p1, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mOwnNumbers:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->connectImsService(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "ImsInfoListener"

    const-string v0, "Failed to connect to the ImsManager due to the Unsupported ImsService Version."

    .line 9
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)[Lcom/sec/ims/ImsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)Lcom/sec/ims/IImsRegistrationListener$Stub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mOwnNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    return-object p0
.end method

.method private connectImsService(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectImsService: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsInfoListener"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/sec/ims/ImsManager;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;-><init>(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;I)V

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v1, v0, p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method

.method public static getOwnNumber(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mOwnNumbers:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "ImsInfoListener"

    const-string v1, "getMSISDNforNms:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getMsisdnByPhoneId(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMsisdnFromSim: msisdn="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getOwnNumber(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMsisdnFromReg: msisdn="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public isRcsEnabled(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v2

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRcsEnabled: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rcsEnabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsInfoListener"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public registerListener(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->mListener:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    return-void
.end method
