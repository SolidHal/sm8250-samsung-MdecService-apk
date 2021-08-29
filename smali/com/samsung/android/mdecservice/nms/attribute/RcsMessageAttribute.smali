.class public Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;
.super Lcom/samsung/android/mdecservice/nms/attribute/Attribute;
.source "RcsMessageAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;,
        Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_RELAY:Ljava/lang/String; = "is-relay"

.field private static final KEY_ATTR_NAME_CHAT_ID:Ljava/lang/String; = "Chat-ID"

.field private static final KEY_ATTR_NAME_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final KEY_ATTR_NAME_CONT_ID:Ljava/lang/String; = "Contribution-ID"

.field private static final KEY_ATTR_NAME_CONV_ID:Ljava/lang/String; = "Conversation-ID"

.field private static final KEY_ATTR_NAME_CREATOR:Ljava/lang/String; = "Creator"

.field private static final KEY_ATTR_NAME_DATE:Ljava/lang/String; = "Date"

.field private static final KEY_ATTR_NAME_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field private static final KEY_ATTR_NAME_DIRECTION:Ljava/lang/String; = "Direction"

.field private static final KEY_ATTR_NAME_DISPLAYED_COUNTER:Ljava/lang/String; = "Displayed_Counter"

.field public static final KEY_ATTR_NAME_FILE_NAME:Ljava/lang/String; = "File-Name"

.field private static final KEY_ATTR_NAME_FILE_SIZE:Ljava/lang/String; = "File-Size"

.field private static final KEY_ATTR_NAME_FROM:Ljava/lang/String; = "From"

.field private static final KEY_ATTR_NAME_IMDN_MSG_ID:Ljava/lang/String; = "IMDN-Message-ID"

.field private static final KEY_ATTR_NAME_IN_REPLY_CONTR_ID:Ljava/lang/String; = "InReplyTo-Contribution-ID"

.field private static final KEY_ATTR_NAME_IS_GROUP_CHAT:Ljava/lang/String; = "Is-Group"

.field private static final KEY_ATTR_NAME_MESSAGE_CONTEXT:Ljava/lang/String; = "Message-Context"

.field private static final KEY_ATTR_NAME_MESSAGE_TYPE:Ljava/lang/String; = "Message_Type"

.field private static final KEY_ATTR_NAME_NOTI_ENABLE:Ljava/lang/String; = "NotiEnable"

.field private static final KEY_ATTR_NAME_NOTI_STATUS:Ljava/lang/String; = "NotificationStatus"

.field private static final KEY_ATTR_NAME_PARTICIPANTS:Ljava/lang/String; = "Participants"

.field private static final KEY_ATTR_NAME_REMOTE_URI:Ljava/lang/String; = "Remote_Uri"

.field private static final KEY_ATTR_NAME_SD_SIM_INDEX:Ljava/lang/String; = "SdSimIndex"

.field private static final KEY_ATTR_NAME_SIM_INDEX:Ljava/lang/String; = "SimIndex"

.field private static final KEY_ATTR_NAME_SUBJECT:Ljava/lang/String; = "Subject"

.field private static final KEY_ATTR_NAME_TEXT_CONTENT:Ljava/lang/String; = "TextContent"

.field private static final KEY_ATTR_NAME_THREAD_ID:Ljava/lang/String; = "ThreadId"

.field private static final KEY_ATTR_NAME_THREAD_MUTE:Ljava/lang/String; = "ThreadMute"

.field private static final KEY_ATTR_NAME_TO:Ljava/lang/String; = "To"

.field private static final KEY_ATTR_NAME_USER_ALIAS:Ljava/lang/String; = "Sender_Alias"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PAYLOAD_PENDING:Ljava/lang/String; = "pending"

.field public static final PAYLOAD_UNAVAILABLE:Ljava/lang/String; = "unavailable"

.field public static final PAYLOAD_UPLOAD_FINISHED:Ljava/lang/String; = "finished"

.field public static final RCS_BOT_CHAT:Ljava/lang/String; = "bot-chat"

.field public static final RCS_BOT_FILE_TRANSFER:Ljava/lang/String; = "bot-ft"

.field public static final RCS_CHAT:Ljava/lang/String; = "chat-message"

.field public static final RCS_FILE_TRANSFER:Ljava/lang/String; = "ft-message"

.field public static final RCS_STANDALONE:Ljava/lang/String; = "standalone-message"

.field private static final arrayKeys:[Ljava/lang/String;

.field private static final ignoredKeys:[Ljava/lang/String;

.field private static final keys:[Ljava/lang/String;


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
.method static constructor <clinit>()V
    .locals 32

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v1, "is-relay"

    const-string v2, "msg_context"

    const-string v3, "chat_id"

    const-string v4, "correlation_id"

    const-string v5, "correlation_tag"

    const-string v6, "thread_id"

    const-string v7, "sim_slot"

    const-string v8, "direction"

    const-string v9, "local_address"

    const-string v10, "remote_address"

    const-string v11, "date"

    const-string v12, "msg_content"

    const-string v13, "imdn_message_id"

    const-string v14, "contribution_id"

    const-string v15, "status_flag"

    const-string v16, "creator"

    const-string v17, "user_alias"

    const-string v18, "subject"

    const-string v19, "is_group_chat"

    const-string v20, "conversation_id"

    const-string v21, "file_name"

    const-string v22, "file_path"

    const-string v23, "thumbnail_file_path"

    const-string v24, "file_size"

    const-string v25, "content_type"

    const-string v26, "object_id"

    const-string v27, "participants"

    const-string v28, "thumbnail_file_name"

    const-string v29, "thumbnail_file_size"

    const-string v30, "thumbnail_file_content_type"

    const-string v31, "device_id"

    .line 3
    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->keys:[Ljava/lang/String;

    const-string v0, "data_type"

    const-string v1, "request_type"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->ignoredKeys:[Ljava/lang/String;

    const-string v0, "content_uris"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->arrayKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMessageType:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mRemoteUri:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfilePath:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFilePath:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadMute:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiEnable:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mCreator:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileSize:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbContentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    .line 41
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$600(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$700(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$800(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$900(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mRemoteUri:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1600(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1700(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1800(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfilePath:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$1900(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFilePath:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMessageType:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadMute:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2600(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2700(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiEnable:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2800(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mCreator:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$2900(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$3000(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$3100(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    .line 71
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$3200(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileName:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$3300(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileSize:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$3400(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbContentType:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;->access$3500(Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsAttrForUpdate:Z

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->buildAttrMap()V

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

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->buildAttrFromMap(Ljava/util/Map;)V

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

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    move v1, v2

    .line 6
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

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
    const-string v0, "Date"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "Direction"

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "Message-Context"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "Contribution-ID"

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "Conversation-ID"

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "InReplyTo-Contribution-ID"

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "IMDN-Message-ID"

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "Is-Group"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "Message_Type"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMessageType:Ljava/lang/String;

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "Sender_Alias"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "Remote_Uri"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mRemoteUri:Ljava/lang/String;

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v0, "Displayed_Counter"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->buildAttrFromMap2(Ljava/util/Map;)V

    return-void
.end method

.method private buildAttrFromMap2(Ljava/util/Map;)V
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

    const-string v0, "Participants"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    move v1, v2

    .line 3
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "TextContent"

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "File-Name"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "File-Size"

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "Content-Type"

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "Subject"

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "ThreadId"

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "ThreadMute"

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadMute:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "SimIndex"

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "SdSimIndex"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "NotificationStatus"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "NotiEnable"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 37
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "Creator"

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 40
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const-string v0, "DeviceId"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 43
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    .line 44
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const-string v0, "Chat-ID"

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    return-void
.end method

.method private buildAttrMap()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsAttrForUpdate:Z

    const-string v1, "Date"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 6
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v5, "Subject"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 9
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v3, [Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Message-Context"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v3, [Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Direction"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v3, [Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 18
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "From"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v2

    .line 21
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 22
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "To"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v3, [Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 26
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "TextContent"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v3, [Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 29
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Contribution-ID"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v3, [Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 32
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Conversation-ID"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v3, [Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 35
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "InReplyTo-Contribution-ID"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v3, [Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 38
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "IMDN-Message-ID"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    new-array v0, v3, [Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 41
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Is-Group"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    new-array v0, v3, [Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 44
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Sender_Alias"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mRemoteUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    new-array v0, v3, [Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mRemoteUri:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 47
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Remote_Uri"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    new-array v0, v3, [Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 50
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Displayed_Counter"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->buildAttrMap2()V

    :goto_1
    return-void
.end method

.method private buildAttrMap2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v3, "Participants"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 8
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "File-Name"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 11
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Content-Type"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v0, v2, [Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 14
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "File-Size"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v2, [Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 17
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Subject"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMessageType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v2, [Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMessageType:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 20
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Message_Type"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-array v0, v2, [Ljava/lang/String;

    .line 22
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 23
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "ThreadId"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadMute:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v2, [Ljava/lang/String;

    .line 25
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadMute:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 26
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "ThreadMute"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v2, [Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 29
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "SimIndex"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v2, [Ljava/lang/String;

    .line 31
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 32
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "SdSimIndex"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-array v0, v2, [Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 35
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "NotificationStatus"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiEnable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v2, [Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiEnable:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 38
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "NotiEnable"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mCreator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    new-array v0, v2, [Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mCreator:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 41
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "Creator"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    new-array v0, v2, [Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 44
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v4, "DeviceId"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    new-array v0, v2, [Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 47
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    const-string v2, "Chat-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public static getAppMessageContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bot-chat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v1, "ft-message"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "chat-message"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "bot-ft"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    return-object p0

    :cond_2
    const-string p0, "ft_bot"

    return-object p0

    :cond_3
    const-string p0, "im_bot"

    return-object p0

    :cond_4
    const-string p0, "ft"

    return-object p0

    :cond_5
    const-string p0, "im"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5273716c -> :sswitch_3
        -0x4f0e616e -> :sswitch_2
        -0x3abdf8 -> :sswitch_1
        0x7ca1bb9e -> :sswitch_0
    .end sparse-switch
.end method

.method public static getAttrType(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;
    .locals 6

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_NONE:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xcce

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd24

    if-eq v1, v2, :cond_3

    const v2, 0x33d948d7

    if-eq v1, v2, :cond_2

    const v2, 0x3a060550

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "upload_payload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "download_payload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "im"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "ft"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v5

    :cond_5
    :goto_0
    if-eqz v0, :cond_c

    if-eq v0, v5, :cond_a

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_6

    .line 4
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_NONE:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    return-object p0

    :cond_6
    if-eqz p1, :cond_7

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_UPLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_UPLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    :goto_1
    return-object p0

    :cond_8
    if-eqz p1, :cond_9

    .line 6
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    goto :goto_2

    :cond_9
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_DOWNLOAD_PAYLOAD:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    :goto_2
    return-object p0

    :cond_a
    if-eqz p1, :cond_b

    .line 7
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_FT:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    goto :goto_3

    :cond_b
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_FT:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    :goto_3
    return-object p0

    :cond_c
    if-eqz p1, :cond_d

    .line 8
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_RELAY_IM:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    goto :goto_4

    :cond_d
    sget-object p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;->ATTR_IM:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    :goto_4
    return-object p0
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$Builder;-><init>()V

    return-object v0
.end method

.method public static getMessageContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "upload_payload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v1, "download_payload"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "im"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "ft"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    goto :goto_0

    :sswitch_4
    const-string v1, "im_bot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_5
    const-string v1, "ft_bot"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    return-object p0

    :cond_2
    const-string p0, "bot-ft"

    return-object p0

    :cond_3
    const-string p0, "bot-chat"

    return-object p0

    :cond_4
    const-string p0, "ft-message"

    return-object p0

    :cond_5
    const-string p0, "chat-message"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b625d2a -> :sswitch_5
        -0x46a677d4 -> :sswitch_4
        0xcce -> :sswitch_3
        0xd24 -> :sswitch_2
        0x33d948d7 -> :sswitch_1
        0x3a060550 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Participants"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "To"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContributionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayedCounter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getImdnMessageID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToContributionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipants()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    return-object v0
.end method

.method public getSdSimIndex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIndex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbFilePath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0002_GDPR_FIX:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFilePath:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$2;->$SwitchMap$com$samsung$android$mdecservice$nms$attribute$RcsMessageAttribute$AttrType:[I

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfilePath:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFilePath:Ljava/lang/String;

    return-object v0

    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getTo()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    return-object v0
.end method

.method public getTxtContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public isAttrPresentForUpdate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGroupChat()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setMiscRcsAttr(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->keys:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->ignoredKeys:[Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->arrayKeys:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->setMiscAttr(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->LOG_TAG:Ljava/lang/String;

    const-string v0, "setMiscRcsAttr"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsAttrForUpdate:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTo:Ljava/util/List;

    .line 4
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMsgContext:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTxtContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mTxtContent:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContributionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mInReplyToContributionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMessageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mImdnMessageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mIsGroupChat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mParticipants:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfileSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mfilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFileSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThumbFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mUserAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMessageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mMessageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayedCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDisplayedCounter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThreadMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mThreadMute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSimIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSimIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdSimIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mSdSimIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotiEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotiStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mNotiStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCreator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mCreator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttrType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute$AttrType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", miscAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
