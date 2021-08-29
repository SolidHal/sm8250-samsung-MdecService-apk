.class Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;
.super Ljava/lang/Object;
.source "ImsInfoListener.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->connectImsService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    iput p2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsInfoListener"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$000(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->val$phoneId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$000(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->val$phoneId:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$100(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)Lcom/sec/ims/IImsRegistrationListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    .line 5
    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$000(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->val$phoneId:I

    aget-object v0, v0, v2

    const-string v2, "volte"

    invoke-virtual {v0, v2}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOwnNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$1;->val$phoneId:I

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    const-string v0, "ImsInfoListener"

    const-string v1, "onDisconnected:"

    .line 1
    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
