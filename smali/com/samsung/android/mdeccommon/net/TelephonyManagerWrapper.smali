.class public Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"

# interfaces
.implements Lcom/samsung/android/mdeccommon/net/ITelephonyManager;


# static fields
.field public static final DEFAULT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyManagerWrapper"

.field private static volatile mInstance:Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGid1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeDomain:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImei:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsi:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImei:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpi:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpus:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mHomeDomain:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mOperatorCode:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mGid1:Ljava/util/HashMap;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getCdmaMdn()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCdmaMdn"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCellLocation()Landroid/telephony/CellLocation;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCellLocation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;
    .locals 2

    const-class v0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mInstance:Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mInstance:Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mInstance:Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mInstance:Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private static inspector(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "xxxxx"

    return-object p0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isValidIsimMsisdn()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getIsimImpu()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_2

    .line 2
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    const-string v6, "+"

    .line 3
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "tel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0, v5}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "+8200000000000"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImei:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpi:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mHomeDomain:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mOperatorCode:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mGid1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAidForAppType(I)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getAidForAppType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getBtid"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallState(I)I
    .locals 6

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getCallStateForSlot"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public getCellLocationBySubId(I)Landroid/telephony/CellLocation;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCellLocationBySubId"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPhoneTypeForSlot(I)I
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getCurrentPhoneTypeForSlot"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getDataNetworkType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    return p1
.end method

.method public getDataServiceState()I
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "semGetDataServiceState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public getDataServiceState(I)I
    .locals 6

    const/4 v0, 0x1

    .line 4
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "semGetDataServiceState"

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImei:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use backup deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImei:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImei:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use backup deviceId : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImei:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mGid1:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use backup gid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mGid1:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 6

    .line 7
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getGroupIdLevel1"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string v0, ""

    .line 10
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mGid1:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use backup gid : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mGid1:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 8

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIntAtIndex"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .line 8
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimDomain"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string v0, ""

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mHomeDomain:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use backup domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mHomeDomain:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimDomain"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 4
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mHomeDomain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use backup domain : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mHomeDomain:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    .line 8
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimImpi"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string v0, ""

    .line 11
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpi:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use backup impi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpi:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimImpi"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    .line 4
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use backup impi : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    .line 8
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimImpu"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 11
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpus:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpus:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use backup domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimImpu"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 4
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImpus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use backup impu : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getIsimPcscf"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getKeyLifetime"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getMsisdn"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnByPhoneId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/extensions/Extensions$SubscriptionManager;->getSubId(I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getMsisdnbySubId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMsisdnbySubId(I)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getMsisdn"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getNetworkTypeName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getRand()[B
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getRand"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSimCountryIsoForPhone"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use backup imsi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/extensions/Extensions$SubscriptionManager;->getSlotId(I)I

    move-result v0

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getSubscriberIdForUiccAppType(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use backup imsi : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelephonyManagerWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getSubscriberIdForUiccAppType(II)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberIdForUiccAppType"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, ""

    .line 4
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "use backup imsi : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelephonyManagerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->mImsi:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p2
.end method

.method public getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getTelephonyProperty"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v7, 0x2

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v5

    aput-object p3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result p1

    return p1
.end method

.method public hasIsim()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "hasIsim"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManagerWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public isGbaSupported()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isGbaSupported"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "TelephonyManagerWrapper"

    const-string v2, "isGbaSupported: Method not supported."

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isGbaSupported(I)Z
    .locals 6

    const/4 v0, 0x0

    .line 4
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "isGbaSupported"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TelephonyManagerWrapper"

    const-string v1, "isGbaSupported(subId): Method not supported."

    .line 6
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    return p1
.end method

.method public setCallState(I)V
    .locals 0

    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "setGbaBootstrappingParams"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v7, 0x2

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v5

    aput-object p3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "setPreferredNetworkType"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public setRadioPower(Z)V
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "setRadioPower"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "setTelephonyProperty"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v7, 0x2

    aput-object v0, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v5

    aput-object p3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public validateMsisdn()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TelephonyManagerWrapper"

    if-eqz v0, :cond_0

    const-string v0, "empty msisdn"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getCdmaMdn()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "empty mdn"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->isValidIsimMsisdn()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "empty iSimMsisdn"

    .line 6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
