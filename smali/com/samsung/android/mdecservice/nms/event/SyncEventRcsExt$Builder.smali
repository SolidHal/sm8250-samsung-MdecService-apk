.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
.super Ljava/lang/Object;
.source "SyncEventRcsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeviceId:Ljava/lang/String;

.field protected mEventTo:Ljava/lang/String;

.field protected mEventType:Ljava/lang/String;

.field protected mFromCursor:Ljava/lang/String;

.field protected mMinDate:Ljava/lang/String;

.field protected mNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRcsEnabled:Z

.field protected mRelayRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mRelayResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mRelayType:Ljava/lang/String;

.field protected mRequestReason:Ljava/lang/String;

.field protected mSearchTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mEventTo:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRequestReason:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mEventType:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mFromCursor:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mMinDate:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mContactList:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mNumberList:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mDeviceId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mSearchTime:J

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRcsEnabled:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayRequestList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayResponseList:Ljava/util/List;

    const-string v0, "eventTypeRcs"

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mEventType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;)V

    return-object v0
.end method

.method public setContactList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mContactList:Ljava/util/List;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mEventTo:Ljava/lang/String;

    return-object p0
.end method

.method public setFromCursor(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mFromCursor:Ljava/lang/String;

    return-object p0
.end method

.method public setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mMinDate:Ljava/lang/String;

    return-object p0
.end method

.method public setNumberList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mNumberList:Ljava/util/List;

    return-object p0
.end method

.method public setRcsEnabled(Z)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRcsEnabled:Z

    return-object p0
.end method

.method public setRelayRequestList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayRequestList:Ljava/util/List;

    return-object p0
.end method

.method public setRelayResponseList(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayResponseList:Ljava/util/List;

    return-object p0
.end method

.method public setRelayType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayType:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchTime(Ljava/lang/Long;)Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mSearchTime:J

    return-object p0
.end method
