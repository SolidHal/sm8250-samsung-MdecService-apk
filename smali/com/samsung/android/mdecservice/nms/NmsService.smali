.class public Lcom/samsung/android/mdecservice/nms/NmsService;
.super Landroid/app/Service;
.source "NmsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NmsService"


# instance fields
.field protected mBinder:Lcom/samsung/android/cmcopenapi/INmsService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsService;->mBinder:Lcom/samsung/android/cmcopenapi/INmsService$Stub;

    return-void
.end method

.method private initNmsServiceIfNotInited()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NmsService"

    const-string v1, "init Nms Service"

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NmsService"

    const-string p3, "dump()"

    .line 1
    invoke-static {p1, p3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "NmsService"

    const-string v0, "onBind()"

    .line 1
    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsService;->mBinder:Lcom/samsung/android/cmcopenapi/INmsService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "NmsService"

    const-string v1, "onCreate(): "

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->makeNmsService(Landroid/content/Context;)Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/NmsService;->initNmsServiceIfNotInited()V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/NmsServiceStub;->getInstance()Lcom/samsung/android/mdecservice/nms/NmsServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsService;->mBinder:Lcom/samsung/android/cmcopenapi/INmsService$Stub;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "NmsService"

    const-string v1, "onDestroy(): "

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartCommand(): Received start id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NmsService"

    invoke-static {p2, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/NmsService;->initNmsServiceIfNotInited()V

    const/4 p1, 0x1

    return p1
.end method
