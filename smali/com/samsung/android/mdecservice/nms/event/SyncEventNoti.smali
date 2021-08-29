.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;
.super Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.source "SyncEventNoti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$NotiType;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Action;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$PushRequest;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$ServerRequest;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SyncEventNoti"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mDdmMsg:[B

.field private mDdmType:Ljava/lang/String;

.field private mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

.field private mMsgAppSetting:Ljava/lang/String;

.field private mMsgDefaultSetting:Z

.field private mNotiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceUrl:Ljava/lang/String;

.field private mTid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;)V

    .line 2
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mAction:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mNotiList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mNotiList:Ljava/util/List;

    .line 4
    iget-boolean v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMsgDefaultSetting:Z

    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMsgDefaultSetting:Z

    .line 5
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMsgAppSetting:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMsgAppSetting:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    .line 7
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mDdmType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mDdmType:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mDdmMsg:[B

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mDdmMsg:[B

    .line 9
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mResourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mResourceUrl:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mTid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mTid:Ljava/lang/String;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "build : mAction ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNotiList ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mNotiList:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mResourceUrl ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mTid ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mTid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncEventNoti"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDdmMsg()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mDdmMsg:[B

    return-object v0
.end method

.method public getDdmType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mDdmType:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsNotiInfo()Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    return-object v0
.end method

.method public getMsgAppSetting()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMsgAppSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgDefaultSetting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMsgDefaultSetting:Z

    return v0
.end method

.method public getNotiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mNotiList:Ljava/util/List;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mTid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncEventNoti [mEventTo="

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

    const-string v1, ", mTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgDefaultSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mMsgDefaultSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDdmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mDdmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
