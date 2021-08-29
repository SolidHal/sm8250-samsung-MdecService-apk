.class public Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;
.super Ljava/lang/Object;
.source "CheckForUpdates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForDownloadTask;,
        Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForUpdateTask;,
        Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;
    }
.end annotation


# static fields
.field private static final CALLER_TYPE:Ljava/lang/String; = "CallerType"

.field public static final CONNECTION_TIMEOUT_VALUE:I = 0x7530

.field private static final DIRECT_CALL:Ljava/lang/String; = "directcall"

.field private static final GUID:Ljava/lang/String; = "GUID"

.field private static final KEY_CONTACTS__SKIP_VERSION_CODE:Ljava/lang/String; = "contacts_version_code"

.field private static final KEY_HAS_NEW_VERSION:Ljava/lang/String; = "has_new_version"

.field private static final KEY_HIDE_CONTACTS_BADGE:Ljava/lang/String; = "hide_contacts_badge"

.field public static final MDEC_PACKAGE:I = 0xb

.field private static final RESULT_CODE_DOWNLOAD_AVAILABLE:I = 0x1

.field private static final RESULT_CODE_NOT_AVAILABLE:I = 0x0

.field private static final RESULT_CODE_NOT_NECESSARY_TO_UPDATE:I = 0x1

.field public static final RESULT_CODE_NOT_REQUESTED:I = 0x4

.field public static final RESULT_CODE_NO_NETWORK:I = 0x3

.field private static final RESULT_CODE_PARAMETER_MISSING:I = 0x3e8

.field public static final RESULT_CODE_UPDATE_AVAILABLE:I = 0x2

.field private static final SAMSUNG_APPS_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.Main"

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final TAG:Ljava/lang/String; = "mdec/APPUPDATE-CheckForUpdates"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_DOWNLOAD:I = 0x2

.field private static final TYPE_UPDATE:I = 0x1

.field private static final UPDATE_SAVED_TIME_FOR_INCALLUI:Ljava/lang/String; = "UPDATE_SAVED_TIME_FOR_INCALLUI"

.field private static final UPDATE_SAVED_TIME_FOR_MDEC:Ljava/lang/String; = "UPDATE_SAVED_TIME_FOR_CONTACTS"

.field private static final UPDATE_TIME_MS:J = 0x5265c00L

.field private static sClearContactsBadge:Z

.field private static sContactsResult:I

.field private static sIsRetry:Z

.field private static sStubDownloadData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

.field private static sStubUpdateData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

.field private static sUiListener:Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sStubDownloadData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    const/4 v0, -0x1

    .line 3
    sput v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sContactsResult:I

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sIsRetry:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sClearContactsBadge:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sClearContactsBadge:Z

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->getMarketResult(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sContactsResult:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .line 1
    sput p0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sContactsResult:I

    return p0
.end method

.method static synthetic access$400()Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sIsRetry:Z

    return v0
.end method

.method static synthetic access$600()Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sUiListener:Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;

    return-object v0
.end method

.method static synthetic access$700()Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sStubDownloadData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    return-object v0
.end method

.method private static checkUpdatepk(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForUpdateTask;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForUpdateTask;-><init>(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForUpdateTask;->execute()V

    return-void
.end method

.method public static getContactsResult()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_new_version"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sContactsResult:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sContactsResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/APPUPDATE-CheckForUpdates"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sContactsResult:I

    return v0
.end method

.method private static getMarketResult(Ljava/lang/String;I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMarketResult type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/APPUPDATE-CheckForUpdates"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getUpdateCheckUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->getResult(Ljava/net/URL;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static getResult(Ljava/net/URL;I)I
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/APPUPDATE-CheckForUpdates"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x7530

    .line 5
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;-><init>()V

    .line 11
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 12
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    if-eq v5, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "END_TAG "

    .line 13
    invoke-static {v1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "START_TAG "

    .line 14
    invoke-static {v1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v3, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->setStubdata(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    .line 16
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getResultCode()Ljava/lang/String;

    move-result-object v3

    if-ne p1, v7, :cond_3

    .line 18
    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sStubUpdateData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    goto :goto_2

    .line 19
    :cond_3
    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sStubDownloadData:Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    .line 20
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, 0x3e8

    if-ne v6, p1, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    if-ne v7, p1, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    if-ne v0, p1, :cond_7

    move v2, v0

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 21
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-eqz p0, :cond_a

    .line 23
    :goto_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p0, v0

    .line 24
    :goto_6
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_9

    .line 25
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    :goto_8
    return v2

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_b

    .line 27
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_9
    if-eqz p0, :cond_c

    .line 29
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 30
    :cond_c
    throw p1
.end method

.method static jumpToSamsungApps()V
    .locals 2

    const-string v0, "mdec/APPUPDATE-CheckForUpdates"

    const-string v1, "jumpToSamsungApps"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForDownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForDownloadTask;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$1;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$CheckForDownloadTask;->execute()V

    return-void
.end method

.method private static needToCheckServer(Landroid/app/Activity;I)Z
    .locals 12

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "UPDATE_SAVED_TIME_FOR_CONTACTS"

    const-wide/16 v4, 0x0

    .line 3
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const/4 v6, 0x1

    const-string v7, "mdec/APPUPDATE-CheckForUpdates"

    if-eqz p0, :cond_0

    .line 4
    instance-of p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    if-eqz p0, :cond_0

    const-string p0, "AboutPageActivity needToCheckServer"

    .line 5
    invoke-static {v7, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v6

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTime("

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "), savedTime("

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "), diff("

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v1, v4

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v10, 0x5265c00

    cmp-long p0, v8, v10

    if-lez p0, :cond_2

    const-string p0, "needToCheckServer true"

    .line 8
    invoke-static {v7, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xb

    if-ne p1, p0, :cond_1

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "UPDATE_SAVED_TIME_FOR_INCALLUI"

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return v6

    :cond_2
    cmp-long p0, v1, v4

    if-nez p0, :cond_3

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const-string p0, "needToCheckServer false"

    .line 12
    invoke-static {v7, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static needToShowBadge(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "has_new_version"

    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "hide_contacts_badge"

    .line 4
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v2, "mdec/APPUPDATE-CheckForUpdates"

    if-eqz p0, :cond_1

    const-string p0, "CMC Settings needToShowBadge false"

    .line 5
    invoke-static {v2, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMC Settings needToShowBadge : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static setIsRetry(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sIsRetry:Z

    return-void
.end method

.method private static setStubdata(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V
    .locals 4

    const-string v0, "mdec/APPUPDATE-CheckForUpdates"

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    const-string v2, "appId"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setAppId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v2, "resultCode"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setResultCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "resultMsg"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setResultMsg(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultMsg: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "versionCode"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setVersionCode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "versionName"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setVersionName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "contentSize"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setContentSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "downloadURI"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadURI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setDownloadURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "deltaDownloadURI"

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deltaDownloadURI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setDeltaDownloadURI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "deltaContentSize"

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deltaContentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setDeltaContentSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "signature"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "gSignatureDownloadURL"

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gSignatureDownloadURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setgSignatureDownloadURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v2, "productId"

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setProductId(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v2, "productName"

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setProductName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public static setUiUpdateListener(Landroid/app/Activity;ILcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiUpdateListener (needToCheckUpdate, clearBadge) : ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdec/APPUPDATE-CheckForUpdates"

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->needToCheckServer(Landroid/app/Activity;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    sput-object p2, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->sUiListener:Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;

    if-eqz p3, :cond_1

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->checkUpdatepk(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
