.class public Lcom/samsung/android/mdeccommon/log/TimeLogController;
.super Ljava/lang/Object;
.source "TimeLogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;
    }
.end annotation


# static fields
.field private static mTimeLogController:Lcom/samsung/android/mdeccommon/log/TimeLogController;


# instance fields
.field private final profileLogger:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mdeccommon/log/TimeLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLogController;->profileLogger:Ljava/util/Map;

    return-void
.end method

.method private createLogger(Ljava/lang/String;Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;)Lcom/samsung/android/mdeccommon/log/TimeLog;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/log/TimeLogController$1;->$SwitchMap$com$samsung$android$mdeccommon$log$TimeLogController$myProfiles:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance p2, Lcom/samsung/android/mdeccommon/log/TimeLog;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdeccommon/log/TimeLog;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 3
    :cond_2
    new-instance p2, Lcom/samsung/android/mdeccommon/log/PayloadTimeLog;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdeccommon/log/PayloadTimeLog;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 4
    :cond_3
    new-instance p2, Lcom/samsung/android/mdeccommon/log/PushTimeLog;

    invoke-direct {p2, p1}, Lcom/samsung/android/mdeccommon/log/PushTimeLog;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/mdeccommon/log/TimeLogController;
    .locals 2

    const-class v0, Lcom/samsung/android/mdeccommon/log/TimeLogController;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdeccommon/log/TimeLogController;->mTimeLogController:Lcom/samsung/android/mdeccommon/log/TimeLogController;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/mdeccommon/log/TimeLogController;

    invoke-direct {v1}, Lcom/samsung/android/mdeccommon/log/TimeLogController;-><init>()V

    sput-object v1, Lcom/samsung/android/mdeccommon/log/TimeLogController;->mTimeLogController:Lcom/samsung/android/mdeccommon/log/TimeLogController;

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdeccommon/log/TimeLogController;->mTimeLogController:Lcom/samsung/android/mdeccommon/log/TimeLogController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isPerformanceTest()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/__MDEC_DEBUG_PERFORMANCE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dumpLogger(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLogController;->profileLogger:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLogController;->profileLogger:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdeccommon/log/TimeLog;

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/log/TimeLog;->dumpResults()V

    :cond_0
    return-void
.end method

.method public getLogger(Ljava/lang/String;)Lcom/samsung/android/mdeccommon/log/TimeLog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLogController;->profileLogger:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLogController;->profileLogger:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdeccommon/log/TimeLog;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public startLogger(Ljava/lang/String;Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;)Lcom/samsung/android/mdeccommon/log/TimeLog;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdeccommon/log/TimeLogController;->createLogger(Ljava/lang/String;Lcom/samsung/android/mdeccommon/log/TimeLogController$myProfiles;)Lcom/samsung/android/mdeccommon/log/TimeLog;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLogController;->profileLogger:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method
