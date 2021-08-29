.class Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;
.super Ljava/lang/Object;
.source "SARegistrationTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SARegistrationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Lcom/samsung/android/sdk/accessory/SARegistrationTask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;-><init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$100(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$100(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAServiceXmlReader;->readXml()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerServices([B)V

    const-string v0, "[SA_SDK]SARegistrationTask"

    const-string v1, "Services Registered successfully!"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    monitor-enter v0

    .line 9
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$202(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Z)Z

    .line 10
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "[SA_SDK]SARegistrationTask"

    const-string v3, "Registration failed!"

    .line 11
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    monitor-enter v1

    .line 14
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;->this$0:Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->access$202(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Z)Z

    .line 15
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "[SA_SDK]SARegistrationTask"

    const-string v2, "Registration failed.Unable to connect to Accessory framework!"

    .line 16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    throw v0
.end method
