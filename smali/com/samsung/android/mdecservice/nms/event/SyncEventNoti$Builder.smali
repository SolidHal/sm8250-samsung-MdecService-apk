.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
.super Ljava/lang/Object;
.source "SyncEventNoti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mAction:Ljava/lang/String;

.field protected mDdmMsg:[B

.field protected mDdmType:Ljava/lang/String;

.field protected mEventTo:Ljava/lang/String;

.field protected mEventType:Ljava/lang/String;

.field protected mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

.field protected mMsgAppSetting:Ljava/lang/String;

.field protected mMsgDefaultSetting:Z

.field protected mNotiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestReason:Ljava/lang/String;

.field protected mResourceUrl:Ljava/lang/String;

.field protected mTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mTid:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mEventTo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mRequestReason:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mEventType:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mAction:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mNotiList:Ljava/util/List;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMsgDefaultSetting:Z

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMsgAppSetting:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mDdmMsg:[B

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mDdmType:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mResourceUrl:Ljava/lang/String;

    const-string v0, "eventTypeMessage"

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mEventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setDdmMsg([B)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mDdmMsg:[B

    return-object p0
.end method

.method public setDdmType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mDdmType:Ljava/lang/String;

    return-object p0
.end method

.method public setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mEventTo:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsNotiInfo(Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMmsNotiInfo:Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    return-object p0
.end method

.method public setMsgAppSetting(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMsgAppSetting:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgDefaultSetting(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mMsgDefaultSetting:Z

    return-object p0
.end method

.method public setNotiList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mNotiList:Ljava/util/List;

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mTid:Ljava/lang/String;

    return-object p0
.end method
