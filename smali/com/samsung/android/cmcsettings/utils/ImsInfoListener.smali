.class public Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;
.super Ljava/lang/Object;
.source "ImsInfoListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsInfoListener"

.field private static sInstance:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsManagers:[Lcom/sec/ims/ImsManager;

.field private mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

.field private mOwnNumbers:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$2;-><init>(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/sec/ims/ImsManager;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    new-array p1, p1, [Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mOwnNumbers:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->connectImsService(I)V

    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->connectImsService(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ImsInfoListener"

    const-string v0, "Failed to connect to the ImsManager due to the Unsupported ImsService Version."

    .line 8
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)[Lcom/sec/ims/ImsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)Lcom/sec/ims/IImsRegistrationListener$Stub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mImsRegListener:Lcom/sec/ims/IImsRegistrationListener$Stub;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mOwnNumbers:[Ljava/lang/String;

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

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/sec/ims/ImsManager;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener$1;-><init>(Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;I)V

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v1, v0, p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mImsManagers:[Lcom/sec/ims/ImsManager;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->sInstance:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->sInstance:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->sInstance:Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;

    return-object p0
.end method


# virtual methods
.method public getOwnNumber(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/utils/ImsInfoListener;->mOwnNumbers:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
