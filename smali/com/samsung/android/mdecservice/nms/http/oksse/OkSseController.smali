.class public Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;
.super Ljava/lang/Object;
.source "OkSseController.java"


# static fields
.field private static EVENT_TYPE:Ljava/lang/String; = "heartbeat"

.field private static final LOG_TAG:Ljava/lang/String; = "OkSseCntlr"

.field private static sseSupported:Z = false


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAuthUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

.field private okSse:Lc/c/a/a;

.field private sse:Lc/c/a/b;

.field private sseListener:Lc/c/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->sse:Lc/c/a/b;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController$1;-><init>(Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;)V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->sseListener:Lc/c/a/b$a;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getSaAccessToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mAccessToken:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mEsProfileMan:Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/EntitlementProfileManager;->getSaAuthUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mAuthUrl:Ljava/lang/String;

    const-string p1, "OkSseCntlr"

    const-string p2, "creating oksse obj"

    .line 8
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lc/c/a/a;

    invoke-direct {p1}, Lc/c/a/a;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->okSse:Lc/c/a/a;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->EVENT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;Lc/c/a/b;)Lc/c/a/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->sse:Lc/c/a/b;

    return-object p1
.end method


# virtual methods
.method public notifySaInfoRefreshed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySaInfoRefreshed: accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->hideLog(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkSseCntlr"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mAccessToken:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/http/oksse/OkSseController;->mAuthUrl:Ljava/lang/String;

    return-void
.end method
