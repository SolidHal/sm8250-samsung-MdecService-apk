.class public Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider;
.super Ljava/lang/Object;
.source "ImsClientProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->connect(Landroid/content/Context;)V

    return-void
.end method

.method public static disconnect(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->disconnect(Landroid/content/Context;)V

    return-void
.end method

.method public static setOnServiceEventListener(Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ims/impl/ImsClientProviderImpl;->setOnServiceEventListener(Lcom/samsung/android/cmcsettings/utils/ims/ImsClientProvider$OnServiceEventListener;)V

    return-void
.end method
