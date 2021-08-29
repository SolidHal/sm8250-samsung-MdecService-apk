.class public Lcom/samsung/android/sdk/accessory/SAConfigUtil;
.super Ljava/lang/Object;
.source "SAConfigUtil.java"


# static fields
.field static final SA_ERROR_INVALID_APPLICATION_NAME:I = 0x1

.field static final SA_ERROR_INVALID_CHANNEL_ID:I = 0x8

.field static final SA_ERROR_INVALID_CHANNEL_QOS_PRIORITY:I = 0xa

.field static final SA_ERROR_INVALID_CHANNEL_QOS_RATE:I = 0x9

.field static final SA_ERROR_INVALID_CHANNEL_QOS_TYPE:I = 0xb

.field static final SA_ERROR_INVALID_FEATURE_TYPE:I = 0x11

.field static final SA_ERROR_INVALID_PROFILE_ID:I = 0x3

.field static final SA_ERROR_INVALID_PROFILE_NAME:I = 0x2

.field static final SA_ERROR_INVALID_PROFILE_ROLE:I = 0x4

.field static final SA_ERROR_INVALID_PROFILE_VERSION:I = 0x6

.field static final SA_ERROR_INVALID_SERVICE_IMPL:I = 0x5

.field static final SA_ERROR_INVALID_TRANSPORT_TYPE:I = 0x7

.field static final SA_ERROR_NO_CHANNEL:I = 0xd

.field static final SA_ERROR_NO_CONFIG_FILE:I = 0x10

.field static final SA_ERROR_NO_CONFIG_META_DATA:I = 0xf

.field static final SA_ERROR_NO_SERVICE_PROFILE:I = 0xe

.field static final SA_ERROR_NO_TRANSPORT:I = 0xc

.field private static final SERVICE_LIMITS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;


# instance fields
.field private applicationName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mServiceEndpointsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/SAServiceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SA_SDK]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v0, "ANY"

    const-string v1, "ONE_ACCESSORY"

    const-string v2, "ONE_PEERAGENT"

    .line 2
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->sOnlyInstance:Lcom/samsung/android/sdk/accessory/SAConfigUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized parseServicesXML()Z
    .locals 23

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v3, "Parse Accssory Service profile xml file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->readXml()[B

    move-result-object v2

    .line 5
    new-instance v3, Ljava/lang/String;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v2, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 8
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    .line 10
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Wrong Schema of xml file. Please check"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    move v14, v5

    move v15, v14

    move/from16 v16, v15

    move/from16 v18, v16

    move/from16 v19, v18

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    :goto_1
    if-eq v3, v4, :cond_21

    if-nez v3, :cond_3

    .line 12
    sget-object v7, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Start document"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v5

    :cond_2
    move-object v5, v6

    move-object v7, v12

    goto/16 :goto_9

    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1b

    if-eqz v2, :cond_1b

    .line 13
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application"

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v5, "name"

    .line 15
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    const-string v7, "application"

    .line 16
    invoke-direct {v1, v7, v5, v4}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v5, v6

    move-object v7, v12

    const/16 v20, 0x0

    goto/16 :goto_9

    :cond_4
    const-string v8, "serviceProfile"

    .line 17
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v7, "serviceImpl"

    .line 18
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "serviceImpl"

    const/4 v8, 0x5

    .line 19
    invoke-direct {v1, v7, v12, v8}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "name"

    .line 20
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "name"

    .line 21
    invoke-direct {v1, v7, v10, v5}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "role"

    .line 22
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "role"

    const/4 v8, 0x4

    .line 23
    invoke-direct {v1, v7, v11, v8}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "id"

    .line 24
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "id"

    const/4 v8, 0x3

    .line 25
    invoke-direct {v1, v7, v9, v8}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "version"

    .line 26
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "version"

    const/4 v8, 0x6

    .line 27
    invoke-direct {v1, v7, v13, v8}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "serviceLimit"

    .line 28
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 29
    sget-object v8, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v8, v8, v20

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 30
    :cond_5
    sget-object v8, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v14, v4

    goto :goto_3

    .line 31
    :cond_6
    sget-object v8, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->SERVICE_LIMITS:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v14, v5

    goto :goto_3

    :cond_7
    const/16 v20, 0x0

    :goto_2
    move/from16 v14, v20

    :cond_8
    :goto_3
    const-string v5, "serviceTimeout"

    .line 32
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_9

    :catch_1
    move-object v5, v6

    move/from16 v15, v20

    goto/16 :goto_a

    .line 33
    :cond_9
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-gez v5, :cond_a

    move/from16 v15, v20

    goto :goto_4

    :cond_a
    move v15, v5

    goto :goto_4

    :cond_b
    const/16 v20, 0x0

    :try_start_5
    const-string v8, "transport"

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v5, "type"

    .line 35
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Transport"

    const/4 v8, 0x7

    .line 36
    invoke-direct {v1, v7, v5, v8}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v7, "TRANSPORT_BT"

    .line 37
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    or-int/lit8 v16, v16, 0x1

    :goto_4
    move-object v5, v6

    goto/16 :goto_a

    :cond_c
    const-string v7, "TRANSPORT_WIFI"

    .line 38
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    or-int/lit8 v16, v16, 0x2

    goto :goto_4

    :cond_d
    const-string v7, "TRANSPORT_BLE"

    .line 39
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    or-int/lit8 v16, v16, 0x4

    goto :goto_4

    :cond_e
    const-string v7, "TRANSPORT_USB"

    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v16, v16, 0x8

    goto :goto_4

    :cond_f
    const-string v8, "serviceChannel"

    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const-string v7, "id"

    .line 42
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "serviceChannel/id"

    const/16 v5, 0x8

    .line 43
    invoke-direct {v1, v8, v7, v5}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v5, "dataRate"

    .line 44
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    .line 45
    sget-object v5, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v8, "Parsing new attribute failed.Trying to access old attribute"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "qosDataRate"

    .line 46
    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_10
    const-string v8, "serviceChannel/qoSDataRate"

    const/16 v4, 0x9

    .line 47
    invoke-direct {v1, v8, v5, v4}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v4, "priority"

    .line 48
    invoke-interface {v2, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    const-string v4, "qosPriority"

    .line 49
    invoke-interface {v2, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_11
    const-string v8, "serviceChannel/qoSPriority"

    const/16 v6, 0xa

    .line 50
    invoke-direct {v1, v8, v4, v6}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "reliability"

    const/4 v8, 0x0

    .line 51
    invoke-interface {v2, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    const-string v6, "qosType"

    .line 52
    invoke-interface {v2, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_12
    const-string v8, "serviceChannel/qoSType"

    move-object/from16 v22, v12

    const/16 v12, 0xb

    .line 53
    invoke-direct {v1, v8, v6, v12}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "Low"

    .line 54
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_13
    move/from16 v5, v20

    goto :goto_5

    :cond_14
    const-string v8, "High"

    .line 55
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    :goto_5
    const-string v8, "Low"

    .line 56
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_15
    move/from16 v4, v20

    goto :goto_6

    :cond_16
    const-string v8, "Medium"

    .line 57
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v4, 0x1

    goto :goto_6

    :cond_17
    const-string v8, "High"

    .line 58
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x2

    :goto_6
    const-string v8, "enable"

    .line 59
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_7

    :cond_18
    move/from16 v6, v20

    .line 60
    :goto_7
    new-instance v8, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v7, v5, v4, v6}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;-><init>(IIII)V

    .line 62
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v22

    const/4 v5, 0x0

    const/16 v19, 0x1

    goto/16 :goto_a

    :cond_19
    move-object/from16 v22, v12

    const-string v4, "feature"

    .line 63
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "type"

    const/4 v5, 0x0

    .line 64
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Feature"

    const/16 v7, 0x11

    .line 65
    invoke-direct {v1, v6, v4, v7}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "message"

    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v12, v22

    const/16 v18, 0x1

    goto/16 :goto_a

    :cond_1a
    const/4 v5, 0x0

    goto :goto_8

    :cond_1b
    move-object v5, v6

    move-object/from16 v22, v12

    const/16 v20, 0x0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    if-eqz v2, :cond_1e

    .line 67
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "serviceProfile"

    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    new-instance v6, Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    iget-object v8, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->applicationName:Ljava/lang/String;

    move-object v7, v6

    move-object/from16 v21, v22

    move-object/from16 v12, v21

    move-object/from16 v17, v4

    invoke-direct/range {v7 .. v19}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;II)V

    .line 72
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v4, :cond_1c

    .line 73
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    .line 74
    :cond_1c
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    move-object/from16 v7, v21

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move/from16 v14, v20

    move v15, v14

    move/from16 v16, v15

    move/from16 v18, v16

    move/from16 v19, v18

    goto :goto_a

    :cond_1d
    :goto_8
    move-object/from16 v7, v22

    goto :goto_9

    :cond_1e
    move-object/from16 v7, v22

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1f

    if-eqz v2, :cond_1f

    .line 76
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1f
    :goto_9
    move-object v12, v7

    :goto_a
    if-eqz v2, :cond_20

    .line 77
    :try_start_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    .line 78
    :catch_2
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :catch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_b
    move-object v6, v5

    move/from16 v5, v20

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 80
    :cond_21
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    const-string v2, "End document"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, v1, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_22

    .line 82
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 83
    :cond_22
    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to parse the accessory services configuration file"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "XmlPullParserFactory Exception for Accssory Service profile XML file"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse the accessory services configuration file :"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method declared-synchronized fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->parseServicesXML()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->mServiceEndpointsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAServiceProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 5
    :cond_1
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchServicesDescription: Class not found in registered list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 6
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
