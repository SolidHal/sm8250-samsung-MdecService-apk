.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
.super Ljava/lang/Object;
.source "SyncEventCif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBotServiceId:Ljava/lang/String;

.field private mCif:Ljava/lang/String;

.field protected mEventTo:Ljava/lang/String;

.field protected mEventType:Ljava/lang/String;

.field protected mMinDate:Ljava/lang/String;

.field protected mRequestReason:Ljava/lang/String;

.field protected mResourceUrl:Ljava/lang/String;

.field private mTid:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mEventTo:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mRequestReason:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mEventType:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mResourceUrl:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mMinDate:Ljava/lang/String;

    const-string v0, "eventTypeRcs"

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mEventType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mBotServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mCif:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mTid:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;)V

    return-object v0
.end method

.method public setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mBotServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setCif(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mCif:Ljava/lang/String;

    return-object p0
.end method

.method public setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mEventTo:Ljava/lang/String;

    return-object p0
.end method

.method public setMinDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mMinDate:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mRequestReason:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mTid:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeStamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCif$Builder;->mTimeStamp:Ljava/lang/String;

    return-object p0
.end method
