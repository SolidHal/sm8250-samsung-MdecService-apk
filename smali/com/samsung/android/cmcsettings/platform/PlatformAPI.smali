.class public Lcom/samsung/android/cmcsettings/platform/PlatformAPI;
.super Ljava/lang/Object;
.source "PlatformAPI.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sPlatformAPI:Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->createPlatformAPI()Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->sPlatformAPI:Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPlatformAPI()Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/BuildInfo;->isSepDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isSepDevice "

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/platform/sep/SepPlatformApiImpl;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/platform/sep/SepPlatformApiImpl;-><init>()V

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GedPlatformApiImpl"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/platform/ged/GedPlatformApiImpl;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/platform/ged/GedPlatformApiImpl;-><init>()V

    return-object v0
.end method

.method public static isReachToDataLimit(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/platform/PlatformAPI;->sPlatformAPI:Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;->isReachToDataLimit(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
