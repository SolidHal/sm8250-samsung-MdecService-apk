.class public Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
.super Lcom/samsung/android/mdecservice/nms/attribute/Attribute;
.source "RcsGroupInfoAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;,
        Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;
    }
.end annotation


# static fields
.field public static final KEY_ATTR_NAME_ADDED:Ljava/lang/String; = "Added"

.field public static final KEY_ATTR_NAME_CHAT_ID:Ljava/lang/String; = "chatId"

.field public static final KEY_ATTR_NAME_CHAT_ID_REFERENCE:Ljava/lang/String; = "chatIdreference"

.field public static final KEY_ATTR_NAME_DECLINED:Ljava/lang/String; = "Declined"

.field public static final KEY_ATTR_NAME_GROUP_CHAT_ID:Ljava/lang/String; = "groupChatId"

.field public static final KEY_ATTR_NAME_GROUP_TYPE:Ljava/lang/String; = "groupType"

.field public static final KEY_ATTR_NAME_JOINED:Ljava/lang/String; = "Joined"

.field public static final KEY_ATTR_NAME_LEFT:Ljava/lang/String; = "Left"

.field public static final KEY_ATTR_NAME_MY_STATUS:Ljava/lang/String; = "mystatus"

.field public static final KEY_ATTR_NAME_PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final KEY_ATTR_NAME_RELAY_OPERATION:Ljava/lang/String; = "operation"

.field public static final KEY_ATTR_NAME_RELAY_OP_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final KEY_ATTR_NAME_RELAY_OP_TAG:Ljava/lang/String; = "correlationTag"

.field public static final KEY_ATTR_NAME_REMOVED:Ljava/lang/String; = "Removed"

.field public static final KEY_ATTR_NAME_RES_URL:Ljava/lang/String; = "resourceURL"

.field public static final KEY_ATTR_NAME_ST_TIMESTAMP:Ljava/lang/String; = "st-timestamp"

.field public static final KEY_ATTR_NAME_SUBJECT:Ljava/lang/String; = "subject"

.field public static final KEY_ATTR_NAME_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final OBJECT_TYPE:Ljava/lang/String; = "GROUPINFO"

.field private static final ignoredKeys:[Ljava/lang/String;

.field private static final keys:[Ljava/lang/String;


# instance fields
.field private mAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field

.field private mAttrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

.field private mChatId:Ljava/lang/String;

.field private mChatIdReference:Ljava/lang/String;

.field private mDeclined:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupChatId:Ljava/lang/String;

.field private mGroupParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupType:Ljava/lang/String;

.field private mJoined:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field

.field private mLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field

.field private mMystatus:Ljava/lang/String;

.field private mObjectId:Ljava/lang/String;

.field private mRelayOpContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayOpTag:Ljava/lang/String;

.field private mRelayOperation:Ljava/lang/String;

.field private mRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceUrl:Ljava/lang/String;

.field private mStTimestamp:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "msg_context"

    const-string v1, "chat_id"

    const-string v2, "group_chat_id"

    const-string v3, "participants"

    const-string v4, "chat_id_reference"

    const-string v5, "my_status"

    const-string v6, "group_type"

    const-string v7, "timestamp"

    const-string v8, "participants"

    const-string v9, "subject"

    const-string v10, "icon"

    const-string v11, "op_type"

    const-string v12, "op_contacts"

    const-string v13, "correlation_tag"

    const-string v14, "joined_contacts"

    const-string v15, "removed_contacts"

    const-string v16, "left_contacts"

    const-string v17, "added_contacts"

    const-string v18, "declined_contacts"

    .line 1
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->keys:[Ljava/lang/String;

    const-string v0, "data_type"

    const-string v1, "request_type"

    const-string v2, "is-relay"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->ignoredKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mStTimestamp:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    .line 10
    const-class v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    .line 11
    const-class v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    .line 12
    const-class v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    .line 13
    const-class v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    .line 14
    const-class v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    .line 15
    const-class v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mObjectId:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mResourceUrl:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    .line 20
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$000(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$100(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$200(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$300(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$400(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$500(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mStTimestamp:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$600(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$700(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    .line 31
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$800(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$900(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1000(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    .line 34
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1100(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    .line 35
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1200(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    .line 36
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1300(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mObjectId:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1400(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mResourceUrl:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1500(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1600(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1700(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    .line 41
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1800(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->access$1900(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->buildAttrMap()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)V

    return-void
.end method

.method private buildAttrMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "subject"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    const-string v2, "groupChatId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    const-string v2, "chatId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    const-string v2, "chatIdreference"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    const-string v2, "mystatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    const-string v2, "groupType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mStTimestamp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mStTimestamp:Ljava/lang/String;

    const-string v2, "st-timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    const-string v2, "participants"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    const-string v2, "Left"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 23
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    const-string v2, "Joined"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    const-string v2, "Removed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    const-string v2, "Added"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 29
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    const-string v2, "Declined"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mResourceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 31
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mResourceUrl:Ljava/lang/String;

    const-string v2, "resourceURL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    const-string v2, "operation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 35
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    const-string v2, "contacts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    const-string v2, "correlationTag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public static checkChatIdNeededForRelay(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "invite"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "remove"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "exit"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkContactsNeededForRelay(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "invite"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "remove"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "create"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkSubjectNeededForRelay(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "create"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static convertJsonStrToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 4
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    .line 6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yourown"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static convertListToJsonStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "name"

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 6
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "address"

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "yourown"

    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getYourOwn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v1

    .line 10
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertToContactStr(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "{"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    const-string v2, "{name: "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "yourown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getYourOwn()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRcsBuilder()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createGroupInfoBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    const-string v2, "group_chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    const-string v2, "chat_id_reference"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "chat_id"

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "subject"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "msg_context"

    const-string v2, "group_info"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "participants"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    const-class v3, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    const-string v4, "my_status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    const-string v4, "group_type"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    const-string v2, "correlation_tag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    return-object v0
.end method

.method public createRelayDataBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "chat_id"

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "subject"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "op_contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    const-string v2, "group_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    const-string v2, "op_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    const-string v2, "correlation_tag"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg_context"

    const-string v2, "group_info"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->getMiscAttributesBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public createStateMsgBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "msg_context"

    const-string v2, "state_msg"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "joined_contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "left_contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "removed_contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "added_contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "declined_contacts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    return-object v0
.end method

.method public getAttrMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrMap:Ljava/util/Map;

    return-object v0
.end method

.method public getAttrType()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getChatIdReference()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    return-object v0
.end method

.method public getMystatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayOpTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayOperation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    return-object v0
.end method

.method public getStTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mStTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    return-void
.end method

.method public setMiscRcsAttr(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->keys:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->ignoredKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->setMiscAttr(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mObjectId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsGroupInfoAttr [mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mStTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMystatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mMystatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatIdReference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatIdReference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mGroupParticipants:Ljava/util/List;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeft ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mLeft:Ljava/util/List;

    .line 3
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoved ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRemoved:Ljava/util/List;

    .line 4
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mJoined ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mJoined:Ljava/util/List;

    .line 5
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAdded ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAdded:Ljava/util/List;

    .line 6
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeclined ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mDeclined:Ljava/util/List;

    .line 7
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToParticipantStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRelayOperation ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRelayOpContacts ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpContacts:Ljava/util/List;

    .line 8
    invoke-direct {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->convertToContactStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRelayOpTag ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mRelayOpTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceUrl ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mObjectId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttrType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMisc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 9
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
