.class public final enum Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;
.super Ljava/lang/Enum;
.source "SettingsInternalApiConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

.field public static final enum SERVICE_TYPE_CALL_FORKING:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

.field public static final enum SERVICE_TYPE_CALL_LOG:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

.field public static final enum SERVICE_TYPE_CALL_LOG_V2:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

.field public static final enum SERVICE_TYPE_MESSAGE_LOG_V2:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

.field public static final enum SERVICE_TYPE_MESSAGE_SYNC:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;


# instance fields
.field private strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    const-string v1, "SERVICE_TYPE_CALL_LOG"

    const/4 v2, 0x0

    const-string v3, "calllog"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_LOG:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    const-string v1, "SERVICE_TYPE_CALL_LOG_V2"

    const/4 v3, 0x1

    const-string v4, "calllogv2"

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_LOG_V2:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    const-string v1, "SERVICE_TYPE_MESSAGE_LOG_V2"

    const/4 v4, 0x2

    const-string v5, "msglogv2"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_MESSAGE_LOG_V2:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    const-string v1, "SERVICE_TYPE_CALL_FORKING"

    const/4 v5, 0x3

    const-string v6, "callforking"

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_FORKING:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    const-string v1, "SERVICE_TYPE_MESSAGE_SYNC"

    const/4 v6, 0x4

    const-string v7, "message"

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_MESSAGE_SYNC:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    .line 6
    sget-object v7, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_LOG:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_LOG_V2:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_MESSAGE_LOG_V2:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->SERVICE_TYPE_CALL_FORKING:Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->strValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;

    return-object v0
.end method


# virtual methods
.method public getStrValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/contentprovider/SettingsInternalApiConstants$ServiceType;->strValue:Ljava/lang/String;

    return-object v0
.end method
