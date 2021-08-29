.class public Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider;
.super Ljava/lang/Object;
.source "EsClientServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->connect(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static disconnect(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->disconnect(Landroid/content/Context;)V

    return-void
.end method

.method public static setOnServiceEventListener(Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcopenapi/esclient/impl/EsClientServiceProviderImpl;->setOnServiceEventListener(Lcom/samsung/android/cmcopenapi/esclient/EsClientServiceProvider$OnServiceEventListener;)V

    return-void
.end method
