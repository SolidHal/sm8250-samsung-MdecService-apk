.class final Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CmcRoutineActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$000()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "netLockObj is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$200()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "connectivityManager is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "network is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$200()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-nez v1, :cond_3

    .line 10
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "networkCapabilities is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_3
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network available number("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), getNetworkCapabilities : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 13
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$300()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v4, "TRANSPORT_WIFI and mIsWifiEnabled is true"

    invoke-static {p1, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v2

    .line 16
    :goto_0
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TRANSPORT_CELLULAR and mIsWifiEnabled is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$300()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$300()Z

    move-result v1

    if-nez v1, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, p1

    :goto_1
    move p1, v3

    goto :goto_2

    :cond_6
    move v5, v2

    move v2, p1

    move p1, v5

    goto :goto_2

    :cond_7
    move p1, v2

    :goto_2
    if-nez v2, :cond_8

    .line 19
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$300()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    .line 20
    :cond_8
    invoke-static {v3}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$402(Z)Z

    .line 21
    invoke-static {}, Lcom/samsung/android/cmcsettings/settings/CmcRoutineActionProvider;->access$000()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 22
    :cond_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
