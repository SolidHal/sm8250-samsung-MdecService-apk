.class Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl$1;
.super Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;
.source "EsClientInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    invoke-direct {p0}, Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(ILandroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ON_CMC_ES_DEACTIVATED."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/data/ES_BUNDLE_DATA;->RESULT:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3
    sget-object v0, Lcom/samsung/android/cmcopenapi/esclient/data/ES_BUNDLE_DATA;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/data/ES_BUNDLE_DATA;->MDEC_ACTIVE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 5
    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    iget-object v1, v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mEsClientListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;->onCMCDeactivationResult(ZIZ)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ON_CMC_ES_ACTIVATED."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p1, Lcom/samsung/android/cmcopenapi/esclient/data/ES_BUNDLE_DATA;->RESULT:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 8
    sget-object v0, Lcom/samsung/android/cmcopenapi/esclient/data/ES_BUNDLE_DATA;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 9
    sget-object v1, Lcom/samsung/android/cmcopenapi/esclient/data/ES_BUNDLE_DATA;->MDEC_ACTIVE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 10
    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl$1;->this$0:Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;

    iget-object v1, v1, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientInterfaceImpl;->mEsClientListener:Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;

    invoke-interface {v1, p1, v0, p2}, Lcom/samsung/android/cmcopenapi/esclient/EsClientInterface$EsClientListener;->onCMCActivationResult(ZIZ)V

    :goto_0
    return-void
.end method
