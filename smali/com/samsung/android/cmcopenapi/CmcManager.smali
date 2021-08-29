.class public Lcom/samsung/android/cmcopenapi/CmcManager;
.super Ljava/lang/Object;
.source "CmcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;,
        Lcom/samsung/android/cmcopenapi/CmcManager$CmcDataType;,
        Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;
    }
.end annotation


# static fields
.field private static final CMC_ACTION:Ljava/lang/String; = "com.samsung.android.mdecservice.nms.NmsService"

.field private static final CMC_PACKAGE:Ljava/lang/String; = "com.samsung.android.mdecservice"

.field private static final LOG_TAG:Ljava/lang/String; = "CmcManager"

.field private static final REGION_GDRP:Ljava/lang/String; = "gdpr"

.field private static final REGION_KOR:Ljava/lang/String; = "kor"

.field private static final REGION_NON_GDRP:Ljava/lang/String; = "non-gdpr"

.field private static SHIP_BUILD:Z

.field private static SIM_SLOT_1:I

.field private static SIM_SLOT_2:I

.field private static gdprCountries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

.field private static mPackageInstalled:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;


# instance fields
.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product_ship"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcopenapi/CmcManager;->SHIP_BUILD:Z

    .line 3
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->NOT_QUERIED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mPackageInstalled:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/samsung/android/cmcopenapi/CmcManager;->SIM_SLOT_1:I

    const/4 v0, 0x1

    .line 5
    sput v0, Lcom/samsung/android/cmcopenapi/CmcManager;->SIM_SLOT_2:I

    .line 6
    invoke-static {}, Lcom/samsung/android/cmcopenapi/CmcManager;->createMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->gdprCountries:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mBound:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mListener:Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcopenapi/CmcManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/CmcManager$1;-><init>(Lcom/samsung/android/cmcopenapi/CmcManager;)V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mConnection:Landroid/content/ServiceConnection;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mListener:Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/cmcopenapi/INmsService;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/cmcopenapi/INmsService;)Lcom/samsung/android/cmcopenapi/INmsService;
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcopenapi/CmcManager;Lcom/samsung/android/cmcopenapi/INmsService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->onConnectService(Lcom/samsung/android/cmcopenapi/INmsService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcopenapi/CmcManager;)Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mListener:Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;

    return-object p0
.end method

.method private static createMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grc"

    const-string v2, "el"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ndl"

    const-string v3, "nl"

    .line 3
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dnk"

    const-string v4, "da"

    .line 4
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deu"

    const-string v4, "de"

    .line 5
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lva"

    const-string v5, "lv"

    .line 6
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rou"

    const-string v5, "ro"

    .line 7
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lux"

    const-string v5, "lb"

    .line 8
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ltu"

    const-string v5, "lt"

    .line 9
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mlt"

    const-string v5, "mt"

    .line 10
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bel"

    .line 11
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bgr"

    const-string v3, "bg"

    .line 12
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "swe"

    const-string v3, "sv"

    .line 13
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "esp"

    const-string v3, "es"

    .line 14
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "svk"

    const-string v3, "sk"

    .line 15
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "svn"

    const-string v3, "sl"

    .line 16
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "irl"

    const-string v3, "ga"

    .line 17
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "est"

    const-string v3, "et"

    .line 18
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gbr"

    const-string v3, "en"

    .line 19
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aut"

    .line 20
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ita"

    const-string v3, "it"

    .line 21
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cze"

    const-string v3, "cs"

    .line 22
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hrv"

    const-string v3, "hr"

    .line 23
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cyp"

    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "prt"

    const-string v2, "pt"

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pol"

    const-string v2, "pl"

    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fra"

    const-string v2, "fr"

    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fin"

    const-string v2, "fi"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hun"

    const-string v2, "hu"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isl"

    const-string v2, "is"

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lie"

    .line 31
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nor"

    const-string v2, "nb"

    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "che"

    .line 33
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static executeCmcActivity(Landroid/content/Context;Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "CmcManager"

    const-string v1, "executeCmcActivity"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v1, v3, :cond_0

    const-string p0, "sdk is not supported"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "context is null"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "application context is null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v1, "com.samsung.android.mdecservice"

    .line 7
    invoke-static {p0, v1}, Lcom/samsung/android/cmcopenapi/CmcManager;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "CMC package is not exist"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->startOobeProcess(Landroid/content/Context;Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;)Z

    move-result p0

    return p0
.end method

.method private static executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "CmcManager"

    const-string v1, "executeCmcActivityInternal"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.mdecservice"

    const-string v3, "com.samsung.android.cmcsettings.UI.CMCMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "EXTRA_REASON_CMCOPEN"

    .line 9
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "execute activity failed"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getActiveSimSlot(Landroid/content/Context;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "CmcManager"

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    const-string p0, "sdk is not supported"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "context is null"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_lines"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->getLineInfoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "cmcLineInfoList is null"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v2

    move v3, v0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->getLineSlotIndex()I

    move-result v6

    if-nez v6, :cond_4

    move v0, v5

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->getLineSlotIndex()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v3, v5

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    move v2, v5

    .line 10
    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getActiveSimSlot: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getCmcDeviceType(Landroid/content/Context;)Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;->UNKNOWN:Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;

    const-string v1, "CmcManager"

    if-nez p0, :cond_0

    const-string p0, "getCmcVersion: ctx is null"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cmc_device_type"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "pd"

    if-eqz v2, :cond_1

    const-string p0, "ro.cmc.device_type"

    .line 5
    invoke-static {p0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, -0x1

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x10fa53b6

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4

    const/16 v5, 0xdf4

    if-eq v4, v5, :cond_3

    const/16 v3, 0xe51

    if-eq v4, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "sd"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "unknown"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v6

    :cond_5
    :goto_0
    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;->UNKNOWN:Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;

    goto :goto_1

    .line 9
    :cond_7
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;->SECONDARY:Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;

    goto :goto_1

    .line 10
    :cond_8
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;->PRIMARY:Lcom/samsung/android/cmcopenapi/CmcParameter$DeviceType;

    .line 11
    :cond_9
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrimaryDevice: deviceType="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getCmcVersion(Landroid/content/Context;)I
    .locals 5

    const/4 v0, -0x1

    const-string v1, "CmcManager"

    if-nez p0, :cond_0

    const-string p0, "getCmcVersion: ctx is null"

    .line 1
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v2, "com.samsung.android.mdecservice"

    .line 2
    invoke-static {p0, v2}, Lcom/samsung/android/cmcopenapi/CmcManager;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "CMC package is not exist"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/high16 v2, -0x40800000    # -1.0f

    const-string v3, "cmc_service_version"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v2

    const/16 v3, 0xc8

    const/16 v4, 0x64

    if-nez v2, :cond_2

    move p0, v4

    goto :goto_0

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float p0, p0, v2

    if-nez p0, :cond_3

    move p0, v3

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    if-ne p0, v0, :cond_5

    const-string v0, "ro.cmc.version"

    const-string v2, ""

    .line 5
    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "1.0"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    const-string v2, "2.0"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v3, p0

    .line 9
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCmcVersion: convertedCmcVersion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, ""

    const-string v2, "CmcManager"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->getPresentSimCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const-string v3, "getCountryCode: Sim present: get country code based on the SIM card"

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v3, "getCountryCode: Sim absent: get country code based on GEO IP"

    .line 9
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkCountryIso = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 14
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "getCountryCode: SA cc"

    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "cmc_country_code"

    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stored cc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static getPPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PP version is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getPresentSimCount(Landroid/content/Context;)I
    .locals 8

    const-string v0, "ro.multisim.simslotcount"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "phone"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "CmcManager"

    if-ge v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 3
    sget v0, Lcom/samsung/android/cmcopenapi/CmcManager;->SIM_SLOT_1:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    if-ne v1, p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "0. return 0"

    .line 4
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string p0, "0. return 1"

    .line 5
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 7
    sget v0, Lcom/samsung/android/cmcopenapi/CmcManager;->SIM_SLOT_1:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 8
    sget v2, Lcom/samsung/android/cmcopenapi/CmcManager;->SIM_SLOT_2:I

    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    if-ne v1, v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    if-ne v1, p0, :cond_4

    move p0, v1

    goto :goto_2

    :cond_4
    move p0, v4

    .line 9
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSlotEmpty1 = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isSlotEmpty2 = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    const-string p0, "1. return 0"

    .line 10
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    if-nez v0, :cond_9

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    const-string p0, "ril.ICC_TYPE0"

    const-string v0, "0"

    .line 11
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "ril.ICC_TYPE1"

    .line 12
    invoke-static {v2, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_8

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string p0, "4. return 2"

    .line 14
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    :goto_3
    const-string p0, "3. return 1"

    .line 15
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    :goto_4
    const-string p0, "2. return 1"

    .line 16
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getPrimaryDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const-string v2, "CmcManager"

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    const-string p0, "sdk is not supported"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "context is null"

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cmc_devices"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->getDeviceInfoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "cmcDeviceInfoList is null"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPrimaryDeviceName: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kor"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Region is: KOR"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->gdprCountries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Region is: gdpr"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "gdpr"

    return-object p0

    :cond_1
    const-string p0, "Region is: non gdpr"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "non-gdpr"

    return-object p0
.end method

.method private static getSAAccountId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 2
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 3
    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4
    aget-object p0, p0, v0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0
.end method

.method private static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mPackageInstalled:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    sget-object v1, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->NOT_QUERIED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 4
    sget-object p0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    sput-object p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mPackageInstalled:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->NOT_INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    sput-object p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mPackageInstalled:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    .line 6
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mPackageInstalled:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    sget-object p1, Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;->INSTALLED:Lcom/samsung/android/cmcopenapi/CmcManager$PackageInfo;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isExistOobeHistory(Landroid/content/Context;)Z
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "CmcManager"

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    const-string p0, "sdk is not supported"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "context is null"

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SA id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmc_oobe_history"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->getPPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "isSAinOOBEHistory "

    if-nez v6, :cond_9

    .line 10
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, ";"

    invoke-direct {v6, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    .line 12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v1

    .line 13
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 14
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 15
    aget-object v11, v9, v10

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_6

    aget-object v11, v9, v10

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    aget-object v11, v9, v10

    invoke-static {v11, p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->notOtherHistory(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v1, "isSAinOOBEHistory old db"

    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    aget-object v1, v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    aget-object v1, v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    goto :goto_1

    .line 19
    :cond_3
    aget-object v1, v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    aget-object v1, v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    goto :goto_1

    .line 21
    :cond_4
    aget-object v1, v9, v10

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    aget-object v1, v9, v10

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v10

    .line 23
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "token contained old history value "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 24
    :cond_6
    aget-object v11, v9, v10

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "isHistoryPresent "

    if-eqz v1, :cond_7

    .line 25
    aget-object v12, v9, v10

    const-string v13, ""

    invoke-virtual {v12, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v10

    .line 26
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v9, v10

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 27
    :cond_7
    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v12

    :cond_8
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 28
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isServiceBinded()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    if-nez v0, :cond_0

    const-string v0, "CmcManager"

    const-string v1, "Failed to bind service."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isShipBuild()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/cmcopenapi/CmcManager;->SHIP_BUILD:Z

    return v0
.end method

.method private static isWifiOnly(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->semIsNetworkSupported(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static notOtherHistory(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    const-string v1, ""

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->getPPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "kor"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "gdpr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "non-gdpr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private onConnectService(Lcom/samsung/android/cmcopenapi/INmsService;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mListener:Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/samsung/android/cmcopenapi/CmcManager$ConnectionListener;->onConnected()V

    :cond_0
    return-void
.end method

.method private static startOobeProcess(Landroid/content/Context;Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;->CALL:Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;

    const-string v1, "CmcManager"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;->MESSAGE:Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid appType : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "cmc_oobe"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "cmc_activation"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_2

    const-string p0, "don\'t need to execute cmc activity"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6
    :cond_2
    invoke-static {p0, v4}, Lcom/samsung/android/cmcopenapi/CmcManager;->executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    .line 7
    :cond_3
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;->CALL:Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;

    if-ne p1, v0, :cond_4

    const-string p1, "CALLAPP"

    goto :goto_1

    .line 8
    :cond_4
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;->MESSAGE:Lcom/samsung/android/cmcopenapi/CmcParameter$AppType;

    if-ne p1, v0, :cond_5

    const-string p1, "MESSAGEAPP"

    goto :goto_1

    :cond_5
    move-object p1, v4

    .line 9
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isExistOobeHistory(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-static {p0, v4}, Lcom/samsung/android/cmcopenapi/CmcManager;->executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    goto :goto_2

    .line 11
    :cond_6
    invoke-static {p0, p1}, Lcom/samsung/android/cmcopenapi/CmcManager;->executeCmcActivityInternal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    :goto_2
    move v2, p0

    :goto_3
    return v2
.end method


# virtual methods
.method public connectService()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    const-string v1, "CmcManager"

    if-nez v0, :cond_0

    const-string v0, "Connecting to NmsService..."

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mdecservice"

    const-string v3, "com.samsung.android.mdecservice.nms.NmsService"

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/android/cmcopenapi/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/samsung/android/cmcopenapi/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mBound:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service bounding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mBound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "mNmsService is not null"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcopenapi/CmcManager;->onConnectService(Lcom/samsung/android/cmcopenapi/INmsService;)V

    :goto_0
    return-void
.end method

.method public disconnectService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mBound:Z

    if-eqz v0, :cond_0

    const-string v0, "CmcManager"

    const-string v1, "disconnect"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/cmcopenapi/CmcManager;->mBound:Z

    :cond_0
    return-void
.end method

.method public getAllCif()V
    .locals 2

    const-string v0, "CmcManager"

    const-string v1, "getAllCif"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v1}, Lcom/samsung/android/cmcopenapi/INmsService;->getAllCif()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "Exception on getAllCif"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public getMessageSetting()V
    .locals 2

    const-string v0, "CmcManager"

    const-string v1, "getMessageSetting"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0}, Lcom/samsung/android/cmcopenapi/INmsService;->getMessageSetting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getRcsCapability(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "CmcManager"

    const-string v1, "getRcsCapability"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->getRcsCapability(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNmsSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z
    .locals 2

    const-string v0, "CmcManager"

    const-string v1, "isNmsSubscribed:"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->isNmsSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onRequestToAppCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestToAppCompleted: transactionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/cmcopenapi/INmsService;->onRequestToAppCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->registerCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CmcManager"

    const-string v1, "registerNmsConfigListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CmcManager"

    const-string v1, "registerCmcSubscribeListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CmcManager"

    const-string v1, "requestToServer"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/cmcopenapi/INmsService;->requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessageSetting(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CmcManager"

    const-string v1, "deliverMessageSetting"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->sendMessageSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendMessageSettingExt(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CmcManager"

    const-string v1, "deliverMessageSettingExt"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->sendMessageSettingExt(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "Exception on sendMessageSettingExt"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CmcManager"

    const-string v1, "sendRelayRCS"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CmcManager"

    const-string v1, "sendrelayMMS"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->sendrelayMMS(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendrelaySMS(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CmcManager"

    const-string v1, "sendrelaySMS"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->sendrelaySMS(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->unregisterCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CmcManager"

    const-string v1, "unregisterNmsConfigListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CmcManager"

    const-string v1, "unregisterCmcSubscribeListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/CmcManager;->isServiceBinded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/samsung/android/cmcopenapi/CmcManager;->mNmsService:Lcom/samsung/android/cmcopenapi/INmsService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
