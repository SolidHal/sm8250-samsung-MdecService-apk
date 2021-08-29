.class public Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;
.super Ljava/lang/Object;
.source "AppsStubUtil.java"


# static fields
.field public static final APK_DOWNLOAD_DIR:Ljava/io/File;

.field public static final APK_FILE_PREFIX:Ljava/lang/String;

.field public static final APK_FILE_SUFFIX:Ljava/lang/String; = ".apk"

.field private static final GALAXY_APPS_TEST_FILE_PATH:Ljava/lang/String;

.field private static final GET_CHINA_URL:Ljava/lang/String; = "https://cn-ms.samsungapps.com/getCNVasURL.as"

.field private static final GET_DOWNLOAD_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubDownload.as"

.field private static final MCC_OF_CHINA:Ljava/lang/String; = "460"

.field public static final REQUEST_GET_DOWNLOAD_URL:I = 0x2

.field public static final REQUEST_UPDATE_CHECK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "mdec/APPUPDATE-AppsStubUtil"

.field static final TAG_APP_ID:Ljava/lang/String; = "appId"

.field private static final TAG_CALLER_ID:Ljava/lang/String; = "callerId"

.field private static final TAG_CSC:Ljava/lang/String; = "csc"

.field private static final TAG_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final TAG_ENCIMEI:Ljava/lang/String; = "encImei"

.field private static final TAG_MCC:Ljava/lang/String; = "mcc"

.field private static final TAG_MNC:Ljava/lang/String; = "mnc"

.field private static final TAG_PD:Ljava/lang/String; = "pd"

.field static final TAG_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field static final TAG_RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field private static final TAG_SDKVER:Ljava/lang/String; = "sdkVer"

.field private static final TAG_SYSTEM_ID:Ljava/lang/String; = "systemId"

.field static final TAG_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field static final TAG_VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static final UPDATE_CHECK_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

.field private static final UT_DEVICE_ID:Ljava/lang/String; = "BIXBY-UT-DREAM"

.field private static final UT_TEST_FILE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->APK_DOWNLOAD_DIR:Ljava/io/File;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->APK_FILE_PREFIX:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/go_to_andromeda.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->GALAXY_APPS_TEST_FILE_PATH:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/go_to_bixby.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->UT_TEST_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChinaUrl()Ljava/lang/String;
    .locals 15

    const-string v0, "mdec/APPUPDATE-AppsStubUtil"

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "StubUtil"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "cnVasURL"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "cnVasTime"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v10, v8

    if-gtz v6, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v8, "https://cn-ms.samsungapps.com/getCNVasURL.as"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x1

    .line 6
    :try_start_1
    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 7
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v8

    .line 8
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v10, " : "

    if-eqz v9, :cond_2

    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 10
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 12
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v9, v8, :cond_a

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 18
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 19
    :goto_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 20
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_6

    .line 22
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 23
    :cond_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 24
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 25
    new-instance v10, Ljava/io/StringReader;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 26
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_3
    if-eq v8, v1, :cond_8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_7

    .line 27
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "serverURL"

    .line 28
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 29
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 30
    :cond_7
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    .line 31
    :cond_8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v6, :cond_b

    .line 36
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 37
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v8

    if-eqz v9, :cond_9

    .line 38
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v9

    :try_start_7
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v8

    .line 39
    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "status code "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " != "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v6

    goto :goto_7

    :catch_0
    move-object v1, v6

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_1
    :goto_5
    :try_start_8
    const-string v6, "IOException or XmlPullParserException"

    .line 40
    invoke-static {v0, v6}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 41
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_b

    .line 46
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    :goto_6
    return-object v5

    .line 47
    :goto_7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 48
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 49
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v2, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_c

    .line 52
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 53
    :cond_c
    throw v0
.end method

.method public static getCsc()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->UT_TEST_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "mdec/APPUPDATE-AppsStubUtil"

    if-eqz v0, :cond_0

    const-string v0, "Return virtual device id for UT "

    .line 2
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BIXBY-UT-DREAM"

    return-object v0

    :cond_0
    const-string v0, "Return real device id"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSIMMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https://vas.samsungapps.com/stub/stubDownload.as"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getChinaUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vas.samsungapps.com"

    .line 4
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appId"

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callerId"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getEncImei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encImei"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 9
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMnc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mnc"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getCsc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "csc"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVer"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 14
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getSystemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemId"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 15
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getPd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pd"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDownloadUrl(Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMcc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https://vas.samsungapps.com/stub/stubDownload.as"

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getChinaUrl()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vas.samsungapps.com"

    .line 20
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appId"

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callerId"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getEncImei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encImei"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 25
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMnc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mnc"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getCsc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "csc"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVer"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getPd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pd"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    new-instance p1, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;

    invoke-direct {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;-><init>()V

    const/4 v1, 0x2

    .line 32
    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->setType(I)V

    .line 33
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->setUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->setListener(Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;)V

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->run()V

    return-void
.end method

.method private static getEncImei()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/MultiSimUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 6
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 7
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "mdec/APPUPDATE-AppsStubUtil"

    const-string v1, "getEncImei ex"

    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/MultiSimUtil;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/MultiSimUtil;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getMnc()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/MultiSimUtil;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/MultiSimUtil;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static getPd()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->GALAXY_APPS_TEST_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "mdec/APPUPDATE-AppsStubUtil"

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->UT_TEST_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Targeting to Sales Server"

    .line 2
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Targeting to QA Server"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    return-object v0
.end method

.method private static getSdkVer()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSystemId()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUpdateCheckUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSIMMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "460"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "https://vas.samsungapps.com/stub/stubUpdateCheck.as"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getChinaUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "vas.samsungapps.com"

    .line 4
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appId"

    .line 6
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callerId"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 8
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "versionCode"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 9
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMcc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcc"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 11
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getMnc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mnc"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getCsc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "csc"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getSdkVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVer"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 14
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getSystemId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemId"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 15
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getPd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pd"

    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->getVersionCode(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDownloadAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDownloadNotAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isError(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNoMatchingApplication(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUpdateAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isUpdateNotNecessary(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static validateApkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 2
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 6
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object p0

    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "mdec/APPUPDATE-AppsStubUtil"

    const-string p1, "Exception"

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method
