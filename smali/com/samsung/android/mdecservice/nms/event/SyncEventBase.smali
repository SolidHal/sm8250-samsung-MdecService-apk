.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.super Ljava/lang/Object;
.source "SyncEventBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$StatusFlag;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$EventType;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$DbRequest;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$ServerRequest;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$EventTo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

.field protected mLastModSeq:Ljava/lang/Long;

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

.field protected mTid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mLastModSeq:Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mEventTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mRequestReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mEventType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mFlag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mFlagList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlagList:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mLastModSeq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mLastModSeq:Ljava/lang/Long;

    .line 45
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mResourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mResourceUrlList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    .line 47
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCorrelationTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCorrelationTagList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTagList:Ljava/util/List;

    .line 49
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mMinDate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mEventTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mRequestReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mEventType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mResourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    .line 59
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mMinDate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mEventTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mRequestReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mEventType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mFlag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mLastModSeq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mLastModSeq:Ljava/lang/Long;

    .line 18
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mResourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mResourceUrlList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    .line 20
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mCorrelationTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    .line 21
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->mMinDate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mEventTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mRequestReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 53
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->mEventType:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mEventTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRequestReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mEventType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mFlag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mLastModSeq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mLastModSeq:Ljava/lang/Long;

    .line 28
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mResourceUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mMinDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mResourceUrlList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    .line 32
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mFlagList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlagList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mEventTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRequestReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mEventType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    .line 37
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mMinDate:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCorrelationTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationTagList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTagList:Ljava/util/List;

    return-object v0
.end method

.method public getEventTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlagList:Ljava/util/List;

    return-object v0
.end method

.method public getLastModSeq()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mLastModSeq:Ljava/lang/Long;

    return-object v0
.end method

.method public getMinDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrlList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncEvent [mEventTo="

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

    const-string v1, ", mFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceUrlList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCorrelationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
