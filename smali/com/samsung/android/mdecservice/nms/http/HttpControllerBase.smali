.class public abstract Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;
.super Ljava/lang/Object;
.source "HttpControllerBase.java"


# static fields
.field protected static mAccessToken:Ljava/lang/String;


# instance fields
.field protected mAppId:Ljava/lang/String;

.field protected mAuthUrl:Ljava/lang/String;

.field protected mClientModel:Ljava/lang/String;

.field protected mClientOsVersion:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mContext:Landroid/content/Context;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientOsVersion:Ljava/lang/String;

    .line 4
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mClientModel:Ljava/lang/String;

    const-string p1, "8f9l37bswj"

    .line 5
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAppId:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageName:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mPackageVersion:Ljava/lang/String;

    return-void
.end method

.method public static getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/http/HttpControllerBase;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method private getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroidx/core/content/c/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method
