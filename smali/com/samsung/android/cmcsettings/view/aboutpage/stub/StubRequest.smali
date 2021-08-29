.class public Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;
.super Landroid/os/AsyncTask;
.source "StubRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final CONTENT_SIZE:Ljava/lang/String; = "contentSize"

.field private static final DELTA_CONTENT_SIZE:Ljava/lang/String; = "deltaContentSize"

.field private static final DELTA_DOWNLOAD_URI:Ljava/lang/String; = "deltaDownloadURI"

.field private static final DOWNLOAD_URI:Ljava/lang/String; = "downloadURI"

.field private static final G_SIGNATURE_DOWNLOAD_URL:Ljava/lang/String; = "gSignatureDownloadURL"

.field private static final PRODUCE_NAME:Ljava/lang/String; = "productName"

.field private static final PRODUCT_ID:Ljava/lang/String; = "productId"

.field private static final RESULT_CODE:Ljava/lang/String; = "resultCode"

.field private static final RESULT_MSG:Ljava/lang/String; = "resultMsg"

.field private static final SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "mdec/APPUPDATE-StubRequest"

.field private static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field private static final VERSION_NAME:Ljava/lang/String; = "versionName"


# instance fields
.field private mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;
    .locals 11

    const-string v0, "mdec/APPUPDATE-StubRequest"

    .line 2
    new-instance v1, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    invoke-direct {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    aget-object p1, p1, v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StubRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x1

    .line 7
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v6, "https"

    .line 8
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    move-object v4, p1

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v6}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v6, 0xc8

    if-ne v6, v4, :cond_5

    .line 11
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 12
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 13
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 15
    invoke-static {v0, v7}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 18
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 19
    new-instance v8, Ljava/io/StringReader;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 20
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_1
    if-eq v6, v5, :cond_4

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    goto/16 :goto_4

    .line 21
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v8, "signature"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "versionName"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x4

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "versionCode"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x3

    goto/16 :goto_3

    :sswitch_3
    const-string v8, "deltaContentSize"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_4
    const-string v8, "gSignatureDownloadURL"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v8, 0xa

    goto :goto_3

    :sswitch_5
    const-string v8, "appId"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v8, v2

    goto :goto_3

    :sswitch_6
    const-string v8, "deltaDownloadURI"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x7

    goto :goto_3

    :sswitch_7
    const-string v8, "contentSize"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x5

    goto :goto_3

    :sswitch_8
    const-string v8, "resultCode"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v8, v5

    goto :goto_3

    :sswitch_9
    const-string v8, "productId"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v8, 0xb

    goto :goto_3

    :sswitch_a
    const-string v8, "downloadURI"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x6

    goto :goto_3

    :sswitch_b
    const-string v8, "productName"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v8, 0xc

    goto :goto_3

    :sswitch_c
    const-string v10, "resultMsg"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v9

    :goto_3
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    .line 23
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setProductName(Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setProductId(Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :pswitch_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setgSignatureDownloadURL(Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :pswitch_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setSignature(Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :pswitch_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setDeltaContentSize(Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :pswitch_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setDeltaDownloadURI(Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :pswitch_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setDownloadURI(Ljava/lang/String;)V

    goto :goto_4

    .line 30
    :pswitch_7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setContentSize(Ljava/lang/String;)V

    goto :goto_4

    .line 31
    :pswitch_8
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setVersionName(Ljava/lang/String;)V

    goto :goto_4

    .line 32
    :pswitch_9
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setVersionCode(Ljava/lang/String;)V

    goto :goto_4

    .line 33
    :pswitch_a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setResultMsg(Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :pswitch_b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setResultCode(Ljava/lang/String;)V

    goto :goto_4

    .line 35
    :pswitch_c
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->setAppId(Ljava/lang/String;)V

    .line 36
    :goto_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 37
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 38
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 39
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    .line 40
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    .line 41
    :goto_6
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse result, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 42
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :goto_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    throw v0

    .line 44
    :cond_5
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    move-object p1, v3

    .line 45
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open connection, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x6c7469dc -> :sswitch_c
        -0x58eb53e6 -> :sswitch_b
        -0x4830ac3c -> :sswitch_a
        -0x3eb1a996 -> :sswitch_9
        -0x221d6c56 -> :sswitch_8
        -0x17325be6 -> :sswitch_7
        -0xcfbc314 -> :sswitch_6
        0x58b7f1c -> :sswitch_5
        0xa4b3af6 -> :sswitch_4
        0x24028d42 -> :sswitch_3
        0x290b12e5 -> :sswitch_2
        0x290fdf83 -> :sswitch_1
        0x3ffd98b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mType:I

    const-string v1, "mdec/APPUPDATE-StubRequest"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->isError(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->isNoMatchingApplication(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NoMatchingApplication"

    .line 5
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onNoMatchingApplication(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->isUpdateNotNecessary(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UpdateNotNecessary"

    .line 8
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onUpdateNotNecessary(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->isUpdateAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateAvailable, version code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onUpdateAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    goto :goto_2

    :cond_3
    :goto_0
    const-string v0, "UpdateCheckFail"

    .line 13
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onUpdateCheckFail(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    if-eqz p1, :cond_6

    .line 15
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->isDownloadNotAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->isDownloadAvailable(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "GetDownloadUrlSuccess"

    .line 17
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onGetDownloadUrlSuccess(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string v0, "GetDownloadUrlFail"

    .line 19
    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onGetDownloadUrlFail(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->onPostExecute(Lcom/samsung/android/cmcsettings/view/aboutpage/StubData;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setListener(Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mType:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubRequest;->mUrl:Ljava/lang/String;

    return-void
.end method
