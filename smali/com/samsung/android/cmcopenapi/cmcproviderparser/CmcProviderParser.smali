.class public Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;
.super Ljava/lang/Object;
.source "CmcProviderParser.java"


# static fields
.field private static final DELIMETER_FOR_KEY_VALUE:Ljava/lang/String; = "="

.field private static final DELIMETER_FOR_PAIR:Ljava/lang/String; = ","

.field private static final DELIMETER_FOR_ROW:Ljava/lang/String; = "###"

.field private static final KEY_ACTIVE_SERVICES:Ljava/lang/String; = "activeservices"

.field private static final KEY_DEVICE_CATEGORY:Ljava/lang/String; = "devicecategory"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceid"

.field private static final KEY_DEVICE_NAME:Ljava/lang/String; = "devicename"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "devicetype"

.field private static final KEY_DEVICE_VERSION:Ljava/lang/String; = "deviceversion"

.field private static final KEY_IMPU:Ljava/lang/String; = "impu"

.field private static final KEY_LINE_ID:Ljava/lang/String; = "lineid"

.field private static final KEY_LINE_NAME:Ljava/lang/String; = "linename"

.field private static final KEY_LINE_SLOT_INDEX:Ljava/lang/String; = "lineslotindex"

.field private static final KEY_MSISDN:Ljava/lang/String; = "msisdn"

.field private static final KEY_NMS_ADDR:Ljava/lang/String; = "nmsaddr"

.field private static final KEY_PCSCF_ADDR:Ljava/lang/String; = "pcscfaddr"

.field private static final KEY_WATCH_ACTIVE_SERVICE_TYPE:Ljava/lang/String; = "watchactiveservicetype"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetDeviceInfoList(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;-><init>()V

    const-string v1, ","

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-object v3, p0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 6
    aget-object v4, v3, v1

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "deviceversion"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_1
    const-string v5, "watchactiveservicetype"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_2
    const-string v5, "deviceid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v1

    goto :goto_2

    :sswitch_3
    const-string v5, "devicetype"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    const-string v5, "devicename"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v8

    goto :goto_2

    :sswitch_5
    const-string v7, "devicecategory"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_6
    const-string v5, "activeservices"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_7
    const-string v5, "lineid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 7
    sget-object v4, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key is invalid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 8
    :pswitch_0
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setDeviceVersion(Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :pswitch_1
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setLineId(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :pswitch_2
    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->getLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setActiveServices(Ljava/util/List;)V

    goto :goto_3

    .line 11
    :pswitch_3
    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->getLocalActiveServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setActiveServices(Ljava/util/List;)V

    goto :goto_3

    .line 12
    :pswitch_4
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setDeviceType(Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :pswitch_5
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :pswitch_6
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :pswitch_7
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_1
    sget-object v4, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pair is invalid : key("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41b96ff1 -> :sswitch_7
        -0x34efd69c -> :sswitch_6
        -0x1392daac -> :sswitch_5
        0x2e9b7de1 -> :sswitch_4
        0x2e9e9290 -> :sswitch_3
        0x421cedf1 -> :sswitch_2
        0x555e87ba -> :sswitch_1
        0x6f1151c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static doGetLineInfoList(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;-><init>()V

    const-string v1, ","

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-object v3, p0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 6
    aget-object v4, v3, v1

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "pcscfaddr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_1
    const-string v5, "nmsaddr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_2
    const-string v5, "lineslotindex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v8

    goto :goto_2

    :sswitch_3
    const-string v7, "linename"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :sswitch_4
    const-string v5, "impu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string v5, "msisdn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_6
    const-string v5, "lineid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v1

    goto :goto_2

    :cond_0
    :goto_1
    move v5, v6

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 7
    sget-object v4, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key is invalid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 8
    :pswitch_0
    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->getLocalPcscfAddrList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setPcscfAddrList(Ljava/util/List;)V

    goto :goto_3

    .line 9
    :pswitch_1
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setNmsAddr(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :pswitch_2
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setImpu(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :pswitch_3
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setMsisdn(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :pswitch_4
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setLineName(Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :pswitch_5
    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setLineSlotIndex(I)V

    goto :goto_3

    .line 14
    :pswitch_6
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;->setLineId(Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_1
    sget-object v4, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pair is invalid : key("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "), length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41b96ff1 -> :sswitch_6
        -0x3f79be26 -> :sswitch_5
        0x316229 -> :sswitch_4
        0x46e5107f -> :sswitch_3
        0x4bdfd020 -> :sswitch_2
        0x7b6fdc85 -> :sswitch_1
        0x7c2c47b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDeviceInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "data is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "###"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->doGetDeviceInfoList(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcDeviceInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ge p0, v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getLineInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "data is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "###"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcProviderParser;->doGetLineInfoList(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/cmcproviderparser/CmcLineInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ge p0, v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static getLocalActiveServices(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getLocalPcscfAddrList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
