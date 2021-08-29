.class public Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;
.super Ljava/lang/Object;
.source "CmcProviderParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetLineInfoList(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;-><init>()V

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

    goto :goto_3

    .line 7
    :pswitch_0
    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->getLocalPcscfAddr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setPcscfAddrList(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 8
    :pswitch_1
    aget-object v3, v3, v8

    invoke-static {v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->getLocalNmsAddr(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setNmsAddrList(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 9
    :pswitch_2
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setImpu(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :pswitch_3
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setMsisdn(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :pswitch_4
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setLineName(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :pswitch_5
    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setLineSlotIndex(I)V

    goto :goto_3

    .line 13
    :pswitch_6
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;->setLineId(Ljava/lang/String;)V

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "data is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_9

    .line 5
    new-instance v2, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;

    invoke-direct {v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;-><init>()V

    const-string v4, ","

    const/4 v5, 0x2

    .line 6
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    .line 7
    aget-object v6, p0, v4

    invoke-static {v2, v6}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->setDataOfDevices(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;Ljava/lang/String;)V

    .line 8
    array-length v6, p0

    if-lt v6, v5, :cond_8

    aget-object v6, p0, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 9
    :cond_1
    aget-object p0, p0, v3

    const-string v6, ",devicecategory"

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 10
    array-length v6, p0

    if-ge v6, v5, :cond_2

    .line 11
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data is invalid 3 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 12
    :cond_2
    aget-object v6, p0, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "data is invalid 4"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 14
    :cond_3
    aget-object v6, p0, v4

    const-string v7, "="

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 15
    array-length v7, v6

    if-ne v7, v5, :cond_4

    aget-object v7, v6, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 16
    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 17
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "devicecategory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 19
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "data is invalid 5"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    const-string v6, "###"

    .line 20
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 21
    aget-object v4, p0, v4

    invoke-static {v2, v4}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->setDataOfDevices(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    array-length v2, p0

    if-lt v2, v5, :cond_7

    aget-object v2, p0, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    aget-object p0, p0, v3

    goto/16 :goto_0

    .line 25
    :cond_7
    :goto_1
    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "there is no next data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 26
    :cond_8
    :goto_2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data is invalid 2 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 27
    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v3, :cond_a

    .line 28
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "list size is 0"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_a
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
            "Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v3}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->doGetLineInfoList(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcLineInfo;

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

.method private static getLocalActiveServices(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
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

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getLocalNmsAddr(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
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

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getLocalPcscfAddr(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
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

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
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

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static setDataOfDevices(Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->LOG_TAG:Ljava/lang/String;

    const-string p1, "data is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ","

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 5
    aget-object v2, p1, v1

    const-string v3, "="

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    if-ne v3, v4, :cond_2

    .line 7
    aget-object v3, v2, v0

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "deviceversion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "watchactiveservicetype"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "deviceid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_2

    :sswitch_3
    const-string v4, "devicecallactivation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_4
    const-string v4, "devicetype"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_5
    const-string v4, "devicename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v7

    goto :goto_2

    :sswitch_6
    const-string v6, "devicecategory"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_7
    const-string v4, "devicemessageactivation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_8
    const-string v4, "activeservices"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_9
    const-string v4, "lineid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_a
    const-string v4, "deviceactivation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x8

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 8
    :pswitch_0
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setCallActivation(Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :pswitch_1
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setMessageActivation(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :pswitch_2
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setActivation(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :pswitch_3
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceVersion(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :pswitch_4
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setLineId(Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :pswitch_5
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->getLocalWatchActiveServiceType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setWatchActiveServiceType(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 14
    :pswitch_6
    aget-object v2, v2, v7

    invoke-static {v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcProviderParser;->getLocalActiveServices(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setActiveServices(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 15
    :pswitch_7
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceType(Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :pswitch_8
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :pswitch_9
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :pswitch_a
    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Lcom/samsung/android/mdecservice/mdec/api/cmcproviderparser/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4de3d414 -> :sswitch_a
        -0x41b96ff1 -> :sswitch_9
        -0x34efd69c -> :sswitch_8
        -0x30730339 -> :sswitch_7
        -0x1392daac -> :sswitch_6
        0x2e9b7de1 -> :sswitch_5
        0x2e9e9290 -> :sswitch_4
        0x40d66dca -> :sswitch_3
        0x421cedf1 -> :sswitch_2
        0x555e87ba -> :sswitch_1
        0x6f1151c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
