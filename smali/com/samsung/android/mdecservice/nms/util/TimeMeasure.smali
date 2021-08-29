.class public Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;
.super Ljava/lang/Object;
.source "TimeMeasure.java"


# static fields
.field private static final LOG_DIR_NAME:Ljava/lang/String; = "/log/mdecservice"

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "/cmcPerformanceResult.csv"

.field private static mTimeMeasure:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;


# instance fields
.field private isPD:Z

.field private mEventType:Ljava/lang/String;

.field private mGetRequest:J

.field private mGetResponse:J

.field private mGetTime:J

.field private mInternalDelay:J

.field private mMMSPayloadRequest:J

.field private mMMSPayloadResponse:J

.field private mMMSPayloadTime:J

.field private mMessageSentDBwrite:J

.field private final mObject:Ljava/lang/Object;

.field private mPushDelay:J

.field private mPushPayload:Ljava/lang/String;

.field private mPushReceived:J

.field private mRelayDelay:J

.field private mRelayRequest:J

.field private mRelayResponse:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->writeFile()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;
    .locals 2

    const-class v0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mTimeMeasure:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    invoke-direct {v1}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;-><init>()V

    sput-object v1, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mTimeMeasure:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mTimeMeasure:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInternalDelay()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayRequest:J

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushReceived:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mInternalDelay:J

    return-wide v0
.end method

.method private getPushDelay()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushReceived:J

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMessageSentDBwrite:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushDelay:J

    return-wide v0
.end method

.method private getRelayDelay()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayResponse:J

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayRequest:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayDelay:J

    return-wide v0
.end method

.method private initTimeMeasure()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMessageSentDBwrite:J

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushReceived:J

    .line 3
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetRequest:J

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetResponse:J

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadRequest:J

    .line 6
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadResponse:J

    .line 7
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayRequest:J

    .line 8
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayResponse:J

    .line 9
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushDelay:J

    .line 10
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mInternalDelay:J

    .line 11
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayDelay:J

    .line 12
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetTime:J

    .line 13
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadTime:J

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushPayload:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->isPD:Z

    return-void
.end method

.method private writeFile()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard//log/mdecservice/cmcPerformanceResult.csv"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->isPD:Z

    if-eqz v0, :cond_0

    const-string v0, "MessageSent, EventType, PushReceived, RelayRequest, RelayResponse, PushDelay, InternalDelay, GetTime, GetMMSTime, RelayDelay, PushPayload\n"

    .line 6
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0

    :cond_0
    const-string v0, "MessageSent, EventType, PushReceived, PushDelay, PushPayload\n"

    .line 7
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :goto_0
    :try_start_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 11
    iget-boolean v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->isPD:Z

    const/16 v4, 0xa

    const/16 v5, 0x2c

    if-eqz v2, :cond_2

    .line 12
    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMessageSentDBwrite:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushReceived:J

    .line 16
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 17
    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayRequest:J

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayResponse:J

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getPushDelay()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getInternalDelay()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetTime:J

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadTime:J

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getRelayDelay()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushPayload:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_1

    .line 34
    :cond_2
    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMessageSentDBwrite:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    .line 36
    invoke-virtual {v2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v2

    iget-wide v6, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushReceived:J

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->getPushDelay()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v5}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushPayload:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 44
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 46
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    .line 47
    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 48
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_3

    .line 49
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 50
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    return-void

    :catchall_3
    move-exception v0

    :goto_5
    if-eqz v3, :cond_4

    .line 52
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 53
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 55
    :cond_4
    :goto_6
    throw v0
.end method


# virtual methods
.method public setEventType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "eventTypeMessage"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Message"

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "eventTypeCall"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Calllog"

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown"

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "sms"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rcs"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mEventType:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method

.method public setGetMMSPayloadRequest()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadRequest:J

    return-void
.end method

.method public setGetRequest()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetRequest:J

    return-void
.end method

.method public setMessageSentDBwrite(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v2, 0x1ee6280

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMessageSentDBwrite:J

    return-void
.end method

.method public setPushMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->initTimeMeasure()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushReceived:J

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mPushPayload:Ljava/lang/String;

    return-void
.end method

.method public setRelayRequest()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayRequest:J

    return-void
.end method

.method public setRelayResponse()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mRelayResponse:J

    return-void
.end method

.method public setResponse()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetResponse:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetResponse:J

    .line 3
    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetRequest:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mGetTime:J

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadResponse:J

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadRequest:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->mMMSPayloadTime:J

    :goto_0
    return-void
.end method

.method public writeResult(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->isPD:Z

    .line 2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdecservice/nms/util/a;-><init>(Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
