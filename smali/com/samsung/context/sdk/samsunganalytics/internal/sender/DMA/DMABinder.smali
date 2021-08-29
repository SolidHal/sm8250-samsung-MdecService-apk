.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;
.super Ljava/lang/Object;
.source "DMABinder.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dmaInterface:Lc/e/a/a/b/a;

.field private isBind:Z

.field private isTokenFail:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/Callback<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    .line 4
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->context:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;)Lc/e/a/a/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lc/e/a/a/b/a;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lc/e/a/a/b/a;)Lc/e/a/a/b/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lc/e/a/a/b/a;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    return p1
.end method


# virtual methods
.method public bind()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.diagmonagent"

    const-string v2, "com.sec.android.diagmonagent.sa.receiver.SALogReceiverService"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    const-string v0, "DMABinder"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    .line 7
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    return v0
.end method

.method public getDmaInterface()Lc/e/a/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lc/e/a/a/b/a;

    return-object v0
.end method

.method public isBind()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    return v0
.end method

.method public isTokenfail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    return v0
.end method

.method public unBind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lc/e/a/a/b/a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    const-string v0, "DMABinder"

    const-string v1, "unbind"

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
