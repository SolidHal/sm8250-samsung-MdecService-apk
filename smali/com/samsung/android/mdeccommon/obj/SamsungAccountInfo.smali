.class public Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;
.super Ljava/lang/Object;
.source "SamsungAccountInfo.java"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mApiServerUrl:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mRegionMcc:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mUserId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mAccessToken:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mApiServerUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mMcc:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mRegionMcc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mUserId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mAccessToken:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mApiServerUrl:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mMcc:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mRegionMcc:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mUserId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mAccessToken:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mApiServerUrl:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mMcc:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mRegionMcc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getApiServerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mApiServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionMcc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mRegionMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setApiServerUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mApiServerUrl:Ljava/lang/String;

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mMcc:Ljava/lang/String;

    return-void
.end method

.method public setRegionMcc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mRegionMcc:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/obj/SamsungAccountInfo;->mUserId:Ljava/lang/String;

    return-void
.end method
