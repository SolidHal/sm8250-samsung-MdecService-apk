.class final Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface$1;
.super Ljava/lang/Object;
.source "EntitlementCommonInterface.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/authentication/SaBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecvSamsungAccountError(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecvSamsungAccountError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$100()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$202(Z)Z

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mEntitlementStateLock notify"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 8
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecvSamsungAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRecvSamsungAccountInfo"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$100()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$200()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$202(Z)Z

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "mEntitlementStateLock notify"

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/samsung/android/mdecservice/entitlement/internalprocess/EntitlementCommonInterface;->access$100()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 8
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
