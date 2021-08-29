.class public Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Default;
.super Ljava/lang/Object;
.source "IEsService.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendMessage(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
