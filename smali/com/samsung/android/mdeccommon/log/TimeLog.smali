.class public Lcom/samsung/android/mdeccommon/log/TimeLog;
.super Ljava/lang/Object;
.source "TimeLog.java"


# static fields
.field private static final LOG_DIR_NAME:Ljava/lang/String; = "/log/mdecservice"

.field private static final LOG_FILE_NAME:Ljava/lang/String; = "/cmcPerformance_default.csv"

.field private static final MESSAGE_TYPE:Ljava/lang/String; = "Message-Type"


# instance fields
.field private final mAnchor:Ljava/lang/String;

.field private mMsgContext:Ljava/lang/String;

.field private final mObject:Ljava/lang/Object;

.field protected final mSplitValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/mdeccommon/log/Label;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mObject:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mAnchor:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mdeccommon/log/TimeLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->writeFile()V

    return-void
.end method

.method private clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getColumnNames()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdeccommon/log/Label;

    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/log/Label;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 4
    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColumnValues()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "/cmcPerformance_default.csv"

    return-object v0
.end method

.method private getMsgContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mMsgContext:Ljava/lang/String;

    return-object v0
.end method

.method private writeFile()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard//log/mdecservice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->getAnchor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "Message-Type"

    .line 6
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->getColumnNames()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "\n"

    .line 8
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 9
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mAnchor:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->getMsgContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->getColumnValues()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->getColumnResults()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "\n"

    .line 14
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 15
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 17
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    .line 18
    :goto_1
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

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 19
    :goto_2
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_1

    .line 20
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 21
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 23
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/TimeLog;->clear()V

    return-void

    :catchall_3
    move-exception v0

    :goto_4
    if-eqz v3, :cond_2

    .line 24
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 25
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :cond_2
    :goto_5
    throw v0
.end method


# virtual methods
.method public addSplit(Lcom/samsung/android/mdeccommon/log/Label;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpResults()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/mdeccommon/log/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdeccommon/log/a;-><init>(Lcom/samsung/android/mdeccommon/log/TimeLog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAnchor()Ljava/lang/String;
    .locals 1

    const-string v0, "Co-ID"

    return-object v0
.end method

.method public getColumnResults()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    const/4 v2, 0x1

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v2, -0x1

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 9
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMsgContext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mMsgContext:Ljava/lang/String;

    return-void
.end method
