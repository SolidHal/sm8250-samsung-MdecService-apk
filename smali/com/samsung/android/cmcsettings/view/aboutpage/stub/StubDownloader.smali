.class public Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;
.super Landroid/os/AsyncTask;
.source "StubDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mdec/APPUPDATE-StubDownloader"


# instance fields
.field private mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

.field private mSignature:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkDownloader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mdec/APPUPDATE-StubDownloader"

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    .line 6
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v5, v4, :cond_3

    .line 8
    sget-object v4, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->APK_DOWNLOAD_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    sget-object v4, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->APK_DOWNLOAD_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "apkDownloader : mkdirs fail"

    .line 10
    invoke-static {v2, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    sget-object v4, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->APK_FILE_PREFIX:Ljava/lang/String;

    const-string v5, ".apk"

    sget-object v6, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->APK_DOWNLOAD_DIR:Ljava/io/File;

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 14
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v7, 0x400

    :try_start_4
    new-array v7, v7, [B

    move v8, v0

    .line 15
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    add-int/2addr v8, v9

    new-array v10, v3, [Ljava/lang/Integer;

    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-virtual {p0, v10}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v6, v7, v0, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mSignature:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/cmcsettings/view/aboutpage/AppsStubUtil;->validateApkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 21
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_2
    :try_start_7
    const-string v0, "Validation failed! Malformed or wrong APK"

    .line 23
    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 25
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 26
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_0
    move-exception v0

    .line 27
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v3

    .line 28
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_c
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    .line 29
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v3

    .line 30
    :try_start_e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v5

    :try_start_f
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 31
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34
    throw v0

    .line 35
    :cond_3
    :try_start_11
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p1, v1

    .line 36
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create temp file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mdec/APPUPDATE-StubDownloader"

    if-nez p1, :cond_0

    const-string p1, "DownloadApkFail"

    .line 2
    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onDownloadApkFail()V

    goto :goto_0

    :cond_0
    const-string v1, "DownloadApkSuccess"

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onDownloadApkSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;->onDownloadApkProgressUpdate(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setListener(Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mListener:Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubListener;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mSignature:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/stub/StubDownloader;->mUrl:Ljava/lang/String;

    return-void
.end method
