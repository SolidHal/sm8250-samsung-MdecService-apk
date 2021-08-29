.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
.super Ljava/lang/Object;
.source "SyncEventCalllog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

.field protected mCallLogAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;",
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

.field protected mId:Ljava/lang/String;

.field protected mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastModSeq:Ljava/lang/Long;

.field protected mMaxEntries:I

.field protected mMinDate:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mEventTo:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mRequestReason:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mEventType:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mFlag:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mFlagList:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mLastModSeq:Ljava/lang/Long;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mResourceUrl:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mResourceUrlList:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCorrelationTag:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCorrelationTagList:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mMinDate:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mMaxEntries:I

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCallLogAttributeList:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mId:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mIdList:Ljava/util/List;

    const-string v0, "eventTypeCall"

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mEventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;)V

    return-object v0
.end method

.method public setCallLogAttribute(Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    return-object p0
.end method

.method public setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCorrelationTag:Ljava/lang/String;

    return-object p0
.end method

.method public setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mEventTo:Ljava/lang/String;

    return-object p0
.end method

.method public setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mFlag:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setLastModSeq(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mLastModSeq:Ljava/lang/Long;

    return-object p0
.end method

.method public setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mMinDate:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method
