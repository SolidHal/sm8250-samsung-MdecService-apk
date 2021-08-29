.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;
.super Landroid/os/ResultReceiver;
.source "SAFileTransferCallbackReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[SA_SDK]SAFileTransferCallbackReceiver"


# instance fields
.field private mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

.field private mDestFileName:Ljava/lang/String;

.field private mSourceFileName:Ljava/lang/String;

.field private mTransactionArray:[I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "CallBackJson"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "FT Error"

    const/4 v1, -0x1

    const-string v2, "[SA_SDK]SAFileTransferCallbackReceiver"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Wrong resultCode"

    .line 2
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->fromJSON(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->getTransactionId()[I

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionArray:[I

    .line 7
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnMultipleErrorMessage;->getErrorCode()I

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionArray:[I

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onCancelAllCompleted([II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 11
    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    goto/16 :goto_3

    .line 13
    :pswitch_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;-><init>()V

    .line 15
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->fromJSON(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->getTransactionId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 17
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->getErrorCode()I

    move-result p1

    .line 18
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    invoke-interface {p2, v0, v3, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 20
    :goto_1
    iput v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 21
    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    .line 22
    iput-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    goto :goto_3

    .line 23
    :pswitch_2
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;-><init>()V

    .line 24
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->fromJSON(Ljava/lang/Object;)V

    const-string p2, "Transfer Complete"

    .line 25
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->getTransactionId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 27
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->getSourcePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferCompleteMsg;->getDestPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mSourceFileName:Ljava/lang/String;

    invoke-interface {p1, v0, v2, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V

    goto :goto_2

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mDestFileName:Ljava/lang/String;

    invoke-interface {p1, v0, v2, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V

    .line 32
    :goto_2
    iput v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 33
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 34
    :pswitch_3
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;

    invoke-direct {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;-><init>()V

    .line 35
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->fromJSON(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->getTransactionId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    .line 37
    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->getProgress()J

    move-result-wide p1

    long-to-int p1, p1

    .line 38
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mAppCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;->mTransactionId:I

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onProgressChanged(II)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 39
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
