.class public Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


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

    const-class v1, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v2, "SHA-256"

    .line 1
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 7
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception p0

    .line 11
    :try_start_2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 14
    :goto_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "salt("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), hashedData("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 15
    :cond_3
    :goto_2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no proper information"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getBlankHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getBlankHashedWifiMacAddr:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getFactoryMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "original Mac Addr is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    .line 4
    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBluetoothMacAddr()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getBluetoothMacAddr"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "device does not support bluetooth"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "originalBluetoothMacAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DeviceInformation;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WIFI_MAC"

    .line 4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    sget-object v2, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error is occurred"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :goto_2
    if-eqz p0, :cond_2

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_2
    throw v0
.end method

.method public static getFactoryMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getFactoryMacAddrR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getFactoryMacAddrQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Not support and SDK (29)"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory MAC Addr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getFactoryMacAddrQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "wifi"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "callSECStringApi"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Landroid/os/Message;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "SEC_COMMAND_ID_TEST_GET_MODE_INFO"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v3, v2

    .line 4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v3, v2

    .line 5
    :goto_1
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_2
    move-object v4, v2

    :goto_3
    if-nez v4, :cond_0

    return-object v2

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 7
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, v5, Landroid/os/Message;->what:I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 9
    :goto_4
    iput v1, v5, Landroid/os/Message;->arg1:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v1

    .line 10
    invoke-static {v3, p0, v0}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    const-string v0, "\n"

    const-string v1, ""

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFactoryMacAddrR(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "sem_wifi"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getFactoryMacAddress"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, p0, v1}, Lcom/samsung/android/mdeccommon/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getHashedBluetoothMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getHashedBluetoothMacAddr"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getBluetoothMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "original bt id is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "guid is null"

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_2
    invoke-static {v1, p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHashedWifiMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getHashedWifiMacAddr:"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->getFactoryMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "original Mac Addr is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdecservice/entitlement/utils/EntitlementProviderUtils;->getSaUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object p0, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "guid is null"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :cond_1
    invoke-static {v0, p0}, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->generateSHA256HashedResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putCachedWifiMacAddr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "WIFI_MAC"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DeviceInformation;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/utils/ConnectivityUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "wifi db update failed..insert new row"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DeviceInformation;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method
