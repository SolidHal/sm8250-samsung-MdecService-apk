.class public Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;
.super Ljava/lang/Object;
.source "MdecAnalytics.java"


# static fields
.field private static final CUSTOM_DIMENSION_LOG_CALLDISPOSITION:Ljava/lang/String; = "cdis"

.field private static final CUSTOM_DIMENSION_LOG_CALLDURATION:Ljava/lang/String; = "cdur"

.field private static final CUSTOM_DIMENSION_LOG_CALLTYPE:Ljava/lang/String; = "ctype"

.field private static final CUSTOM_DIMENSION_MSG_ATTACHSIZE:Ljava/lang/String; = "msize"

.field private static final CUSTOM_DIMENSION_MSG_ATTACHTYPE:Ljava/lang/String; = "matt"

.field private static final CUSTOM_DIMENSION_MSG_MSGTYPE:Ljava/lang/String; = "mtype"

.field private static final EVENT_LOG_POST_PD:Ljava/lang/String; = "LOGPP"

.field private static final EVENT_LOG_POST_SD:Ljava/lang/String; = "LOGPS"

.field private static final EVENT_LOG_UPDATE_PD:Ljava/lang/String; = "LOGUP"

.field private static final EVENT_LOG_UPDATE_SD:Ljava/lang/String; = "LOGUS"

.field private static final EVENT_MSG_POST_PD:Ljava/lang/String; = "MSGPP"

.field private static final EVENT_MSG_POST_SD:Ljava/lang/String; = "MSGPS"

.field private static final EVENT_MSG_UPDATE_PD:Ljava/lang/String; = "MSGUP"

.field private static final EVENT_MSG_UPDATE_SD:Ljava/lang/String; = "MSGUS"

.field private static final EVENT_RCS_POST_PD:Ljava/lang/String; = "RCSPP"

.field private static final EVENT_RCS_POST_SD:Ljava/lang/String; = "RCSPS"

.field private static final EVENT_RCS_UPDATE_PD:Ljava/lang/String; = "RCSUP"

.field private static final EVENT_RCS_UPDATE_SD:Ljava/lang/String; = "RCSUS"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOT_WORKING:I = 0x1

.field private static final PD:I = 0x0

.field private static final SD:I = 0x1

.field private static final SEP_VERSION:Ljava/lang/String; = "ro.build.version.sep"

.field private static final SETTING_VER:I = 0x8

.field public static final TRACKING_ID:Ljava/lang/String; = "4F0-399-565498"

.field private static final UNKNOWN:I = -0x1

.field private static final WORKING:I

.field private static mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

.field private static mContext:Landroid/content/Context;

.field private static mIsPD:I

.field private static mNmsWorking:I

.field private static mRcsAttType:[Ljava/lang/String;

.field private static mRcsMsgType:[Ljava/lang/String;

.field private static sConfigured:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mNmsWorking:I

    .line 3
    sput v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    const-string v0, "gc"

    const-string v1, "chat"

    const-string v2, "ddm"

    const-string v3, "ft"

    .line 4
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mRcsMsgType:[Ljava/lang/String;

    const-string v1, "video"

    const-string v2, "audio"

    const-string v3, "image"

    const-string v4, "text"

    const-string v5, "application"

    const-string v6, "json"

    .line 5
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mRcsAttType:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sConfigured:Z

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventLogPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ctype"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "cdur"

    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string p1, "cdis"

    .line 6
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    new-instance p2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    if-eqz p0, :cond_2

    const-string p0, "LOGPP"

    goto :goto_0

    :cond_2
    const-string p0, "LOGPS"

    .line 8
    :goto_0
    invoke-virtual {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventType(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static buildEventLogUpdate(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    if-eqz p0, :cond_1

    const-string p0, "LOGUP"

    goto :goto_0

    :cond_1
    const-string p0, "LOGUS"

    .line 3
    :goto_0
    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventType(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static buildEventMsgPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mtype"

    .line 3
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mms"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "matt"

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msize"

    .line 8
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    new-instance p2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    if-eqz p0, :cond_3

    const-string p0, "MSGPP"

    goto :goto_0

    :cond_3
    const-string p0, "MSGPS"

    .line 10
    :goto_0
    invoke-virtual {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventType(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static buildEventMsgUpdate(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    if-eqz p0, :cond_1

    const-string p0, "MSGUP"

    goto :goto_0

    :cond_1
    const-string p0, "MSGUS"

    .line 3
    :goto_0
    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventType(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method public static buildEventRcsPost(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2d

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 6
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 10
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mRcsMsgType:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mtype"

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mRcsAttType:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "matt"

    .line 14
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "msize"

    .line 16
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_7
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object p1

    new-instance p2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    if-eqz p0, :cond_8

    const-string p0, "RCSPP"

    goto :goto_0

    :cond_8
    const-string p0, "RCSPS"

    .line 18
    :goto_0
    invoke-virtual {p2, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventType(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    :cond_9
    :goto_1
    return-void
.end method

.method public static buildEventRcsUpdate(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    if-eqz p0, :cond_1

    const-string p0, "RCSUP"

    goto :goto_0

    :cond_1
    const-string p0, "RCSUS"

    .line 3
    :goto_0
    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventType(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method private static getCallActivationInSD()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcCallActivation()Z

    move-result v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallActivationInSD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static getMessageActivationInSD()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcMessageActivation()Z

    move-result v0

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageActivationInSD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static getMultipleTabletDifferenctSettings()I
    .locals 12

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "idList.size() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v1

    move v6, v4

    move v7, v6

    move v8, v7

    move v5, v3

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 6
    sget-object v10, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v10, v9}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    sget-object v10, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v9}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v11

    if-ne v10, v11, :cond_3

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_5

    .line 8
    invoke-virtual {v9}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v5

    .line 9
    invoke-virtual {v9}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v6

    move v7, v1

    move v8, v6

    move v6, v5

    move v5, v7

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {v9}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v7

    if-ne v6, v7, :cond_8

    invoke-virtual {v9}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v7

    if-eq v8, v7, :cond_6

    goto :goto_1

    :cond_6
    move v7, v3

    goto :goto_0

    :cond_7
    move v1, v7

    :cond_8
    :goto_1
    const/4 v0, 0x2

    if-lt v4, v0, :cond_9

    xor-int/lit8 v2, v1, 0x1

    .line 11
    :cond_9
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultipleTabletDifferenctSettings : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static getNumberDeviceTypeRegistered()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    .line 8
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 9
    :cond_4
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of categoriesSpeaker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static getNumberDevicesSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_6
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumberDevicesSwitchOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberSpeakerOnlyMessageSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountSpeakerMessageSwitchOnOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberSpeakerSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_6
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumberSpeakerSwitchOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberTabletCallSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountTabletMsgSwitchOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberTabletMsgSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumberTabletMsgSwitchOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberTabletOnlyCallSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumberTabletOnlyCallSwitchOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberTabletOnlyMessageSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isCallAllowedSdByPd()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isMessageAllowedSdByPd()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountTabletMessageSwitchOnOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getNumberTabletSwitchOn()I
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v4

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_6
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumberTabletSwitchOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getSdCount()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5
    :cond_1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of SD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getSdOtherCount()I
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics$1;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManagerConstants$DeviceCategory:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 7
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Other device found - DeviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of Other device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getSdSpeakerCount()I
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v3

    if-ne v4, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 6
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Speaker found - DeviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of Speaker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getSdTabletCount()I
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v3

    if-ne v4, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 6
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tablet found - DeviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of Tablet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getUseMobileData()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 3
    sget-object v2, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics$1;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManagerConstants$NetworkMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private static getWatchCount()I
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v4, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v3}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceCategory()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v3

    if-ne v4, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 6
    sget-object v3, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Watch found - DeviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of Watch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static hasOOBE(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasPrimaryDevice(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static initSA(Landroid/app/Application;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initSA:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    .line 4
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;Lcom/samsung/android/cmcsetting/CmcSettingListener;)Z

    .line 5
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->isPD()I

    move-result v0

    sput v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    .line 6
    sget-boolean v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sConfigured:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v2, "4F0-399-565498"

    .line 8
    invoke-virtual {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ro.build.version.sep"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "TEST_VERSION"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAlwaysRunningApp(Z)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 12
    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 13
    sput-boolean v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sConfigured:Z

    .line 14
    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v2, "cmc_pref"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "register_status_logging_cmc"

    .line 15
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x8

    .line 16
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->startStatusLogging()V

    return-void
.end method

.method private static isPD()I
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v2, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics$1;->$SwitchMap$com$samsung$android$cmcsetting$CmcSettingManagerConstants$DeviceType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static saveCallAndMessageContinuityStatusPd(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move p1, v1

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMC_CALL_AND_MESSAGE_CONTINUITY_STATUS_PD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "statuslog"

    const-string v2, "7501"

    .line 3
    invoke-static {v1, p0, v0, v2, p1}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveCallAndMessageContinuityStatusSd(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasPrimaryDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_3

    move v1, v0

    .line 3
    :cond_3
    sget-object p1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMC_CALL_AND_MESSAGE_CONTINUITY_STATUS_SD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "statuslog"

    const-string v2, "7511"

    .line 4
    invoke-static {v0, p0, p1, v2, v1}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveCallControl(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getCallActivationInSD()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasPrimaryDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v0, v2

    .line 4
    :cond_1
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_CALL_CONTROL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7513"

    .line 5
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveMessageControl(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getMessageActivationInSD()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasPrimaryDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v0, v2

    .line 4
    :cond_1
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_MESSAGE_CONTROL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7514"

    .line 5
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveMultipleTabletsOnDifferentCallsAndMessagesSettings(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getMultipleTabletDifferenctSettings()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MULTIPLE_TABLETS_ON_DIFFERENT_CALLS_AND_MESSAGES_SETTINGS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7526"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNmsWorking()V
    .locals 5

    .line 1
    sget v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mNmsWorking:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "statuslog"

    const-string v4, "NMS Working"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static saveNumberOfDeviceTypeRegistered(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberDeviceTypeRegistered()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_DEVICE_TYPE_REGISTERED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7527"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfDevicesSwitchedOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberDevicesSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_DEVICES_SWITCHED_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7518"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfSpeakersMessagesOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberSpeakerOnlyMessageSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_SPEAKERS_MESSAGES_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7525"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfSpeakersSwitchedOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberSpeakerSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_SPEAKERS_SWITCHED_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7520"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfTabletsCallsOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberTabletCallSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_TABLETS_CALLS_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7521"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfTabletsMessagesOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberTabletMsgSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_TABLETS_MESSAGES_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7522"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfTabletsOnlyCallsOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberTabletOnlyCallSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_TABLETS_ONLY_CALLS_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7523"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfTabletsOnlyMessagesOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberTabletOnlyMessageSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_TABLETS_ONLY_MESSAGES_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7524"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveNumberOfTabletsSwitchedOn(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getNumberTabletSwitchOn()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NUMBER_OF_TABLETS_SWITCHED_ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7519"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveRegisteredDeviceCount(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getSdCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_REGISTERED_DEVICE_COUNT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7503"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveRegisteredOtherCount(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getSdOtherCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_REGISTERED_OTHER_COUNT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7507"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveRegisteredSpeakerCount(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getSdSpeakerCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_REGISTERED_SPEAKER_COUNT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7505"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveRegisteredTabletCount(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getSdTabletCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_REGISTERED_TABLET_COUNT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7504"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveRegisteredWatchCount(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getWatchCount()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_REGISTERED_WATCH_COUNT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7506"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveUseMobileData(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getUseMobileData()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v0, v2

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_USE_MOBILE_DATA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "statuslog"

    const-string v3, "7502"

    .line 4
    invoke-static {v2, p0, v1, v3, v0}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static saveUseMobileDataSd(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->getUseMobileData()I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasPrimaryDevice(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->hasOOBE(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    move v2, v1

    .line 4
    :cond_3
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMC_USE_MOBILE_DATA_SD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "statuslog"

    const-string v3, "7512"

    .line 5
    invoke-static {v1, p0, v0, v3, v2}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static sendFlowLog(I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    return-void
.end method

.method public static sendFlowLog(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFlowLog with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenValue(I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method

.method private static startStatusLogging()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    .line 2
    sget v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mIsPD:I

    const-string v2, "statuslog"

    if-nez v1, :cond_0

    const-string v1, "7501"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7502"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7503"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7504"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7505"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7506"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7507"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7518"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7519"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7520"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7521"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7522"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7523"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7524"

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7525"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7526"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7527"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "7511"

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7512"

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7513"

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    const-string v1, "7514"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    :goto_0
    const-string v1, "NMS Working"

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKey(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    .line 25
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    return-void
.end method

.method public static updateCMCStatusLogging(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NMS Working"

    .line 1
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->isPD()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7501"

    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7502"

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7503"

    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7504"

    .line 6
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7505"

    .line 7
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7506"

    .line 8
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7507"

    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7518"

    .line 10
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7519"

    .line 11
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7520"

    .line 12
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7521"

    .line 13
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7522"

    .line 14
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7523"

    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7524"

    .line 16
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7525"

    .line 17
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7526"

    .line 18
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7527"

    .line 19
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->isPD()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "7511"

    .line 21
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7512"

    .line 22
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7513"

    .line 23
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "7514"

    .line 24
    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static updateNmsWorking(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1
    sput p0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mNmsWorking:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 2
    sput p0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mNmsWorking:I

    :goto_0
    return-void
.end method

.method private static updateStatusLoggingHelper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->LOG_TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5bc4269b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "7527"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "7526"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "7525"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "7524"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "7523"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "7522"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_0

    :pswitch_6
    const-string v1, "7521"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_0

    :pswitch_7
    const-string v1, "7520"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_0

    :pswitch_8
    const-string v1, "7519"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "7518"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_0

    :pswitch_a
    const-string v1, "7514"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "7513"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_0

    :pswitch_c
    const-string v1, "7512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x12

    goto :goto_0

    :pswitch_d
    const-string v1, "7511"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x11

    goto :goto_0

    :pswitch_e
    const-string v1, "7507"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_f
    const-string v1, "7506"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_10
    const-string v1, "7505"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_11
    const-string v1, "7504"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_12
    const-string v1, "7503"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_13
    const-string v1, "7502"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_14
    const-string v1, "7501"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "NMS Working"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x15

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_4

    goto/16 :goto_1

    .line 3
    :pswitch_15
    invoke-static {}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNmsWorking()V

    goto/16 :goto_1

    .line 4
    :pswitch_16
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveCallControl(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5
    :pswitch_17
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveMessageControl(Landroid/content/Context;)V

    goto :goto_1

    .line 6
    :pswitch_18
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveUseMobileDataSd(Landroid/content/Context;)V

    goto :goto_1

    .line 7
    :pswitch_19
    sget-object p1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result p1

    .line 8
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveCallAndMessageContinuityStatusSd(Landroid/content/Context;Z)V

    goto :goto_1

    .line 9
    :pswitch_1a
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfDeviceTypeRegistered(Landroid/content/Context;)V

    goto :goto_1

    .line 10
    :pswitch_1b
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveMultipleTabletsOnDifferentCallsAndMessagesSettings(Landroid/content/Context;)V

    goto :goto_1

    .line 11
    :pswitch_1c
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfSpeakersMessagesOn(Landroid/content/Context;)V

    goto :goto_1

    .line 12
    :pswitch_1d
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfTabletsOnlyMessagesOn(Landroid/content/Context;)V

    goto :goto_1

    .line 13
    :pswitch_1e
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfTabletsOnlyCallsOn(Landroid/content/Context;)V

    goto :goto_1

    .line 14
    :pswitch_1f
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfTabletsMessagesOn(Landroid/content/Context;)V

    goto :goto_1

    .line 15
    :pswitch_20
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfTabletsCallsOn(Landroid/content/Context;)V

    goto :goto_1

    .line 16
    :pswitch_21
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfSpeakersSwitchedOn(Landroid/content/Context;)V

    goto :goto_1

    .line 17
    :pswitch_22
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfTabletsSwitchedOn(Landroid/content/Context;)V

    goto :goto_1

    .line 18
    :pswitch_23
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveNumberOfDevicesSwitchedOn(Landroid/content/Context;)V

    goto :goto_1

    .line 19
    :pswitch_24
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveRegisteredOtherCount(Landroid/content/Context;)V

    goto :goto_1

    .line 20
    :pswitch_25
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveRegisteredWatchCount(Landroid/content/Context;)V

    goto :goto_1

    .line 21
    :pswitch_26
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveRegisteredSpeakerCount(Landroid/content/Context;)V

    goto :goto_1

    .line 22
    :pswitch_27
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveRegisteredTabletCount(Landroid/content/Context;)V

    goto :goto_1

    .line 23
    :pswitch_28
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveRegisteredDeviceCount(Landroid/content/Context;)V

    goto :goto_1

    .line 24
    :pswitch_29
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveUseMobileData(Landroid/content/Context;)V

    goto :goto_1

    .line 25
    :pswitch_2a
    sget-object p1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result p1

    .line 26
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->saveCallAndMessageContinuityStatusPd(Landroid/content/Context;Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x19cd5f
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19cd7e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19cd85
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19cd9c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method
