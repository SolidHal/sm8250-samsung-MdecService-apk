.class public Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;
.super Ljava/lang/Object;
.source "PropertyLogBuildClient.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;


# instance fields
.field private mConfig:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private mContext:Landroid/content/Context;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mConfig:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mConfig:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

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
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mConfig:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mConfig:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->registerReceiver(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendProperty(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const-string v0, "send Property Logs"

    .line 7
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t"

    const-string v3, "pp"

    .line 10
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->checkSizeLimit(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mConfig:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v2, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->send(Ljava/util/Map;)I

    return v1

    :cond_4
    :goto_0
    const-string v0, "PropertyLogBuildClient"

    const-string v2, "No Property log"

    .line 13
    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPropertyPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/property/PropertyLogBuildClient;->mMap:Ljava/util/Map;

    return-void
.end method
