.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;
.super Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.source "SyncEventCif.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$ServerRequest;
    }
.end annotation


# instance fields
.field private mBotServiceId:Ljava/lang/String;

.field private mCif:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->access$000(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mBotServiceId:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->access$100(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mTimeStamp:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->access$200(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mCif:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->access$300(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBotServiceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mBotServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mCif:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncEventCif [mEventTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBotServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mBotServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;->mCif:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
