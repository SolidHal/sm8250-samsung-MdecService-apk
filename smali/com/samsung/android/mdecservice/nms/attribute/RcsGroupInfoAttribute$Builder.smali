.class public Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
.super Ljava/lang/Object;
.source "RcsGroupInfoAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mSubject:Ljava/lang/String;

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupChatId:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatIdReference:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mMystatus:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupType:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mTimestamp:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mStTimestamp:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupParticipants:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mLeft:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRemoved:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mJoined:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mAdded:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mDeclined:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mObjectId:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatId:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mResourceUrl:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOperation:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpContacts:Ljava/util/List;

    .line 20
    iput-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupChatId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatIdReference:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mJoined:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mAdded:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mDeclined:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mObjectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOperation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpContacts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mMystatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mStTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupParticipants:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mLeft:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRemoved:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$1;)V

    return-object v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelayOpTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpTag:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mResourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrType(Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mAttrType:Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$GroupAttrType;

    return-object p0
.end method

.method public setChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setChatIdReference(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mChatIdReference:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupChatId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupChatId:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupType:Ljava/lang/String;

    return-object p0
.end method

.method public setMystatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Joined"

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mMystatus:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mObjectId:Ljava/lang/String;

    return-object p0
.end method

.method public setParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    .line 3
    new-instance v2, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getYourOwn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "Declined"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "Added"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "Left"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "Removed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "Joined"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p1, v5

    :cond_2
    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    .line 8
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mGroupParticipants:Ljava/util/List;

    goto :goto_2

    .line 9
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mDeclined:Ljava/util/List;

    goto :goto_2

    .line 10
    :cond_4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mAdded:Ljava/util/List;

    goto :goto_2

    .line 11
    :cond_5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRemoved:Ljava/util/List;

    goto :goto_2

    .line 12
    :cond_6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mJoined:Ljava/util/List;

    goto :goto_2

    .line 13
    :cond_7
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mLeft:Ljava/util/List;

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b6bcc97 -> :sswitch_4
        -0x5bb34fc0 -> :sswitch_3
        0x241427 -> :sswitch_2
        0x3c2f0e0 -> :sswitch_1
        0x25b8604e -> :sswitch_0
    .end sparse-switch
.end method

.method public setRelayOpContacts(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpContacts:Ljava/util/List;

    return-object p0
.end method

.method public setRelayOpTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOpTag:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setRelayOperation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mRelayOperation:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setStTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mStTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute$Builder;->mTimestamp:Ljava/lang/String;

    return-object p0
.end method
