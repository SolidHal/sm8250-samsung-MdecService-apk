.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
.super Ljava/lang/Object;
.source "SyncEventRcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCorrelationId:Ljava/lang/String;

.field protected mCorrelationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCorrelationTag:Ljava/lang/String;

.field protected mCorrelationTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDdmMsgObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventTo:Ljava/lang/String;

.field protected mEventType:Ljava/lang/String;

.field protected mFlag:Ljava/lang/String;

.field protected mFlagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRelay:Z

.field protected mLastModSeq:Ljava/lang/Long;

.field protected mMinDate:Ljava/lang/String;

.field protected mObjectId:Ljava/lang/String;

.field protected mPayloadUploadStatus:Ljava/lang/String;

.field protected mPayloadUrl:Ljava/lang/String;

.field protected mRcsGroupInfoAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

.field protected mRcsMessageAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;"
        }
    .end annotation
.end field

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

.field protected mThumbnailUrl:Ljava/lang/String;

.field protected mTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mIsRelay:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mTid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mEventTo:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRequestReason:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mEventType:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mFlag:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mFlagList:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mLastModSeq:Ljava/lang/Long;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mResourceUrl:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mThumbnailUrl:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mPayloadUrl:Ljava/lang/String;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mResourceUrlList:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationTag:Ljava/lang/String;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationTagList:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mObjectId:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationIdList:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mPayloadUploadStatus:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsMessageAttributeList:Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsGroupInfoAttributeList:Ljava/util/List;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mDdmMsgObjectList:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mMinDate:Ljava/lang/String;

    const-string v0, "eventTypeRcs"

    .line 25
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mEventType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mIsRelay:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;)V

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationId:Ljava/lang/String;

    return-object p0
.end method

.method public setCorrelationIdList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationIdList:Ljava/util/List;

    return-object p0
.end method

.method public setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationTag:Ljava/lang/String;

    return-object p0
.end method

.method public setCorrelationTagList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationTagList:Ljava/util/List;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mMinDate:Ljava/lang/String;

    return-object p0
.end method

.method public setDdmMsgObjectsList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mDdmMsgObjectList:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mEventTo:Ljava/lang/String;

    return-object p0
.end method

.method public setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mFlag:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setFlagList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mFlagList:Ljava/util/List;

    return-object p0
.end method

.method public setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mLastModSeq:Ljava/lang/Long;

    return-object p0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mObjectId:Ljava/lang/String;

    return-object p0
.end method

.method public setPayloadUploadStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mPayloadUploadStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setPayloadUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mPayloadUrl:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setRcsGroupInfoAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsGroupInfoAttributeList:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public setRcsMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    :cond_0
    return-object p0
.end method

.method public setRcsMessageAttributeList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsMessageAttributeList:Ljava/util/List;

    return-object p0
.end method

.method public setRelay(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mIsRelay:Z

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mResourceUrl:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setResourceUrlList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mResourceUrlList:Ljava/util/List;

    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mThumbnailUrl:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mTid:Ljava/lang/String;

    return-object p0
.end method
