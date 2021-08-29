.class public Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static KEY_AUTO_RETREIVE:Ljava/lang/String; = null

.field private static KEY_NOTIFICATION_STATUS:Ljava/lang/String; = null

.field private static KEY_NOTIFICATION_STATUS_SIM2:Ljava/lang/String; = null

.field private static KEY_RINGTONE:Ljava/lang/String; = null

.field private static KEY_RINGTONE_SIM2:Ljava/lang/String; = null

.field private static KEY_VIBRATE_STATUS:Ljava/lang/String; = null

.field private static KEY_VIBRATE_STATUS_SIM2:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "NotiMgr"

.field private static MSG_PREFERENCE:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.mms.csc.PreferenceProvider/key"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->MSG_PREFERENCE:Landroid/net/Uri;

    const-string v0, "pref_key_mms_auto_retrieval"

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_AUTO_RETREIVE:Ljava/lang/String;

    const-string v0, "pref_key_enable_notifications"

    .line 3
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_NOTIFICATION_STATUS:Ljava/lang/String;

    const-string v0, "pref_key_enable_notifications_sim2"

    .line 4
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_NOTIFICATION_STATUS_SIM2:Ljava/lang/String;

    const-string v0, "pref_key_vibrateWhen_checkbox"

    .line 5
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_VIBRATE_STATUS:Ljava/lang/String;

    const-string v0, "pref_key_vibrateWhen_checkbox_sim2"

    .line 6
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_VIBRATE_STATUS_SIM2:Ljava/lang/String;

    const-string v0, "pref_key_ringtone"

    .line 7
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_RINGTONE:Ljava/lang/String;

    const-string v0, "pref_key_ringtone_sim2"

    .line 8
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_RINGTONE_SIM2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    .line 3
    sput-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mInstance:Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;

    .line 4
    sput-object p2, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    return-void
.end method

.method public static getAutoRetreive()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_AUTO_RETREIVE:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "BOOLEAN"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NotiMgr"

    const-string v1, "getAutoRetreive(): result == null, return true"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDdmDescription(IIJJLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const v0, 0x7f0f0100

    const v1, 0x7f0f0101

    const v2, 0x7f0f0105

    const/16 v3, 0x20

    if-eqz p0, :cond_8

    const/16 v4, 0x81

    const/16 v5, 0x80

    const/4 v6, 0x1

    if-eq p0, v6, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const v0, 0x7f0f009a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array p1, v6, [Ljava/lang/Object;

    const-wide/16 v0, 0x3ff

    add-long/2addr p4, v0

    const-wide/16 v0, 0x400

    div-long/2addr p4, v0

    .line 2
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p1, p5

    const-string p4, "%d"

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x200e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p4, 0x7f0f0091

    .line 3
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p4, 0x7f0f007b

    new-array v0, v6, [Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p2, v1

    .line 5
    invoke-static {p1, p2, p3, v6}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p5

    .line 6
    invoke-virtual {p1, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    if-ne p1, v5, :cond_2

    .line 8
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p1, 0x7f0f0103

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    if-ne p1, v4, :cond_c

    .line 9
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p1, 0x7f0f0106

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/16 p0, 0x86

    if-eq p1, p0, :cond_7

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x82

    if-ne p1, p0, :cond_5

    .line 10
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p1, 0x7f0f0104

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    if-ne p1, v5, :cond_6

    .line 11
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 12
    :cond_6
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 13
    :cond_7
    :goto_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    .line 14
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_9
    const/16 p0, 0x40

    if-ne p1, p0, :cond_a

    .line 15
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_a
    if-ne p1, v3, :cond_b

    .line 16
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p1, 0x7f0f0102

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_b
    const/16 p0, 0x46

    if-ne p1, p0, :cond_c

    .line 17
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_c
    :goto_1
    const/4 p0, 0x0

    .line 18
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDdmTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f0f0067

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const p1, 0x7f0f00b9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getNotificationEnabled(I)Z
    .locals 3

    const-string v0, "BOOLEAN"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_NOTIFICATION_STATUS_SIM2:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_NOTIFICATION_STATUS:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "NotiMgr"

    const-string v0, "getNotificationStatus(): result null"

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getNotificationStatus(I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getNotificationEnabled(I)Z

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getVibrateStatus(I)Z

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getRingtoneValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    or-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :cond_2
    :goto_1
    return p0
.end method

.method public static getRingtoneValue(I)Ljava/lang/String;
    .locals 3

    const-string v0, "STRING"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_RINGTONE_SIM2:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_RINGTONE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "NotiMgr"

    const-string v0, "getRingtoneValue(): result null"

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getThreadId(Ljava/lang/Object;I)J
    .locals 8

    const/16 v0, 0x86

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Ljava/lang/String;

    check-cast p0, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;

    invoke-virtual {p0}, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;->getMessageId()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x88

    if-ne p1, v0, :cond_1

    .line 2
    new-instance p1, Ljava/lang/String;

    check-cast p0, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;

    invoke-virtual {p0}, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, -0x1

    if-nez p1, :cond_2

    return-wide v0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "m_id"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "m_type"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x80

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string p1, "thread_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 13
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "NotiMgr"

    if-eqz p0, :cond_6

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    .line 16
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 17
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v0

    :cond_4
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_5
    throw p1

    :cond_6
    :goto_1
    const-string p0, "cursor is null"

    .line 19
    invoke-static {p1, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "NotiMgr"

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->MSG_PREFERENCE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v6, v9

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    .line 3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "STRING"

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v2, "INT"

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, "BOOLEAN"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne v8, p1, :cond_2

    move v9, v8

    .line 10
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v2, "LONG"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, p2

    .line 13
    :goto_0
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, p1

    :cond_5
    if-eqz p0, :cond_6

    .line 14
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-object p0, v1

    :catch_1
    :try_start_2
    const-string p1, "It doesn\'t support PreferenceProvider"

    .line 15
    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_6

    goto :goto_1

    .line 16
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_7

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_7
    throw p1
.end method

.method public static getVibrateStatus(I)Z
    .locals 3

    const-string v0, "BOOLEAN"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_VIBRATE_STATUS_SIM2:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->KEY_VIBRATE_STATUS:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "NotiMgr"

    const-string v0, "getVibrateStatus(): result null"

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMuteThread(J)Z
    .locals 11

    const-string v0, "NotiMgr"

    .line 1
    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "is_mute"

    .line 2
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "threads"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz v10, :cond_3

    .line 7
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 9
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMuteThread exception e : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_2

    .line 10
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_2

    .line 11
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v1

    .line 12
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMuteThread thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "exception e : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_2

    .line 15
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    move p0, v2

    :cond_3
    :goto_3
    if-lez p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :goto_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_5
    throw p0
.end method

.method private static sendAlertNoti(ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-static/range {p4 .. p5}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->isMuteThread(J)Z

    move-result v10

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getNotificationStatus(I)I

    move-result v1

    .line 3
    new-instance v15, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;

    move-object v0, v15

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move/from16 v5, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p3

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;->getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "eventTypeServer"

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setEventTo(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    const-string v1, "PostAlertNotiRequest"

    .line 6
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setRequestReason(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v15}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->setMmsNotiInfo(Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;)Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti$Builder;->build()Lcom/samsung/android/mdecservice/nms/event/SyncEventNoti;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mNmsClientMan:Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1, v0}, Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;->publishSyncEvent(Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;)V

    goto :goto_0

    :cond_0
    const-string v0, "NotiMgr"

    const-string v1, "Nms Service is not initialized"

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static sendMmsDdm(Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->getMessageType()I

    move-result v1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getAutoRetreive()Z

    move-result v2

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getThreadId(Ljava/lang/Object;I)J

    move-result-wide v7

    const/16 v3, 0x82

    const-string v4, "Ddm"

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const-string v11, ""

    if-eq v1, v3, :cond_3

    const/16 v2, 0x86

    const-string v3, "000"

    if-eq v1, v2, :cond_1

    const/16 v2, 0x88

    if-eq v1, v2, :cond_0

    move-object v0, v6

    move-wide v13, v9

    move-object v1, v11

    move-object v2, v1

    move-object v4, v2

    move-wide v11, v13

    move v9, v5

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x2

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;->getReadStatus()I

    move-result v2

    .line 5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/cmcopenapi/pdu/ReadOrigInd;->getDate()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->getFrom()Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    move-wide v13, v9

    move v9, v5

    move v5, v2

    move-object v2, v1

    :goto_0
    move-object v1, v11

    move-wide v11, v13

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x1

    .line 8
    check-cast v0, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;->getStatus()I

    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;->getDate()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/DeliveryInd;->getTo()[Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    array-length v3, v0

    if-lez v3, :cond_2

    .line 12
    invoke-static {v0}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->concat([Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v6

    :goto_1
    move-wide v13, v9

    move v9, v5

    move v5, v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const-string v0, "NotiMgr"

    const-string v1, "auto retrieve on"

    .line 13
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v1, 0x3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->getDateFromDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->getFrom()Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cmcopenapi/pdu/GenericPdu;->getSubject()Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v6, v11

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/cmcopenapi/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 20
    :goto_2
    check-cast v0, Lcom/samsung/android/cmcopenapi/pdu/NotificationInd;

    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/NotificationInd;->getExpiry()J

    move-result-wide v9

    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v11

    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/cmcopenapi/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 23
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "MmsNoti"

    move-wide v13, v11

    move-wide v11, v9

    move v9, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v3

    .line 24
    :goto_3
    invoke-static {v9, v6}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getDdmTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move v10, v5

    move-object v15, v0

    .line 25
    invoke-static/range {v9 .. v15}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getDdmDescription(IIJJLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v9, 0x0

    move/from16 v3, p1

    move-object v6, v0

    move-object v11, v2

    move-object/from16 v12, v16

    move-object v14, v1

    .line 26
    invoke-static/range {v3 .. v14}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->sendAlertNoti(ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendSmsDDm(ILjava/lang/String;ILjava/lang/String;JJ)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getDdmTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move v1, p0

    move-object v6, p1

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getDdmDescription(IIJJLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "Ddm"

    const-string v13, ""

    move/from16 v2, p2

    move v4, p0

    move-object v5, p1

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p3

    .line 3
    invoke-static/range {v2 .. v13}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->sendAlertNoti(ILjava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindService(Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V
    .locals 5

    const-string v0, "enabled_notification_listeners"

    const-string v1, "NotiMgr"

    const-string v2, "bindService"

    .line 1
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->rebind(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;)V

    .line 3
    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nms.service.NotificationListenerService"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :try_start_0
    sget-object v2, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notiAccessSet before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object p1, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 10
    sget-object v2, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notiAccessSet after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public unbindService()V
    .locals 9

    const-string v0, "enabled_notification_listeners"

    const-string v1, "NotiMgr"

    const-string v2, "unbindService"

    .line 1
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->getInstance()Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->getInstance()Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationListenerService;->unbind()V

    .line 4
    :cond_0
    sget-object v2, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".nms.service.NotificationListenerService"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notiAccessSet before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    .line 8
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_3

    .line 10
    :try_start_1
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v4, :cond_4

    .line 13
    sget-object v2, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notiAccessSet after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
