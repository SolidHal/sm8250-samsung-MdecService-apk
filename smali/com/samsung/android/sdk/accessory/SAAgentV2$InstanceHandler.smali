.class Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;
.super Landroid/os/Handler;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHandler"
.end annotation


# static fields
.field static final CREATE_AGENT:I = 0x1

.field static final DESTROY_AGENT:I = 0x2


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string v0, "Class instantiation error: "

    .line 1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    .line 3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2500()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "Stale agent entry. Agent already destroyed. Ignoring..."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;

    .line 7
    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->access$2200(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Landroid/content/Context;

    move-result-object v3

    .line 8
    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->access$2300(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->access$2400(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    move-result-object v5

    .line 10
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 11
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2500()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    const-string v7, "Class could not be initialized: "

    if-eqz v6, :cond_5

    .line 12
    invoke-static {v6}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/16 p1, 0xa04

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Error occurred while releasing agent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    add-int/2addr p1, v2

    .line 14
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 15
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 16
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x1f4

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_4
    if-eqz v5, :cond_7

    .line 18
    invoke-interface {v5, v6}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    goto/16 :goto_1

    .line 19
    :cond_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 p1, 0xa03

    .line 20
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Class;

    .line 21
    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v9

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2500()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    if-nez v0, :cond_6

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Call super inside constructor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 27
    invoke-interface {v5, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 28
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurred while calling constructor of class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Invalid context passed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class constructor not accessible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/16 p1, 0xa02

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructor with Context argument not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/16 p1, 0xa01

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_7
    :goto_1
    return-void

    :goto_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public quit()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
