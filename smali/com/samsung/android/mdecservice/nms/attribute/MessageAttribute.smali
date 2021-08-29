.class public Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
.super Lcom/samsung/android/mdecservice/nms/attribute/Attribute;
.source "MessageAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    }
.end annotation


# static fields
.field public static final ATTR_MSG_CONTEXT_CB:Ljava/lang/String; = "cb-message"

.field public static final ATTR_MSG_CONTEXT_CMAS:Ljava/lang/String; = "cmas-message"

.field public static final ATTR_MSG_CONTEXT_MMS_NOTI:Ljava/lang/String; = "mmsnoti-message"

.field public static final ATTR_MSG_CONTEXT_MULTI:Ljava/lang/String; = "multimedia-message"

.field public static final ATTR_MSG_CONTEXT_PAGER:Ljava/lang/String; = "pager-message"

.field public static final ATTR_MSG_CONTEXT_WAP:Ljava/lang/String; = "wap-message"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ATTR_NAME_BCC:Ljava/lang/String; = "Bcc"

.field private static final KEY_ATTR_NAME_BOX_TYPE:Ljava/lang/String; = "Box-Type"

.field private static final KEY_ATTR_NAME_CC:Ljava/lang/String; = "Cc"

.field private static final KEY_ATTR_NAME_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final KEY_ATTR_NAME_CONT_ID:Ljava/lang/String; = "Contribution-ID"

.field private static final KEY_ATTR_NAME_CONV_ID:Ljava/lang/String; = "Conversation-ID"

.field private static final KEY_ATTR_NAME_DATE:Ljava/lang/String; = "Date"

.field private static final KEY_ATTR_NAME_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field private static final KEY_ATTR_NAME_DIRECTION:Ljava/lang/String; = "Direction"

.field private static final KEY_ATTR_NAME_EXPIRES:Ljava/lang/String; = "Expires"

.field private static final KEY_ATTR_NAME_FALLBACK_FAILED:Ljava/lang/String; = "Fallback-Failed"

.field private static final KEY_ATTR_NAME_FROM:Ljava/lang/String; = "From"

.field private static final KEY_ATTR_NAME_MESSAGE_ID:Ljava/lang/String; = "Message-ID"

.field private static final KEY_ATTR_NAME_MMS_CMC_PROP:Ljava/lang/String; = "Mms-Cmc-Prop"

.field private static final KEY_ATTR_NAME_MMS_CONTENT_LOCATION:Ljava/lang/String; = "Mms-Content-Location"

.field private static final KEY_ATTR_NAME_MMS_EXPIRY_TIME_STAMP:Ljava/lang/String; = "Mms-Expiry-Time"

.field private static final KEY_ATTR_NAME_MMS_SIZE:Ljava/lang/String; = "X-Mms-Size"

.field private static final KEY_ATTR_NAME_MSG_CONTENT:Ljava/lang/String; = "TextContent"

.field private static final KEY_ATTR_NAME_MSG_TYPE:Ljava/lang/String; = "Message-Context"

.field private static final KEY_ATTR_NAME_NOTI_STATUS:Ljava/lang/String; = "NotificationStatus"

.field private static final KEY_ATTR_NAME_OWNNUM:Ljava/lang/String; = "OwnNum"

.field private static final KEY_ATTR_NAME_PROTOCOL:Ljava/lang/String; = "Protocol"

.field private static final KEY_ATTR_NAME_READ_MSG:Ljava/lang/String; = "Read-Msg"

.field private static final KEY_ATTR_NAME_RELAY_CREATOR:Ljava/lang/String; = "Creator"

.field private static final KEY_ATTR_NAME_SD_SIM_INDEX:Ljava/lang/String; = "SdSimIndex"

.field private static final KEY_ATTR_NAME_SERVICE_CATEGORY:Ljava/lang/String; = "ServiceCategory"

.field private static final KEY_ATTR_NAME_SIM_INDEX:Ljava/lang/String; = "SimIndex"

.field private static final KEY_ATTR_NAME_SUBJECT:Ljava/lang/String; = "Subject"

.field private static final KEY_ATTR_NAME_THREAD_ID:Ljava/lang/String; = "ThreadId"

.field private static final KEY_ATTR_NAME_THREAD_MUTE:Ljava/lang/String; = "ThreadMute"

.field private static final KEY_ATTR_NAME_TO:Ljava/lang/String; = "To"

.field private static final LOG_TAG:Ljava/lang/String; = "MsgAttr"

.field private static final arrayKeys:[Ljava/lang/String;

.field private static final ignoredKeys:[Ljava/lang/String;

.field private static final keys:[Ljava/lang/String;


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

.field private mIsRelay:Z

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
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "object_id"

    const-string v1, "correlation_tag"

    const-string v2, "correlation_id"

    const-string v3, "sim_slot"

    const-string v4, "creator"

    const-string v5, "idList"

    const-string v6, "conversaionIdList"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->keys:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->ignoredKeys:[Ljava/lang/String;

    const-string v0, "content_uris"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->arrayKeys:[Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mOwnNum:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCreator:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDeviceId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContributionID:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mConversationID:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadMute:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSimIndex:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mProtocol:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mServiceCategory:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mExpires:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsExpiryTimeStamp:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsContentLocation:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsCmcProp:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFallbackFailed:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$200(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$300(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$400(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mOwnNum:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$500(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$600(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$700(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$800(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$900(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCreator:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDeviceId:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContributionID:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1200(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mConversationID:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1300(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1400(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1500(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadId:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1600(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadMute:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1700(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSimIndex:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1800(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$1900(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mProtocol:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mServiceCategory:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2200(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mExpires:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2300(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mIsAttrForUpdate:Z

    .line 60
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2400(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2500(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsExpiryTimeStamp:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2600(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsContentLocation:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2700(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsCmcProp:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2800(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFallbackFailed:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$2900(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$3000(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->access$3100(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->buildAttrMap()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->buildAttrFromMap(Ljava/util/Map;)V

    return-void
.end method

.method private buildAttrFromMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "From"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "To"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    move v1, v2

    .line 6
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Cc"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    move v1, v2

    .line 11
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "Bcc"

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    move v1, v2

    .line 16
    :goto_2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 17
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "OwnNum"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mOwnNum:Ljava/lang/String;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "Date"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "Direction"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "Message-Context"

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "Contribution-ID"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContributionID:Ljava/lang/String;

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "Conversation-ID"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mConversationID:Ljava/lang/String;

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "ThreadId"

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadId:Ljava/lang/String;

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_d
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->buildAttrFromMap2(Ljava/util/Map;)V

    return-void
.end method

.method private buildAttrFromMap2(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ThreadMute"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadMute:Ljava/lang/String;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "SimIndex"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSimIndex:Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "SdSimIndex"

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "NotificationStatus"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "Protocol"

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mProtocol:Ljava/lang/String;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "ServiceCategory"

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mServiceCategory:Ljava/lang/String;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "Expires"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mExpires:Ljava/lang/String;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "X-Mms-Size"

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "MsgAttr"

    const-string v3, "build Mms Attribute"

    .line 23
    invoke-static {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Subject"

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string v0, "TextContent"

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_0
    const-string v0, "Creator"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCreator:Ljava/lang/String;

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "DeviceId"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDeviceId:Ljava/lang/String;

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "Message-ID"

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "Mms-Expiry-Time"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsExpiryTimeStamp:Ljava/lang/String;

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "Mms-Content-Location"

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsContentLocation:Ljava/lang/String;

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v0, "Mms-Cmc-Prop"

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 48
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsCmcProp:Ljava/lang/String;

    .line 49
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v0, "Fallback-Failed"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFallbackFailed:Ljava/lang/String;

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v0, "Read-Msg"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v0, "Box-Type"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v0, "Content-Type"

    .line 59
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 60
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    .line 61
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_12
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_13
    return-void
.end method

.method private buildAttrMap()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mIsAttrForUpdate:Z

    const-string v1, "To"

    const-string v2, "TextContent"

    const-string v3, "Content-Type"

    const-string v4, "Read-Msg"

    const-string v5, "SdSimIndex"

    const-string v6, "Box-Type"

    const-string v7, "Message-ID"

    const-string v8, "Date"

    const-string v9, "From"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    new-array v0, v11, [Ljava/lang/String;

    .line 2
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v10

    .line 3
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v12, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 4
    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v10

    .line 5
    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 6
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    .line 7
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 8
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    .line 9
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 10
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    .line 11
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 12
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    .line 13
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v10

    .line 15
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    new-array v0, v11, [Ljava/lang/String;

    .line 23
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v10

    .line 24
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v13, "Direction"

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 25
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v10

    .line 26
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v12, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v9, v10

    .line 28
    :goto_1
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_2

    .line 29
    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 30
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v10

    .line 33
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 34
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v9, "Cc"

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v10

    .line 38
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 39
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 40
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v9, "Bcc"

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mOwnNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-array v0, v11, [Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mOwnNum:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 43
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v9, "OwnNum"

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-array v0, v11, [Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 45
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-array v0, v11, [Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 48
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-array v0, v11, [Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContributionID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 50
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Contribution-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mConversationID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 52
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Conversation-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 54
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "ThreadId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadMute:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 56
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "ThreadMute"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSimIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 58
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "SimIndex"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 60
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mNotiStatus:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 62
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "NotificationStatus"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mProtocol:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 64
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Protocol"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mServiceCategory:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 66
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "ServiceCategory"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mExpires:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 68
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Expires"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 70
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Message-Context"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "MsgAttr"

    const-string v1, "Build mms attribute"

    .line 72
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v11, [Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 74
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "X-Mms-Size"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v11, [Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 77
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Subject"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    new-array v0, v11, [Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCreator:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 79
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Creator"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 81
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "DeviceId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 83
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsExpiryTimeStamp:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 85
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Mms-Expiry-Time"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsContentLocation:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 87
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Mms-Content-Location"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsCmcProp:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 89
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Mms-Cmc-Prop"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFallbackFailed:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "false"

    :cond_a
    aput-object v1, v0, v10

    .line 91
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Fallback-Failed"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 93
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 95
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v11, [Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 97
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBccList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBccList:Ljava/util/List;

    return-object v0
.end method

.method public getBoxType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    return-object v0
.end method

.method public getCcList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCcList:Ljava/util/List;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackFailed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFallbackFailed:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v1, "File-Name"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsCmcProp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsCmcProp:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsContentLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsContentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsExpiryTimeStamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsExpiryTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    return-object v0
.end method

.method public getReadMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSdSimIndex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getToList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    return-object v0
.end method

.method public getTxtContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    return-object v0
.end method

.method public isRelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mIsRelay:Z

    return v0
.end method

.method public isResent()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v1, "resend_flag"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public setMiscMsgAttr(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->keys:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->ignoredKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->setMiscAttr(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setRelay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mIsRelay:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mIsAttrForUpdate:Z

    const-string v1, "]"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageAttr [mDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMessageID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMessageID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    const-string v2, ", mNotiStatus="

    const-string v3, ", mSdSimIndex="

    const-string v4, ", mSimIndex="

    const-string v5, ", mThreadMute="

    const-string v6, ", mThreadId="

    const-string v7, ", mConversationID="

    const-string v8, ", mContributionID="

    const-string v9, ", mTxtContent="

    const-string v10, ", mMsgContext="

    const-string v11, ", mDirection="

    const-string v12, ", mDate="

    const-string v13, ", mTo="

    const-string v14, "MessageAttr [mFrom="

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v14}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    .line 5
    invoke-static {v13}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", mOwnNum="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mOwnNum:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 6
    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 7
    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContributionID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mConversationID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mMmsSize="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsSize:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mSubject="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSubject:Ljava/lang/String;

    .line 8
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadMute:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSimIndex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mNotiStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCreator="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mCreator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMmsCmcProp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsCmcProp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFallbackFailed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFallbackFailed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mReadMsg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mReadMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mBoxType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mBoxType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mContentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMmsExpiryTimeStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsExpiryTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMmsContentLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMmsContentLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v14}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mToList:Ljava/util/List;

    .line 10
    invoke-static {v13}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mDirection:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 11
    invoke-static {v10}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 12
    invoke-static {v9}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mContributionID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mConversationID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mThreadMute:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSimIndex:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mSdSimIndex:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mNotiStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mProtocol="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mServiceCategory="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mServiceCategory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mExpires="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->mExpires:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
