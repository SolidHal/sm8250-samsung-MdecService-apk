.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;
.super Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.source "SyncEventMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$ServerRequest;
    }
.end annotation


# instance fields
.field private mCorrelationId:Ljava/lang/String;

.field private mIsDownload:Z

.field private mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

.field private mPayLoadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPayLoadURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;)V

    .line 2
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mCorrelationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mCorrelationId:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mPayLoadURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadURL:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mPayLoadInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadInfos:Ljava/util/List;

    .line 5
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 6
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mTid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    .line 7
    iget-boolean p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mIsDownload:Z

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mIsDownload:Z

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    return-object v0
.end method

.method public getPayLoadInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadInfos:Ljava/util/List;

    return-object v0
.end method

.method public isDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mIsDownload:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadURL:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPayLoadURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPayLoadInfos Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mPayLoadInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Attr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncEventMessage [mEventTo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestReason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mEventType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mResourceUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mResourceUrlList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCorrelationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCorrelationTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMinDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
