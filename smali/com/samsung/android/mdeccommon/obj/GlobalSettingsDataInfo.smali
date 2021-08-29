.class public Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;
.super Ljava/lang/Object;
.source "GlobalSettingsDataInfo.java"


# instance fields
.field private mCmcDeviceId:Ljava/lang/String;

.field private mCmcDevices:Ljava/lang/String;

.field private mCmcLines:Ljava/lang/String;

.field private mCmcOobeHistory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcLines:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDevices:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcOobeHistory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcLines:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDevices:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcOobeHistory:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcLines:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDevices:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcOobeHistory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCmcDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcDevices()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDevices:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcLines()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcLines:Ljava/lang/String;

    return-object v0
.end method

.method public getCmcOobeHistory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcOobeHistory:Ljava/lang/String;

    return-object v0
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setCmcDevices(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcDevices:Ljava/lang/String;

    return-void
.end method

.method public setCmcLines(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcLines:Ljava/lang/String;

    return-void
.end method

.method public setCmcOobeHistory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/GlobalSettingsDataInfo;->mCmcOobeHistory:Ljava/lang/String;

    return-void
.end method
