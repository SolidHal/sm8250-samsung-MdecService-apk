.class public Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
.super Ljava/lang/Object;
.source "RcsMessageAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

.field private mChatId:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mContributionID:Ljava/lang/String;

.field private mConversationID:Ljava/lang/String;

.field private mCreator:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mDisplayedCounter:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mImdnMessageID:Ljava/lang/String;

.field private mInReplyToContributionID:Ljava/lang/String;

.field private mIsAttrForUpdate:Z

.field private mIsGroupChat:Ljava/lang/String;

.field private mMessageType:Ljava/lang/String;

.field private mMsgContext:Ljava/lang/String;

.field private mNotiEnable:Ljava/lang/String;

.field private mNotiStatus:Ljava/lang/String;

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteUri:Ljava/lang/String;

.field private mSdSimIndex:Ljava/lang/String;

.field private mSimIndex:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mThreadMute:Ljava/lang/String;

.field private mThumbContentType:Ljava/lang/String;

.field private mThumbFileName:Ljava/lang/String;

.field private mThumbFilePath:Ljava/lang/String;

.field private mThumbFileSize:Ljava/lang/String;

.field private mTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTxtContent:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;

.field private mfileName:Ljava/lang/String;

.field private mfilePath:Ljava/lang/String;

.field private mfileSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mIsAttrForUpdate:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mFrom:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mTo:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDate:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDirection:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mTxtContent:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mUserAlias:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mRemoteUri:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDisplayedCounter:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mContributionID:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mConversationID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mMsgContext:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mInReplyToContributionID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mImdnMessageID:Ljava/lang/String;

    const-string v2, "false"

    .line 16
    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mIsGroupChat:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mParticipants:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfileName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfilePath:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFilePath:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfileSize:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mContentType:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSubject:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mMessageType:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThreadId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThreadMute:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSimIndex:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSdSimIndex:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mNotiStatus:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mNotiEnable:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mCreator:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDeviceId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mChatId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFileName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFileSize:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbContentType:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_NONE:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mTo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mIsGroupChat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mRemoteUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDisplayedCounter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mParticipants:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfileSize:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mMessageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThreadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThreadMute:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSdSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mNotiStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mNotiEnable:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mCreator:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFileSize:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbContentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mIsAttrForUpdate:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mTxtContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mContributionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mConversationID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mMsgContext:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mInReplyToContributionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mImdnMessageID:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)V

    return-object v0
.end method

.method public setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mIsAttrForUpdate:Z

    return-object p0
.end method

.method public setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    return-object p0
.end method

.method public setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setContributionID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mContributionID:Ljava/lang/String;

    return-object p0
.end method

.method public setConversationID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mConversationID:Ljava/lang/String;

    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mCreator:Ljava/lang/String;

    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDirection(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayedCounter(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mDisplayedCounter:Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfileName:Ljava/lang/String;

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setFileSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mfileSize:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mFrom:Ljava/lang/String;

    return-object p0
.end method

.method public setImdnMessageID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mImdnMessageID:Ljava/lang/String;

    return-object p0
.end method

.method public setInReplyToContribution(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mInReplyToContributionID:Ljava/lang/String;

    return-object p0
.end method

.method public setIsGroupChat(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mIsGroupChat:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mMessageType:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mMsgContext:Ljava/lang/String;

    return-object p0
.end method

.method public setNotiEnable(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mNotiEnable:Ljava/lang/String;

    return-object p0
.end method

.method public setNotiStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mNotiStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setParticipants(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mParticipants:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public setRemoteUri(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mRemoteUri:Ljava/lang/String;

    return-object p0
.end method

.method public setSdSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSdSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSimIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public setThreadId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThreadId:Ljava/lang/String;

    return-object p0
.end method

.method public setThreadMute(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThreadMute:Ljava/lang/String;

    return-object p0
.end method

.method public setThumbContentType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setThumbFileName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setThumbFilePath(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public setThumbFileSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mThumbFileSize:Ljava/lang/String;

    return-object p0
.end method

.method public setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mTo:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public setTxtContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mTxtContent:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAlias(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method
