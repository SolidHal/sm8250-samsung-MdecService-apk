.class public Lcom/samsung/android/sdk/accessory/SAJobService;
.super Landroid/app/job/JobService;
.source "SAJobService.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/IJobListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;
    }
.end annotation


# static fields
.field private static final MAXIMUM_JOB_DELAY:I = 0xbb8

.field private static final REQUEST_TYPE_CONNECTION:I = 0x1

.field private static final REQUEST_TYPE_MESSAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAJobService"

.field private static volatile sCurrentJobId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/accessory/SAJobService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAJobService;->onAgentCreated(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private handleConnectionRequest(Landroid/app/job/JobParameters;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "agentImplclass"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;-><init>(ILandroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/SAJobService;)V

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAJobService;->requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;)V

    return-void
.end method

.method private handleMessageReceived(Landroid/app/job/JobParameters;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "agentImplclass"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;-><init>(ILandroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/SAJobService;)V

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAJobService;->requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;)V

    return-void
.end method

.method private onAgentCreated(ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2, p3, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleConnectionRequest(Landroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/IJobListener;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleMessageReceived()V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    return-void
.end method

.method private static scheduleJob(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/sdk/accessory/SAJobService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/samsung/android/sdk/accessory/SAJobService;->sCurrentJobId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/samsung/android/sdk/accessory/SAJobService;->sCurrentJobId:I

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0xbb8

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 4
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "action"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "agentImplclass"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "transactionId"

    .line 7
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "agentId"

    .line 8
    invoke-virtual {v0, p1, p5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "peerAgent"

    if-nez p6, :cond_0

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p6}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContent()Ljava/util/List;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    .line 12
    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const-string p1, "jobscheduler"

    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 16
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static scheduleMessageJob(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule Message indication Job for class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAJobService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/accessory/SAJobService;->scheduleJob(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method public static scheduleSCJob(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule SC indication Job for class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAJobService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/sdk/accessory/SAJobService;->scheduleJob(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onJobFinished(Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "action"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "[SA_SDK]SAJobService"

    if-eqz v1, :cond_0

    const-string v0, "Received incoming connection indication"

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAJobService;->handleConnectionRequest(Landroid/app/job/JobParameters;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received message received indication"

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAJobService;->handleMessageReceived(Landroid/app/job/JobParameters;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
