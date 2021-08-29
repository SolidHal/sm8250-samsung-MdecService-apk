.class public Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
.super Ljava/lang/Object;
.source "MessageAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBoxType:Ljava/lang/String;

.field private mCcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentType:Ljava/lang/String;

.field private mContributionID:Ljava/lang/String;

.field private mConversationID:Ljava/lang/String;

.field private mCreator:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mExpires:Ljava/lang/String;

.field private mFallbackFailed:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mIsAttrForUpdate:Z

.field private mMessageID:Ljava/lang/String;

.field private mMmsCmcProp:Ljava/lang/String;

.field private mMmsContentLocation:Ljava/lang/String;

.field private mMmsExpiryTimeStamp:Ljava/lang/String;

.field private mMmsSize:Ljava/lang/String;

.field private mMsgContext:Ljava/lang/String;

.field private mNotiStatus:Ljava/lang/String;

.field private mOwnNum:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mReadMsg:Ljava/lang/String;

.field private mSdSimIndex:Ljava/lang/String;

.field private mServiceCategory:Ljava/lang/String;

.field private mSimIndex:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mThreadMute:Ljava/lang/String;

.field private mToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTxtContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mIsAttrForUpdate:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mFrom:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mToList:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mBccList:Ljava/util/List;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mCcList:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mOwnNum:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDate:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDirection:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMsgContext:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mTxtContent:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mCreator:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDeviceId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mContributionID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mConversationID:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsSize:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSubject:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mThreadId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mThreadMute:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSimIndex:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSdSimIndex:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mNotiStatus:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mProtocol:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mServiceCategory:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mExpires:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMessageID:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsExpiryTimeStamp:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsContentLocation:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsCmcProp:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mFallbackFailed:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mReadMsg:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mBoxType:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mContentType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mToList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mContributionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mConversationID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsSize:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mThreadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mThreadMute:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSdSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mNotiStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mBccList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mServiceCategory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mExpires:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mIsAttrForUpdate:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMessageID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsExpiryTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsContentLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsCmcProp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mFallbackFailed:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mReadMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mCcList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mBoxType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mOwnNum:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMsgContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mTxtContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mCreator:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)V

    return-object v0
.end method

.method public setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mIsAttrForUpdate:Z

    return-object p0
.end method

.method public setBcc(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mBccList:Ljava/util/List;

    return-object p0
.end method

.method public setBoxType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mBoxType:Ljava/lang/String;

    return-object p0
.end method

.method public setCc(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mCcList:Ljava/util/List;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setContributionID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mContributionID:Ljava/lang/String;

    return-object p0
.end method

.method public setConversationID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mConversationID:Ljava/lang/String;

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mCreator:Ljava/lang/String;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDirection(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method public setExpires(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mExpires:Ljava/lang/String;

    return-object p0
.end method

.method public setFallbackFailed(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mFallbackFailed:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMessageID:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsCmcProp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsCmcProp:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsContentLocation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsContentLocation:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsExpiryTimeStamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsExpiryTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method public setMmsSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMmsSize:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mMsgContext:Ljava/lang/String;

    return-object p0
.end method

.method public setNotiStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mNotiStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setOwnNum(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mOwnNum:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public setReadMsg(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mReadMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setSdSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSdSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceCategory(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mServiceCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public setThreadId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mThreadId:Ljava/lang/String;

    return-object p0
.end method

.method public setThreadMute(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mThreadMute:Ljava/lang/String;

    return-object p0
.end method

.method public setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mToList:Ljava/util/List;

    return-object p0
.end method

.method public setTxtContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->mTxtContent:Ljava/lang/String;

    return-object p0
.end method
