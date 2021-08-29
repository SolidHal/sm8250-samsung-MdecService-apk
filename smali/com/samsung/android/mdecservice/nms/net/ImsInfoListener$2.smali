.class Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$2;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "ImsInfoListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImsInfoListener"

    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$300(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsInfoListener"

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old mOwnNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$200()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new newOwnNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$200()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "update the OwnNum"

    .line 9
    invoke-static {v2, v3}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$200()[Ljava/lang/String;

    move-result-object v2

    aput-object v1, v2, v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$2;->this$0:Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;->access$300(Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener;)Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/mdecservice/nms/net/ImsInfoListener$ImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method
