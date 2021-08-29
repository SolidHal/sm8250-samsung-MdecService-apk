.class Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;
.super Ljava/lang/Object;
.source "PackageManagerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mdec/Utils-PackageManagerUtil"

.field private static volatile sPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPackageManager()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->sPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->sPackageManager:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    const-string v1, "mdec/Utils-PackageManagerUtil"

    const-string v2, "checkPackageManager"

    .line 4
    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getVersionCode(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->checkPackageManager()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget p0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersionCode NameNotFound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mdec/Utils-PackageManagerUtil"

    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->checkPackageManager()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->sPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersionName NameNotFound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mdec/Utils-PackageManagerUtil"

    invoke-static {v0, p0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method
