.class public Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;
.super Ljava/lang/Object;
.source "MmsNotificationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;,
        Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$APPLICATION_TYPE;,
        Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$DDM_TYPE;,
        Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$NOTI_STATUS;
    }
.end annotation


# static fields
.field private static final ACQUAINTED:Ljava/lang/String; = "Acquainted"

.field private static final APPLICATION:Ljava/lang/String; = "Application"

.field private static final CONTACT_NAME:Ljava/lang/String; = "ContactName"

.field private static final CONTENT_LOCATION:Ljava/lang/String; = "ContentLocation"

.field private static final DATE:Ljava/lang/String; = "Date"

.field private static final DDM_STATUS:Ljava/lang/String; = "DdmStatus"

.field private static final ITEM_ID:Ljava/lang/String; = "ItemId"

.field private static final KEY_PHONE_NUMBER_LIST:Ljava/lang/String; = "PhoneNumber"

.field public static final LOG_TAG:Ljava/lang/String; = "MmsNotiInfo"

.field private static final MAIN_TEXT:Ljava/lang/String; = "MainText"

.field private static final MMS_TYPE:Ljava/lang/String; = "MmsType"

.field private static final NOTIFICATION_STATUS:Ljava/lang/String; = "NotificationStatus"

.field private static final READ:Ljava/lang/String; = "Read"

.field private static final SIM_ID:Ljava/lang/String; = "SimId"

.field private static final TEXT_MESSAGE:Ljava/lang/String; = "TextMessage"

.field private static final THREAD_ID:Ljava/lang/String; = "ThreadId"

.field private static final THREAD_MUTE:Ljava/lang/String; = "ThreadMute"


# instance fields
.field private mAcquainted:Z

.field private mApplication:Ljava/lang/String;

.field private mContactName:Ljava/lang/String;

.field private mContentLocation:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDdmStatus:Ljava/lang/Integer;

.field private mItemId:Ljava/lang/Long;

.field private mJsonObj:Lorg/json/JSONObject;

.field private mMainText:Ljava/lang/String;

.field private mMmsType:I

.field private mNotiStatus:I

.field private mNumber:Ljava/lang/String;

.field private mPhoneNumberLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;",
            ">;"
        }
    .end annotation
.end field

.field private mRead:Z

.field private mSimId:I

.field private mTextMessage:Ljava/lang/String;

.field private mThreadId:J

.field private mThreadMute:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mAcquainted:Z

    .line 3
    iput v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mNotiStatus:I

    const-string v2, ""

    .line 4
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mApplication:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mItemId:Ljava/lang/Long;

    .line 6
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mDate:Ljava/lang/String;

    .line 7
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mContactName:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMainText:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mTextMessage:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mDdmStatus:Ljava/lang/Integer;

    .line 11
    iput-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mRead:Z

    .line 12
    iput v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMmsType:I

    const/4 v3, -0x1

    .line 13
    iput v3, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mSimId:I

    const-wide/16 v3, -0x1

    .line 14
    iput-wide v3, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mThreadId:J

    .line 15
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mThreadMute:Ljava/lang/Boolean;

    .line 16
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mNumber:Ljava/lang/String;

    .line 17
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mContentLocation:Ljava/lang/String;

    move v2, p1

    .line 18
    iput v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mNotiStatus:I

    move v2, p2

    .line 19
    iput v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mSimId:I

    move-object v2, p3

    .line 20
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mApplication:Ljava/lang/String;

    move-object v2, p4

    .line 21
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mDate:Ljava/lang/String;

    .line 22
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mDdmStatus:Ljava/lang/Integer;

    .line 23
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mItemId:Ljava/lang/Long;

    move-wide v2, p8

    .line 24
    iput-wide v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mThreadId:J

    .line 25
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mThreadMute:Ljava/lang/Boolean;

    move-object/from16 v2, p11

    .line 26
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMainText:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 27
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mTextMessage:Ljava/lang/String;

    move-object/from16 v2, p13

    .line 28
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v2, p14

    .line 29
    iput-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mContentLocation:Ljava/lang/String;

    .line 30
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mApplication:Ljava/lang/String;

    const-string v3, "MmsNoti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x82

    .line 31
    iput v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMmsType:I

    .line 32
    iput-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mRead:Z

    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mApplication:Ljava/lang/String;

    const-string v3, "Ddm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    iput v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMmsType:I

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mRead:Z

    .line 36
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mPhoneNumberLists:Ljava/util/List;

    .line 37
    new-instance v2, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;

    invoke-direct {v2, p0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;-><init>(Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mNumber:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public encodeJSON()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "Acquainted"

    .line 2
    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mAcquainted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "NotificationStatus"

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mNotiStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "Application"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mApplication:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "MainText"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMainText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "TextMessage"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mTextMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "DdmStatus"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mDdmStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "ContactName"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mContactName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "MmsType"

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mMmsType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "Read"

    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mRead:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "ItemId"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mItemId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "ThreadId"

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mThreadId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "ThreadMute"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mThreadMute:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "SimId"

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "Date"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v1, "ContentLocation"

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mPhoneNumberLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;

    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo$PhoneNumberList;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    const-string v2, "PhoneNumber"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getNotiType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mApplication:Ljava/lang/String;

    const-string v1, "Ddm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ddm"

    return-object v0

    :cond_0
    const-string v0, "sms"

    return-object v0
.end method

.method public getObj()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->encodeJSON()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/MmsNotificationInfo;->mJsonObj:Lorg/json/JSONObject;

    return-object v0
.end method
