.class public interface abstract Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService;
.super Ljava/lang/Object;
.source "IEsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Stub;,
        Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsService$Default;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z
.end method

.method public abstract sendMessage(ILandroid/os/Bundle;)V
.end method

.method public abstract unregisterCallback(Lcom/samsung/android/cmcopenapi/esclient/aidl/IEsServiceCallback;)Z
.end method
