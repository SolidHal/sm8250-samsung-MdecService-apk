.class public Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;
.super Ljava/lang/Object;
.source "MdecLineInfoInternal.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mLineId:Ljava/lang/String;

.field private mOwnerFcmToken:Ljava/lang/String;

.field private mPhase1WatchDeviceId:Ljava/lang/String;

.field private mPhase2HashedPdBtAddr:Ljava/lang/String;

.field private mRemanentDevices:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mLineId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mVersion:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mPhase1WatchDeviceId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mOwnerFcmToken:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mRemanentDevices:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mPhase2HashedPdBtAddr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerFcmToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mOwnerFcmToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase1WatchDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mPhase1WatchDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2HashedPdBtAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mPhase2HashedPdBtAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getRemanentDevices()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mRemanentDevices:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mLineId:Ljava/lang/String;

    return-void
.end method

.method public setOwnerFcmToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mOwnerFcmToken:Ljava/lang/String;

    return-void
.end method

.method public setPhase1WatchDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mPhase1WatchDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setPhase2HashedPdBtAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mPhase2HashedPdBtAddr:Ljava/lang/String;

    return-void
.end method

.method public setRemanentDevices(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mRemanentDevices:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecLineInfoInternal;->mVersion:Ljava/lang/String;

    return-void
.end method
