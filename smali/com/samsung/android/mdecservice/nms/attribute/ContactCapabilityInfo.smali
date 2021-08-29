.class public Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;
.super Ljava/lang/Object;
.source "ContactCapabilityInfo.java"


# instance fields
.field private mCapabilityFeatures:J

.field private mExpiryDate:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIsPd:Z

.field private mIsRcsUser:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsPd:Z

    .line 4
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsRcsUser:Z

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mCapabilityFeatures:J

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mExpiryDate:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCapabilityFeatures()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mCapabilityFeatures:J

    return-wide v0
.end method

.method public getExpiryDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isPd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsPd:Z

    return v0
.end method

.method public isRcsUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsRcsUser:Z

    return v0
.end method

.method public setCapabilityFeatures(Ljava/lang/Long;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mCapabilityFeatures:J

    return-void
.end method

.method public setExpiryDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mExpiryDate:Ljava/lang/String;

    return-void
.end method

.method public setPd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsPd:Z

    return-void
.end method

.method public setRcsUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsRcsUser:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactCapabilityInfo: number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isPd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsPd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRcsUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mIsRcsUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " capabilityFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mCapabilityFeatures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " expiryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;->mExpiryDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
