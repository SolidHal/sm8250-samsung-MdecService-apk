.class public Lc/e/a/a/a/a/b/b/a/a;
.super Ljava/lang/Object;
.source "DiagmonClient.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/net/HttpURLConnection;

.field private d:Lc/e/a/a/a/a/b/b/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "application/json"

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 15
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lc/e/a/a/a/a/c/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance p3, Lc/e/a/a/a/a/b/b/b/d;

    invoke-direct {p3}, Lc/e/a/a/a/a/b/b/b/d;-><init>()V

    iput-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    .line 17
    iput-object p4, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 19
    iget-object p4, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 20
    iget-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const-string p4, "Content-Type"

    invoke-virtual {p3, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const-string p4, "Accept"

    invoke-virtual {p3, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const-string p4, "Authorization"

    const-string v0, ""

    .line 23
    invoke-static {p1}, Lc/e/a/a/a/a/c/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p5, v0, v1}, Lc/e/a/a/a/a/c/d;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p3, p4, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 26
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 27
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, " constructor?"

    .line 30
    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "application/json"

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 33
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lc/e/a/a/a/a/c/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v2, Lc/e/a/a/a/a/b/b/b/d;

    invoke-direct {v2}, Lc/e/a/a/a/a/b/b/b/d;-><init>()V

    iput-object v2, p0, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    .line 35
    iput-object p5, p0, Lc/e/a/a/a/a/b/b/a/a;->a:Lorg/json/JSONObject;

    .line 36
    iput-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 38
    iget-object v1, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 39
    iget-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p3, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const-string v0, "Authorization"

    .line 42
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1}, Lc/e/a/a/a/a/c/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p4, p5, v1}, Lc/e/a/a/a/a/c/d;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p3, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 45
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 46
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " constructor?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lc/e/a/a/a/a/b/b/b/d;

    invoke-direct {p1}, Lc/e/a/a/a/a/b/b/b/d;-><init>()V

    iput-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    .line 6
    iput-object p2, p0, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 11
    iget-object p1, p0, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    sget-object p2, Lc/e/a/a/a/a/c/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "constructor?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lc/e/a/a/a/a/b/b/b/d;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "Client - execute()"

    .line 1
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    .line 2
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x11336

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    const v3, 0x2590a0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    const-string v2, "JSON = "

    const-string v3, "bufferedReader end"

    const-string v7, "bufferedReader start"

    const-string v8, "in is null"

    const/16 v9, 0xc8

    const-string v10, "UTF-8"

    const-string v11, " failed to getInputStream()"

    const/16 v12, 0x80

    const-string v13, "failed to close()"

    if-eqz v0, :cond_10

    if-ne v0, v4, :cond_f

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " bufferedWriter start"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    .line 4
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 5
    :try_start_1
    new-instance v15, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v4, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v15, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6
    :try_start_2
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->flush()V

    const-string v0, "bufferedWriter end"

    .line 8
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    .line 9
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    iget-object v14, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lc/e/a/a/a/a/b/b/b/d;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    iget-object v14, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    invoke-virtual {v0, v14}, Lc/e/a/a/a/a/b/b/b/d;->d(I)V

    .line 11
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    move-object v9, v0

    if-eqz v9, :cond_5

    .line 13
    :try_start_3
    invoke-static {v7}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    new-array v0, v12, [C

    .line 14
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 16
    :goto_3
    :try_start_4
    invoke-virtual {v8, v0, v6, v12}, Ljava/io/BufferedReader;->read([CII)I

    move-result v10

    if-eq v10, v5, :cond_4

    .line 17
    invoke-virtual {v7, v0, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 18
    :cond_4
    invoke-static {v3}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    .line 19
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/e/a/a/a/a/b/b/b/d;->c(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    invoke-virtual {v2}, Lc/e/a/a/a/a/b/b/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v8

    move-object v14, v15

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v16, v8

    move-object v14, v15

    goto :goto_9

    .line 21
    :cond_5
    :try_start_5
    invoke-static {v8}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v14, 0x0

    .line 22
    :goto_4
    :try_start_6
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v14, :cond_7

    .line 24
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v9, :cond_16

    .line 25
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_18

    :catch_1
    move-exception v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v14, v15

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v14, v15

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v14, v15

    const/4 v9, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v14, v15

    const/4 v9, 0x0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    :goto_5
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_6
    const/16 v16, 0x0

    goto :goto_d

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    :goto_7
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_8
    const/16 v16, 0x0

    .line 27
    :goto_9
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    .line 28
    invoke-static {v11}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v14, :cond_8

    .line 29
    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_b

    :cond_8
    :goto_a
    if-eqz v4, :cond_9

    .line 30
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v16, :cond_a

    .line 31
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v9, :cond_16

    .line 32
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_18

    .line 33
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    goto/16 :goto_18

    :catchall_5
    move-exception v0

    move-object v2, v0

    :goto_d
    if-eqz v14, :cond_b

    .line 34
    :try_start_9
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_f

    :cond_b
    :goto_e
    if-eqz v4, :cond_c

    .line 35
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v16, :cond_d

    .line 36
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v9, :cond_e

    .line 37
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_10

    .line 38
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    .line 39
    :cond_e
    :goto_10
    throw v2

    .line 40
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 41
    :cond_10
    :try_start_a
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    iget-object v4, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc/e/a/a/a/a/b/b/b/d;->e(Ljava/lang/String;)V

    .line 42
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    iget-object v4, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v0, v4}, Lc/e/a/a/a/a/b/b/b/d;->d(I)V

    .line 43
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v9, :cond_11

    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    .line 44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_11

    :cond_11
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :goto_11
    move-object v4, v0

    if-eqz v4, :cond_13

    .line 45
    :try_start_b
    invoke-static {v7}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    new-array v0, v12, [C

    .line 46
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 48
    :goto_12
    :try_start_c
    invoke-virtual {v8, v0, v6, v12}, Ljava/io/BufferedReader;->read([CII)I

    move-result v9

    if-eq v9, v5, :cond_12

    .line 49
    invoke-virtual {v7, v0, v6, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 50
    :cond_12
    invoke-static {v3}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    .line 51
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/e/a/a/a/a/b/b/b/d;->c(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    invoke-virtual {v2}, Lc/e/a/a/a/a/b/b/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v14, v8

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object v14, v8

    goto :goto_19

    :catch_8
    move-exception v0

    move-object v14, v8

    goto :goto_17

    .line 53
    :cond_13
    :try_start_d
    invoke-static {v8}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const/4 v14, 0x0

    :goto_13
    if-eqz v14, :cond_14

    .line 54
    :try_start_e
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v4, :cond_16

    .line 55
    :goto_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_18

    .line 56
    :catch_9
    invoke-static {v13}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    goto :goto_18

    :catchall_7
    move-exception v0

    goto :goto_15

    :catch_a
    move-exception v0

    goto :goto_16

    :catchall_8
    move-exception v0

    const/4 v4, 0x0

    :goto_15
    const/4 v14, 0x0

    goto :goto_19

    :catch_b
    move-exception v0

    const/4 v4, 0x0

    :goto_16
    const/4 v14, 0x0

    .line 57
    :goto_17
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz v14, :cond_15

    .line 58
    :try_start_10
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_15
    if-eqz v4, :cond_16

    goto :goto_14

    .line 59
    :cond_16
    :goto_18
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_17

    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    :cond_17
    iget-object v0, v1, Lc/e/a/a/a/a/b/b/a/a;->d:Lc/e/a/a/a/a/b/b/b/d;

    return-object v0

    :catchall_9
    move-exception v0

    :goto_19
    if-eqz v14, :cond_18

    .line 62
    :try_start_11
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :cond_18
    if-eqz v4, :cond_19

    .line 63
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_1a

    .line 64
    :catch_c
    invoke-static {v13}, Lcom/sec/android/diagmonagent/common/a/a;->b(Ljava/lang/String;)I

    .line 65
    :cond_19
    :goto_1a
    throw v0
.end method
