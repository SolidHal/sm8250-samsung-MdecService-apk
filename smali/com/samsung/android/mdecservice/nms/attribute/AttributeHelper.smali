.class public Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AttributeHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCallLogAttribute(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "data4"

    const-string v3, "data3"

    const-string v4, "data2"

    const-string v5, "data1"

    const-string v6, "sec_cmc_device"

    const-string v7, "number"

    const/4 v8, 0x0

    if-eqz v1, :cond_b

    .line 1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "type"

    .line 2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 5
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v8

    .line 8
    :cond_1
    :goto_0
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_2

    .line 9
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 10
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v8

    .line 11
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_3

    .line 12
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 13
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v8

    .line 14
    :goto_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_4

    .line 15
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 16
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v8

    .line 17
    :goto_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_5

    .line 18
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 19
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 20
    :cond_5
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "true"

    goto :goto_4

    :cond_6
    const-string v2, "false"

    :goto_4
    const-string v10, "2"

    .line 22
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "empty"

    const/4 v12, 0x0

    if-eqz v10, :cond_8

    .line 23
    :try_start_1
    invoke-static {v12, v0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    move-object v11, v7

    goto :goto_6

    .line 26
    :cond_8
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    move-object v11, v7

    .line 28
    :goto_5
    invoke-static {v12, v0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v11

    move-object v11, v0

    move-object/from16 v0, v18

    :goto_6
    const-string v7, "date"

    .line 29
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-static {v7}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "logtype"

    .line 31
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "duration"

    .line 32
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "sim_id"

    .line 33
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "presentation"

    .line 34
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 35
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cnap_name"

    .line 36
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 37
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v8

    const-string v8, "m_content"

    .line 38
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 39
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v3

    const-string v3, "subscription_component_name"

    .line 40
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 41
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v9}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCallDisposition(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v11}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v7}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v10}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCallType(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v12}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCallDuration(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v6}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setDeviceName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setEmergency(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v13}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setSimid(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v14}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setPresentation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v15}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setCnapName(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v8}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setMContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setPACname(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v5}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setDuoData1(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setDuoData2(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    move-object/from16 v3, v17

    .line 58
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setDuoData3(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    move-object/from16 v8, v16

    .line 59
    invoke-virtual {v0, v8}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->setDuoData4(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    .line 62
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 63
    throw v0

    .line 64
    :cond_b
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "rowID is null. There\'s nothing to post"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v8
.end method

.method public static parseMmsSmsAttribute(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseMmsSmsAttribute"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v0

    const-string v1, "direction"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDirection(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "from"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "toList"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "dateTime"

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "textMessage"

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setTxtContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "threadId"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setThreadId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "threadMute"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setThreadMute(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "notiStatus"

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setNotiStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "relayCreator"

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setCreator(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "msgContext"

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "fallbackFailed"

    .line 13
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setFallbackFailed(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "simIndex"

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v1

    const-string v2, "sdSimIndex"

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSdSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 17
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
    const-string v1, "cmas"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "wap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v6

    goto :goto_1

    :sswitch_2
    const-string v1, "sms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "mms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "cb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto :goto_1

    :sswitch_5
    const-string v1, "mms_noti"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string v1, "expires"

    if-eqz p0, :cond_4

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_4

    const-string v5, "mms_content_location"

    const-string v6, "subject"

    const-string v7, "mmsSize"

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    goto/16 :goto_2

    .line 18
    :cond_1
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    const-string v1, "mms_expiry_timestamp"

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsExpiryTimeStamp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 21
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsContentLocation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    goto :goto_2

    :cond_2
    const-string p0, "protocol"

    .line 24
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setProtocol(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    const-string v2, "serviceCategory"

    .line 25
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setServiceCategory(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setExpires(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    goto :goto_2

    :cond_3
    const-string p0, "bccList"

    .line 28
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setBcc(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    const-string v1, "ccList"

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setCc(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 30
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 31
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    const-string v1, "ownNum"

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setOwnNum(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsContentLocation(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    const-string v1, "mms_cmc_prop"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsCmcProp(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    goto :goto_2

    .line 37
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setExpires(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 38
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x756cf21e -> :sswitch_5
        0xc5f -> :sswitch_4
        0x1a6d3 -> :sswitch_3
        0x1bd59 -> :sswitch_2
        0x1cae6 -> :sswitch_1
        0x2ea61c -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseMmsSmsRelayAttribute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;",
            ")",
            "Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/attribute/AttributeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "parseMmsSmsRelayAttribute"

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;->getBuilder()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object v0

    const-string v1, "update"

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setAttrForUpdate(Z)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "OUT"

    .line 8
    invoke-virtual {v0, p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDirection(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    const/4 v2, 0x0

    .line 9
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "recipientslist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setTo(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 10
    invoke-static {v2, p0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setFrom(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 11
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "date"

    .line 12
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDate(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    const-string v3, "-1"

    .line 14
    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 15
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "sim_slot"

    .line 16
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSdSimIndex(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    const-string v3, ""

    .line 18
    invoke-virtual {p2, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setCreator(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 19
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/CmcSettingAdapter;->getMyDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setDeviceId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    const-string v5, "sms"

    .line 20
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "pager-message"

    goto :goto_0

    :cond_1
    const-string v6, "multimedia-message"

    :goto_0
    invoke-virtual {p2, v6}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMsgContext(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 22
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "txtcontent"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    .line 23
    :goto_1
    invoke-virtual {p2, v6}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setTxtContent(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 24
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    const-string v7, "thread_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setThreadId(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 25
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 26
    invoke-interface {p4, v4}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->getNotificationStatus(I)I

    move-result v4

    .line 27
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setNotiStatus(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p2

    .line 28
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {p4, v6, v7}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;->isMuteThread(J)Z

    move-result p4

    .line 30
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setThreadMute(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    const/4 p2, -0x1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v4, 0x1a6d3

    if-eq p4, v4, :cond_4

    const v4, 0x1bd59

    if-eq p4, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p2, v2

    goto :goto_2

    :cond_4
    const-string p4, "mms"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p2, v1

    :cond_5
    :goto_2
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "bcclist"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setBcc(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p1

    .line 33
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p4, "cclist"

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setCc(Ljava/util/List;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p1

    .line 34
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p4, "mediasize"

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->bytes2kb(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setMmsSize(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p1

    .line 36
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "subject"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setSubject(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    move-result-object p1

    .line 38
    invoke-static {v2, p0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->getValidMsisdn(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setOwnNum(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    goto :goto_3

    .line 39
    :cond_7
    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->setExpires(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;

    .line 40
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute$Builder;->build()Lcom/samsung/android/mdecservice/nms/attribute/MessageAttribute;

    move-result-object p0

    return-object p0
.end method
