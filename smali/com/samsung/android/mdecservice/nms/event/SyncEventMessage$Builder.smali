.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
.super Ljava/lang/Object;
.source "SyncEventMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCorrelationId:Ljava/lang/String;

.field protected mCorrelationTag:Ljava/lang/String;

.field protected mEventTo:Ljava/lang/String;

.field protected mEventType:Ljava/lang/String;

.field protected mFlag:Ljava/lang/String;

.field protected mIsDownload:Z

.field protected mLastModSeq:Ljava/lang/Long;

.field protected mMaxEntries:I

.field protected mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

.field protected mMinDate:Ljava/lang/String;

.field protected mPayLoadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPayLoadURL:Ljava/lang/String;

.field protected mRequestReason:Ljava/lang/String;

.field protected mResourceUrl:Ljava/lang/String;

.field protected mResourceUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mTid:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mEventTo:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mRequestReason:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mEventType:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mFlag:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mLastModSeq:Ljava/lang/Long;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mResourceUrl:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mResourceUrlList:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mCorrelationId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mCorrelationTag:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMinDate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMaxEntries:I

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mPayLoadURL:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mPayLoadInfos:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mIsDownload:Z

    const-string v0, "eventTypeMessage"

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mEventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;)V

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mCorrelationId:Ljava/lang/String;

    return-object p0
.end method

.method public setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mCorrelationTag:Ljava/lang/String;

    return-object p0
.end method

.method public setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mEventTo:Ljava/lang/String;

    return-object p0
.end method

.method public setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mFlag:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    return-object p0
.end method

.method public setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMinDate:Ljava/lang/String;

    return-object p0
.end method

.method public setPayLoadInfos(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mPayLoadInfos:Ljava/util/List;

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mTid:Ljava/lang/String;

    return-object p0
.end method
