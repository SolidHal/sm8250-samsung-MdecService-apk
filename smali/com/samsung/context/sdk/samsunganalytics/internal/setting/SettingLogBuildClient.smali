.class public Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;
.super Ljava/lang/Object;
.source "SettingLogBuildClient.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# instance fields
.field private config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private context:Landroid/content/Context;

.field private settings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;->isAgreement()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "user do not agree setting"

    .line 2
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->settings:Ljava/util/List;

    const-string v2, "Setting Sender"

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->registerReceiver(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :cond_2
    const/4 v0, 0x7

    .line 6
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "status_sent_date"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "do not send setting < 7days"

    .line 7
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string v0, "send setting Logs"

    .line 8
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v7, "ts"

    .line 11
    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "t"

    const-string v8, "st"

    .line 12
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    const-string v10, "sti"

    if-lt v7, v8, :cond_5

    const-string v2, "content://com.sec.android.log.diagmonagent.sa/log"

    .line 14
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v7, "v"

    const-string v8, "6.05.031"

    .line 15
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "tz"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 20
    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v8}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "tcType"

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v8}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v8

    const-string v11, "tid"

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v8, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v8

    const-string v11, "logType"

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "timeStamp"

    .line 23
    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->settings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v8, v1

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 25
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v11, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {v3, v11}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "body"

    invoke-virtual {v7, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    iget-object v11, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_4

    .line 28
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Send SettingLog Result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    if-nez v11, :cond_4

    move v8, v9

    goto :goto_0

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->settings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v8, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 31
    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->config:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v7, v11, v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->send(Ljava/util/Map;)I

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "Send success"

    .line 33
    invoke-static {v2, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    goto :goto_2

    :cond_6
    const-string v7, "Send fail"

    .line 34
    invoke-static {v2, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_8

    .line 35
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 37
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 39
    :cond_8
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Setting Result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_4
    const-string v0, "No status log"

    .line 42
    invoke-static {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->read()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingLogBuildClient;->settings:Ljava/util/List;

    return-void
.end method
