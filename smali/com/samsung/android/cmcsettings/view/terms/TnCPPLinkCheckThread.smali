.class Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;
.super Ljava/lang/Object;
.source "TnCPPLinkCheckThread.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private isValid:Z

.field private url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->LOG_TAG:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x2710

    .line 3
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getTnCURLForWelcomeActivity: URL is valid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->isValid:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getTnCURLForWelcomeActivity: URL is ! valid"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->isValid:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->isValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->isValid:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :catch_1
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/terms/TnCPPLinkCheckThread;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getTnCURLForWelcomeActivity: IOException"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
