.class public Lcom/samsung/android/cmcsettings/platform/sep/SepPlatformApiImpl;
.super Ljava/lang/Object;
.source "SepPlatformApiImpl.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/platform/interfaces/PlatformApiInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSepVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    return v0
.end method

.method public isReachToDataLimit(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->semIsMobilePolicyDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SepPlatformApiImpl"

    invoke-static {v3, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->semIsMobilePolicyDataEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method
