.class final Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler$1;
.super Landroid/os/ResultReceiver;
.source "EsRestApiServiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveResult(es client result) : resultCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onGetAllInformation(ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onGetAllInformation(ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onUpdatePDPAgreement(ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 6
    :pswitch_3
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onUpdatePDPAgreement(ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onMigrateLine(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onMigrateLine(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onGetProvisionedDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onGetProvisionedDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 11
    :pswitch_8
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onRemoveProvisionedDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :pswitch_9
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onRemoveProvisionedDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 13
    :pswitch_a
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onAddProvisionedDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 14
    :pswitch_b
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onAddProvisionedDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 15
    :pswitch_c
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onGetUserInformation(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 16
    :pswitch_d
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onGetUserInformation(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 17
    :pswitch_e
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onUpdateDeviceInfo(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 18
    :pswitch_f
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onUpdateDeviceInfo(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 19
    :pswitch_10
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onUpdateLineInfo(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 20
    :pswitch_11
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onUpdateLineInfo(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 21
    :pswitch_12
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onRemoveDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 22
    :pswitch_13
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onRemoveDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 23
    :pswitch_14
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onAddDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 24
    :pswitch_15
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onAddDevice(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 25
    :pswitch_16
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onRemoveLine(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 26
    :pswitch_17
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onRemoveLine(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 27
    :pswitch_18
    invoke-static {v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onAddLine(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 28
    :pswitch_19
    invoke-static {v1, p2}, Lcom/samsung/android/mdecservice/mdec/api/internal/EsRestApiServiceHandler;->onAddLine(ZLandroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
