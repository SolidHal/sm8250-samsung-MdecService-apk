.class Lcom/samsung/android/mdecservice/nms/NmsClientManager$1;
.super Ljava/lang/Object;
.source "NmsClientManager.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsClientManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "onImsDeregistered:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->access$000(Lcom/samsung/android/mdecservice/nms/NmsClientManager;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    const-string v0, "ClientMgr"

    const-string v1, "onImsRegistered:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsClientManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/NmsClientManager;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/NmsClientManager;->access$000(Lcom/samsung/android/mdecservice/nms/NmsClientManager;)Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->onImsRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method
