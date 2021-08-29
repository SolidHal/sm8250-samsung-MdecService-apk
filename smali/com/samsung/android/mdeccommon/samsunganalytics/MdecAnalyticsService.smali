.class public Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;
.super Landroid/app/job/JobService;
.source "MdecAnalyticsService.java"


# static fields
.field private static final AUTOMATIC_STATUS_LOGGING_JOB_ID:I

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    .line 5
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    :goto_0
    const-string v2, "jobscheduler"

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 7
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-eq p0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud not schedule SALogging Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    sget-object p0, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Schedule SALogging Service"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onStartJob - Update setting status logging"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->initSA(Landroid/app/Application;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->updateCMCStatusLogging(Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalyticsService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onStopJob"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
