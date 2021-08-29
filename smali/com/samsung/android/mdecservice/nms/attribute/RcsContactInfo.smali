.class public Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;
.super Ljava/lang/Object;
.source "RcsContactInfo.java"


# instance fields
.field private mFeatures:J

.field private mId:Ljava/lang/String;

.field private mIsAvailable:Z

.field private mLastUpdateTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mIsAvailable:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mFeatures:J

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mLastUpdateTime:J

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFeatures()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mFeatures:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mLastUpdateTime:J

    return-wide v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mIsAvailable:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mIsAvailable:Z

    return-void
.end method

.method public setFeatures(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mFeatures:J

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mLastUpdateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsContactInfo: normalizedNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mIsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mFeatures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mLastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;->mLastUpdateTime:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
