.class public final Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;
.super Ljava/lang/Object;
.source "DbHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DbHelper"


# instance fields
.field private final chat_bot_info_keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final rcs_app_keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rcs_groups_app_keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rcs_groups_nms_keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "msg_context"

    const-string v2, "file_path"

    const-string v3, "date"

    const-string v4, "correlation_id"

    const-string v5, "correlation_tag"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->rcs_app_keys:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "group_chat_id"

    const-string v2, "chat_id"

    const-string v4, "timestamp"

    const-string v5, "participants"

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->rcs_groups_app_keys:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "service_id"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->chat_bot_info_keys:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "st_timestamp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->rcs_groups_nms_keys:Ljava/util/Set;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getBioBufferValues(Landroid/os/Bundle;)Landroid/content/ContentValues;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getBioBufferValues: invalid data"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "cif_json_content"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cif_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "date_formated"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getBufferColVal(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "st_timestamp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "msg_context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "participants"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "timestamp"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getParticipantsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_5
    :goto_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getBufferColVal: invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x76000860 -> :sswitch_3
        -0x70d28d0f -> :sswitch_2
        -0x69079348 -> :sswitch_1
        0x2eefae -> :sswitch_0
    .end sparse-switch
.end method

.method private getBufferKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getBufferKeys: invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v0, "rcscommon"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->rcs_app_keys:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const-string v0, "rcsgroups"

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->rcs_groups_app_keys:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->rcs_groups_nms_keys:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_2
    const-string v0, "chatbotinfo"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->chat_bot_info_keys:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    return-object p2
.end method

.method private getGcBufferValues(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)Landroid/content/ContentValues;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupParticipants()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getParticipantsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "participants"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chat_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group_chat_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getStTimestamp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "st_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string v2, "timestamp"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    const-string v2, "res_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lastmodseq"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 11
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getGcBufferValues: invalid data"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getParticipantsString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
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
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;

    .line 4
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "name"

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "address"

    .line 8
    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "yourown"

    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->getYourOwn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 11
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_2
    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUpdateMsgBufferValues(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_formated"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getToList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getCommaSeparatedNumbers(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_to"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getSdSimIndex()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim_slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getReadMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "sms"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getTxtContent()Ljava/lang/String;

    move-result-object p1

    const-string p2, "body"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public checkResendRequestedMsg(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 10

    const-string v0, "sms"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "smsmessages"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mmsmessage"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "m_id"

    const-string v8, "date_formated"

    if-eqz v0, :cond_1

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "res_url=?"

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v9}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    const-string v2, "mms"

    .line 11
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 13
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMessageID(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p2

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :catchall_1
    move-exception p2

    :goto_2
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 16
    throw p2
.end method

.method public existsInCifTable(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existsInCifTable, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "chatbotinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "service_id=?"

    const/4 v7, 0x0

    .line 6
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 9
    throw v0
.end method

.method public existsInGroupTable(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existsInGroupTable, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rcsgroups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "group_chat_id=?"

    const/4 v7, 0x0

    .line 6
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 9
    throw v0
.end method

.method public getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    const-string v0, "resourceURL"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "correlationTag"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "correlationId"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "unknown"

    if-nez v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "res_url=?"

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 6
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "correlation_tag=?"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "correlation_id=?"

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public isLatestObject(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLatestObject, botServiceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    const-string p1, "date"

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "chatbotinfo"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "service_id=?"

    const/4 v7, 0x0

    .line 7
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 8
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v8, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v8, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v2, p1

    if-gtz p1, :cond_1

    move v1, v0

    .line 11
    :cond_1
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return v1

    :cond_2
    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return v1

    :catchall_0
    move-exception p1

    invoke-static {v8}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 12
    throw p1

    .line 13
    :cond_3
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid date or botServiceId"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public queryAttributeFromBufferDB(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryAttributeFromBufferDB"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "rcs"

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget-object p3, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cs.getString(cs.getColumnIndexOrThrow(what)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p1

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 9
    throw p1
.end method

.method public queryAttributesFromBufferDB(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryAttributesFromBufferDB"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 7
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "queryAttributeFromBufferDB: bundle ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 10
    throw p2
.end method

.method public queryBufferDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "mms_noti"

    const-string v1, "/"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "smsmessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "return type = sms"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    const-string p1, "sms"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "wapmessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 8
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 9
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "return type = wap"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    const-string p1, "wap"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p1

    .line 14
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mmsmessage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 15
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 16
    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "text"

    .line 18
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "return type = mms_noti"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    .line 22
    :cond_2
    :try_start_3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "return type = mms"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    const-string p1, "mms"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p1

    .line 25
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/mdecservice/nms/constants/NmsProviderConstant;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rcscommon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 26
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p2, "unknown"

    const-string v0, "return type = unknown"

    if-eqz p1, :cond_5

    :try_start_5
    const-string p1, "msg_context"

    .line 29
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getAppMessageContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 32
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "return type = rcs"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    const-string p1, "rcs"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p1

    .line 35
    :cond_4
    :try_start_6
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object p2

    :cond_5
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 38
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 39
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 40
    throw p1
.end method

.method public queryBufferDBForCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    move-object v0, p3

    move-object v1, p4

    .line 1
    sget-object v2, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryBufferDBForCursor  coId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " coTag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-nez v3, :cond_1

    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v9

    const-string v0, "correlation_id=?"

    move-object v6, v0

    move-object v7, v1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v9

    const-string v1, "correlation_tag=?"

    :goto_0
    move-object v7, v0

    move-object v6, v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    aput-object p5, v0, v9

    const-string v1, "res_url=?"

    goto :goto_0

    .line 5
    :cond_3
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v4, [Ljava/lang/String;

    aput-object p6, v0, v9

    const-string v1, "group_chat_id=?"

    goto :goto_0

    :goto_1
    move-object v1, p0

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    aget-object v0, p2, v9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v3, v2

    .line 10
    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, " query error"

    invoke-static {v0, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :cond_4
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 12
    throw v0

    :cond_5
    move-object v1, p0

    .line 13
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "not a valid request"

    invoke-static {v0, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public queryBufferDBRCS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryBufferDBRCS"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const-string p1, "rcs"

    .line 2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->queryBufferDBForCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public queryReplaceDB(Landroid/os/Bundle;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 2
    :try_start_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 4
    array-length p5, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    aget-object v1, p3, v0

    const-string v2, "recipients"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1, v1, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_4

    .line 11
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p3
.end method

.method public updateBufferDB(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateBufferDB"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p3, v0, [Ljava/lang/String;

    aput-object p2, p3, v1

    const-string p2, "correlation_id=?"

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v1

    const-string p3, "correlation_tag=?"

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 6
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->updateBufferDB(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 7
    :cond_1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "coId and coTag are null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public updateBufferDB(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rcs"

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update table :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public updateBufferDB(Landroid/os/Bundle;Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Ljava/lang/String;
    .locals 11

    const-string v0, "_bufferdbid"

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getDataTypeFromBufferDB(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceURL"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "unknown"

    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 12
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "No Matching DB. cannot update"

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    const-string v8, "res_url=?"

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v9, v3

    if-eqz p2, :cond_1

    .line 13
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getUpdateMsgBufferValues(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    :cond_1
    const-string p1, "sync_status"

    const-string p2, "Updating"

    .line 14
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 17
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 18
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    return-object v4

    :catchall_0
    move-exception p2

    move-object v4, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    invoke-static {v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 22
    throw p2
.end method

.method public updateSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "sync_status"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p3, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "res_url=?"

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateToBuffer(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 4

    const-string v0, "cif"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getBioBufferValues(Landroid/os/Bundle;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "service_id"

    .line 10
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "service_id=?"

    goto :goto_0

    :cond_0
    move-object p1, v2

    move-object v0, p1

    .line 11
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 13
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 14
    invoke-virtual {v1, p2, v2, p1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public updateToBuffer(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)I
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getGcBufferValues(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;->getGroupAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    move-result-object p1

    .line 3
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "group_info"

    .line 5
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;->getGroupChatId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-object p1, v4, v2

    const-string p1, "group_chat_id=?"

    .line 7
    invoke-virtual {v1, v3, v0, p1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :cond_1
    return v2
.end method

.method public writeToBuffer(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getGcBufferValues(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/GroupInfoObject;)Landroid/content/ContentValues;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "group_info"

    .line 41
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public writeToBuffer(Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getAttr()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getMsgContext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg_context"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->convertTimeStampToMilliseconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "date"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "correlation_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getCorrelationTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "correlation_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "thumbnail_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;->getPayloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "payload_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getResourceURL()Ljava/lang/String;

    move-result-object v0

    const-string v2, "res_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/agent/object/BaseObject;->getLastModSeq()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lastmodseq"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rcs"

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    .line 37
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid data"

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeToBuffer(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToBuffer: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 7
    sget-object v4, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is relay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "is-relay"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getBufferKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 10
    invoke-direct {p0, v5, v2}, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->getBufferColVal(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "rcscommon"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "rcs"

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_2

    :cond_4
    const-string p2, "rcsgroups"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "group_info"

    .line 17
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getInternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_2

    :cond_5
    const-string p2, "chatbotinfo"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cif"

    .line 21
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_6
    :goto_2
    return-void

    .line 23
    :cond_7
    :goto_3
    sget-object p2, Lcom/samsung/android/mdecservice/nms/adapter/DbHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
