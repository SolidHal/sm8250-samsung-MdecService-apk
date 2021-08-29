.class public abstract Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.super Lcom/samsung/android/sdk/accessory/SAAgentV2;
.source "SAManagerAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;,
        Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_AGENT_IMPL_CLASS:Ljava/lang/String; = "agentImplclass"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final MESSAGE_FINDPEER_RESPONSE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAManagerAgent"


# instance fields
.field private mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Lcom/samsung/android/sdk/accessory/SAManagerAgent$1;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    return-object p0
.end method

.method private getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAManagerAgent$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$1;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->runOnBackgroundThread(Ljava/lang/Runnable;)Z

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/RunnableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->runOnBackgroundThread(Ljava/lang/Runnable;)Z

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/RunnableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected getAgentImplClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "agentImplclass"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAgentPackagename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "packageName"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPeerFound(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected requestPeerAgents()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->runOnBackgroundThread(Ljava/lang/Runnable;)Z

    return-void
.end method
