.class public Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;
.super Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;
.source "PostRequestObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;
    }
.end annotation


# static fields
.field private static final CMAS_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

.field private static final CONVERSATION_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "PostRequestObj"

.field private static final MESSAGE_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

.field private static final MMS_ADDR_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

.field private static final PARTS_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

.field private static final WAP_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;


# instance fields
.field private payLoadInfoLists:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "_id"

    const-string v1, "conversation_id"

    const-string v2, "message_size"

    const-string v3, "message_box_type"

    const-string v4, "is_read"

    const-string v5, "recipients"

    const-string v6, "created_timestamp"

    const-string v7, "sim_slot"

    const-string v8, "protocol"

    const-string v9, "delivered_timestamp"

    const-string v10, "group_id"

    const-string v11, "subject"

    const-string v12, "mms_expiry_timestamp"

    const-string v13, "mms_content_location"

    const-string v14, "mms_message_id"

    const-string v15, "message_type"

    const-string v16, "cmc_prop"

    .line 1
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->MESSAGE_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "text"

    const-string v3, "size"

    const-string v4, "message_id"

    const-string v5, "content_type"

    const-string v6, "file_name"

    const-string v7, "_data"

    const-string v8, "content_uri"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->PARTS_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const-string v0, "type"

    const-string v1, "address"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->MMS_ADDR_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const-string v0, "href"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->WAP_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const-string v0, "expires"

    const-string v1, "service_category"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->CMAS_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const-string v0, "smsmms_thread_id"

    const-string v1, "im_thread_id"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->CONVERSATION_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;",
            "Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private addCommonDataFromMessageTable(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-object v2

    .line 1
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string v7, "created_timestamp"

    const-string v8, "recipients"

    const-string v9, "conversation_id"

    const-string v10, "_id"

    const/4 v11, 0x0

    const-string v12, "PostRequestObj"

    const/4 v14, 0x1

    if-le v6, v14, :cond_4

    const-string v6, ""

    .line 5
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v6, "group_id"

    .line 6
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v1, "duplicated correlationTag exists even if Message is not groupSMS."

    .line 7
    invoke-static {v12, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_1
    const-string v6, "message_type"

    .line 8
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v15, 0xa

    if-eq v6, v15, :cond_2

    const-string v1, "Message type is not SMS"

    .line 9
    invoke-static {v12, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_2
    const-string v6, "Handle Group SMS"

    .line 10
    invoke-static {v12, v6}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 17
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 18
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 19
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "is_read"

    .line 23
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 24
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v8, "message_box_type"

    .line 26
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 27
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "boxType"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "box type = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x65

    const/16 v15, 0x64

    const/16 v13, 0x66

    if-eq v8, v13, :cond_5

    .line 30
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v15, :cond_5

    .line 31
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_5

    const-string v1, "Unhandled BoxType"

    .line 32
    invoke-static {v12, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 33
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const-string v11, "toList"

    const-string v12, "from"

    if-gt v8, v14, :cond_7

    .line 34
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v13, :cond_7

    .line 35
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_6

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v15, :cond_8

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    new-array v9, v14, [Ljava/lang/String;

    iget-object v10, v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    .line 38
    invoke-static {v13, v10}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-virtual {v2, v11, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v13, 0x0

    .line 41
    iget-object v8, v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v13, v8}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v2, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v11, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    :goto_3
    const-string v5, "protocol"

    .line 45
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 46
    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "read_status"

    .line 47
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "dateTime"

    .line 49
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "idList"

    .line 50
    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "conversaionIdList"

    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "sim_slot"

    .line 52
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 53
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->getPhoneCount()I

    move-result v3

    if-le v3, v14, :cond_9

    iget-object v3, v0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getPresentSimCount(Landroid/content/Context;)I

    move-result v3

    if-le v3, v14, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    const/4 v3, -0x1

    :goto_4
    const-string v4, "simIndex"

    .line 54
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "sdSimIndex"

    .line 55
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2
.end method

.method private addMmsDataFromMessageTable(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "subject"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ISO-8859-1"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded subject :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PostRequestObj"

    invoke-static {v3, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message_size"

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 8
    invoke-static {v4, v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->bytes2kb(J)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgSize= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mmsSize"

    .line 11
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ownNum"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mms_expiry_timestamp"

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mms_content_location"

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 18
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\r"

    const-string v3, ""

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_4
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cmc_prop"

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mms_cmc_prop"

    .line 25
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private getDatafromAddrTable(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "idList"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "conversaionIdList"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "PostRequestObj"

    if-eqz v1, :cond_1

    const-string p1, "getDatafromAddrTable: no Id, mandatory value for query DB"

    .line 5
    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MMS_ADDR_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 7
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->MMS_ADDR_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 13
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "address"

    .line 14
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 15
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "insert-address-token"

    .line 17
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "type"

    .line 18
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 19
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v9, 0x81

    if-eq v8, v9, :cond_6

    const/16 v9, 0x82

    if-eq v8, v9, :cond_5

    const/16 v9, 0x89

    if-eq v8, v9, :cond_4

    const/16 v9, 0x97

    if-eq v8, v9, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_7
    invoke-static {v3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "from"

    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_8
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "toList"

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    :cond_9
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "bccList"

    .line 29
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 30
    :cond_a
    invoke-static {v5}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ccList"

    .line 31
    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    if-eqz v0, :cond_c

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object p1

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_d

    .line 34
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_2
    throw v1
.end method

.method private getDatafromCMASTable(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    const-string v0, "expires"

    const-string v1, "idList"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "conversaionIdList"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "PostRequestObj"

    const-string v0, "getDatafromCMASTable: no Id, mandatory value for query DB"

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CMAS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 7
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->CMAS_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "serviceCategory"

    const-string v3, "service_category"

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 14
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 17
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1
.end method

.method private getDatafromConversationTable(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "idList"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "conversaionIdList"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "PostRequestObj"

    if-eqz v3, :cond_1

    const-string p1, "getDatafromConversationTable: no conversationId, mandatory value for query DB"

    .line 5
    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->CONVERSATION_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    sget-object v7, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->CONVERSATION_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    aput-object v0, v9, v2

    const/4 v10, 0x0

    const-string v8, "_id = ?"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 9
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v1, v2, v5

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v2, v5

    .line 10
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryMessageDb() conversations threadId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "threadId"

    .line 11
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    .line 14
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v1
.end method

.method private getDatafromMessageTable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 13

    const-string v0, "mms_noti"

    const-string v1, "correlation_tag"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "correlation_id"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 4
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "mms_message_id"

    :cond_1
    const-string v3, "creator"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->MSG_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    sget-object v9, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->MESSAGE_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v11, v1

    const-string v12, "created_timestamp DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->addCommonDataFromMessageTable(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->addMmsDataFromMessageTable(Landroid/database/Cursor;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 10
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, p2

    :goto_1
    move-object v2, p0

    move-object v3, v1

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->composeContentValueForBufferDB(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getUriForBufferDB(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_3

    .line 14
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1
.end method

.method private getDatafromPartsTable(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, ""

    const-string v1, "idList"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "conversaionIdList"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "PostRequestObj"

    if-eqz v2, :cond_1

    const-string p1, "getDatafromPartsTable: no Id, mandatory value for query DB"

    .line 5
    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 6
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->payLoadInfoLists:Ljava/util/List;

    .line 7
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->PARTS_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 8
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->PARTS_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 9
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 10
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    const-string v5, "mms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "text"

    if-eqz v2, :cond_6

    :try_start_1
    const-string v2, "content_uri"

    .line 12
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "content_type"

    .line 14
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 15
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "file_name"

    .line 16
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 17
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "size"

    .line 18
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 19
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_2

    .line 20
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "ISO-8859-1"

    .line 21
    invoke-static {v7, v9}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->checkCodingScheme1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 22
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 23
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v7, "\r"

    .line 24
    invoke-virtual {v9, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "\n"

    .line 25
    invoke-virtual {v7, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 26
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "partCursor : contentType= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , fileName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/samsung/android/mdecservice/nms/util/FileUtil;->byteFromUri(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v2

    .line 28
    array-length v9, v2

    if-nez v9, :cond_5

    const-string v9, "text/plain"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 29
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 31
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string p1, "No Data"

    .line 32
    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v3

    .line 34
    :cond_5
    :goto_2
    :try_start_2
    new-instance v5, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;

    invoke-direct {v5}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;-><init>()V

    .line 35
    invoke-virtual {v5, v6}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setContentType(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5, v7}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setFileName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setBinaryContent([B)V

    .line 38
    invoke-virtual {v5, v8}, Lcom/samsung/android/mdecservice/nms/attribute/MmsPayloadInfo;->setPayloadSize(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->payLoadInfoLists:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    const-string v2, "textMessage"

    .line 40
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 42
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    .line 43
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v0

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object p1
.end method

.method private getDatafromWAPTable(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "textMessage"

    const-string v1, "idList"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "conversaionIdList"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 4
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "PostRequestObj"

    if-eqz v2, :cond_1

    const-string p1, "getDatafromWAPTable: no Id, mandatory value for query DB"

    .line 5
    invoke-static {v4, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 6
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$Uris;->WPM_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 7
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->WAP_PROJECTION_FROM_CONTENT_PROVIDER:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "href"

    .line 10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryMessageDb() parts body = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "from"

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0f00b7

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    .line 21
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    .line 22
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v0
.end method

.method private makeBundle(Landroid/os/Bundle;IZ)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "cb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v1, "mms_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    const-string v6, "msgContext"

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const-string p2, "PostRequestObj"

    const-string p3, "Not handled dataType"

    .line 2
    invoke-static {p2, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string p2, "mmsnoti-message"

    .line 3
    invoke-virtual {p1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MMS_ADDR:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1

    :cond_2
    const-string p2, "multimedia-message"

    .line 8
    invoke-virtual {p1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_1
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 10
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MMS_ADDR:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 11
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 12
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1

    :cond_3
    const-string p2, "wap-message"

    .line 14
    invoke-virtual {p1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :try_start_2
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 16
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 17
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->WAP:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 18
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1

    :cond_4
    const-string p2, "cb-message"

    .line 20
    invoke-virtual {p1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mContext:Landroid/content/Context;

    const v0, 0x7f0f002a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "from"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :try_start_3
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 23
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 24
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1

    :cond_5
    const-string v0, "pager-message"

    .line 26
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "creator"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "relayCreator"

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_6
    :try_start_4
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 34
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 35
    sget-object p2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    return-object p1

    :catch_4
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x756cf21e -> :sswitch_4
        0xc5f -> :sswitch_3
        0x1a6d3 -> :sswitch_2
        0x1bd59 -> :sswitch_1
        0x1cae6 -> :sswitch_0
    .end sparse-switch
.end method

.method private queryMsgDB(Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryMsgDB type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInsertNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PostRequestObj"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$1;->$SwitchMap$com$samsung$android$mdecservice$nms$request$PostRequestObject$MSG_DB_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no such type"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->getDatafromConversationTable(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->getDatafromCMASTable(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->getDatafromWAPTable(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->getDatafromAddrTable(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 8
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->getDatafromPartsTable(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    .line 9
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->getDatafromMessageTable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p2

    :goto_0
    return-object p2

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bundle is null!!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public composeContentValueForBufferDB(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    const-string v0, "PostRequestObj"

    const-string v1, "composeContentValueForBufferDB"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "created_timestamp"

    .line 3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_read"

    .line 5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "read"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "correlation_tag"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "correlation_id"

    .line 8
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sync_status"

    const-string p2, "Posting"

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p1, "creator"

    .line 10
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    const-string p1, "text"

    .line 11
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public composeSyncEvent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
    .locals 9

    const-string v0, "PostRequestObj"

    const-string v1, "composeSyncEvent"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "boxType"

    .line 2
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "wap"

    .line 3
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x66

    if-nez v3, :cond_0

    const-string v3, "cmas"

    .line 4
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cb"

    .line 5
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string p1, "WAP, CMAS, CB cannot be SENT TYPE"

    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string v0, "read_status"

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "\\Seen"

    goto :goto_0

    :cond_2
    const-string v0, "\\Recent"

    :goto_0
    if-ne v2, v4, :cond_3

    const-string v0, "\\Delivered"

    :cond_3
    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    const-string v0, "\\Failed"

    :cond_4
    const/4 v5, -0x1

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x756cf21e

    const-string v8, "mms"

    if-eq v6, v7, :cond_6

    const v7, 0x1a6d3

    if-eq v6, v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const-string v6, "mms_noti"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v5, v1

    :cond_7
    :goto_1
    if-eqz v5, :cond_9

    if-eq v5, v1, :cond_8

    const-string v1, "PostRequest"

    goto :goto_2

    :cond_8
    const-string v1, "PostMmsNotiRequest"

    goto :goto_2

    :cond_9
    const-string v1, "PostMmsRequest"

    :goto_2
    if-eq v2, v4, :cond_b

    if-ne v2, v3, :cond_a

    goto :goto_3

    :cond_a
    const-string v2, "IN"

    goto :goto_4

    :cond_b
    :goto_3
    const-string v2, "OUT"

    :goto_4
    const-string v3, "direction"

    .line 10
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdSimIndex"

    .line 11
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getNotificationStatus(I)I

    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notiStatus"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "threadId"

    .line 13
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 14
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reach Long "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 18
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->isMuteThread(J)Z

    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "threadMute"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_c
    invoke-static {p3, p2}, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->parseMmsSmsAttribute(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object v2

    .line 21
    invoke-virtual {v2, p4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->setMiscMsgAttr(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p4

    if-eqz v2, :cond_d

    const-string v3, "eventTypeServer"

    .line 23
    invoke-virtual {p4, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v3

    .line 24
    invoke-virtual {v3, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setFlag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v1, "correlation_tag"

    .line 26
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationTag(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object v0

    const-string v1, "correlation_id"

    .line 28
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setCorrelationId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setTid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setMessageAttribute(Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    .line 31
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 32
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->payLoadInfoLists:Ljava/util/List;

    invoke-virtual {p4, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->setPayLoadInfos(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;

    .line 33
    :cond_d
    invoke-virtual {p4}, Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventMessage;

    move-result-object p1

    return-object p1
.end method

.method public makePostRequestForMsg(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    const-string v1, "PostRequestObj"

    if-nez v0, :cond_0

    const-string p1, "Bundle List from app is null"

    .line 2
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->notifyErrorResultToApp()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePostRequestForMsg : transactionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dataType ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", list size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;

    const-string v2, "eventTypeServer"

    const-string v3, "eventTypeMessage"

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 9
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->checkProperListFromApp(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 11
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 13
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "correlation_tag"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 16
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "correlation_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 19
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "fallbackFailed"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "idList"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 22
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 23
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 24
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "conversaionIdList"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 26
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    .line 27
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 28
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    :cond_3
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->makeBundle(Landroid/os/Bundle;IZ)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    :goto_1
    const/16 v6, 0x2bc

    const-string v7, "result"

    if-eqz v5, :cond_6

    .line 30
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mTransactionId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mDataType:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {p0, v5, v4, v8, v9}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;->composeSyncEvent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v4, "Bundle is not proper(null). cannot completed makePostRequest"

    .line 34
    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 37
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 38
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mCallbackList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->notifyErrorResultToApp()V

    .line 40
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->getSyncEventList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 41
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEventList(Lcom/samsung/android/mdecservice/nms/event/SyncEventList;)V

    :cond_9
    return-void
.end method
