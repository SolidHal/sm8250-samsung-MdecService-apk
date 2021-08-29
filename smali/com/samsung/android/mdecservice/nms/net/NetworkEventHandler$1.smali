.class Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] networkType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$000(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/net/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/net/ITelephonyManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/samsung/android/mdeccommon/net/ITelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NwkEvtHandler"

    .line 3
    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getDataRegState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eq v0, v1, :cond_1

    move v0, v1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {p1, p2, v0, v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$100(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;IIZ)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NwkEvtHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getDataRegState()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getVoiceRegState()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->getVoiceRegState()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->getNetworkState()Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$NetworkState;->setVoiceRegState(I)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$200(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$202(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;I)I

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$300(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$302(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Z)Z

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getDataRoaming()Z

    move-result v2

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v5

    .line 15
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$400(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Z

    move-result v6

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    .line 16
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$500(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Z

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    .line 17
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v6, v2}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$402(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Z)Z

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v2, v5}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$502(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Z)Z

    move v2, v3

    .line 19
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    .line 21
    invoke-static {v6}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$600(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 22
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-static {v6, v5}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$602(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;Ljava/lang/String;)Ljava/lang/String;

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v4

    .line 23
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler$1;->this$0:Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;

    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/net/ServiceStateWrapper;->getDataNetworkType()I

    move-result v0

    if-nez v2, :cond_7

    if-nez v5, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :cond_7
    :goto_4
    invoke-static {v6, v0, p1, v3}, Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;->access$100(Lcom/samsung/android/mdecservice/nms/net/NetworkEventHandler;IIZ)V

    return-void
.end method
