.class public Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;
.super Ljava/lang/Object;
.source "CompatibilityFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Call;,
        Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;
    }
.end annotation


# static fields
.field public static final COMPATIBILITY_VERSION_NAME_MESSAGE:Ljava/lang/String; = "cmc_message_compatibility_version"

.field private static final LOG_TAG:Ljava/lang/String; = "CompatibilityFeature"


# instance fields
.field private mCmcVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mTargetVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mCmcVersionMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mTargetVersionMap:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCompatibilityVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v1, 0x80

    .line 3
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object p2, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public isCompatible(Lcom/samsung/android/mdecservice/nms/config/feature/Feature;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCompatible: feature is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature$Message;->M0003_CHAT_BOT:Lcom/samsung/android/mdecservice/nms/config/feature/Feature;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->getCompatibilityVersionName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->getCompatabilityFeatureName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->getCompatibilityVersion()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->getCompatiblePackageName()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mCmcVersionMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.mdecservice"

    invoke-direct {p0, v4, v5, v1}, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->getCompatibilityVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mCmcVersionMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mCmcVersionMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 13
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mTargetVersionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 14
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, p1, v1}, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->getCompatibilityVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 15
    iget-object v5, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mTargetVersionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->mTargetVersionMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    if-gt v3, v4, :cond_5

    if-gt v3, p1, :cond_5

    const/4 v0, 0x1

    .line 17
    :cond_5
    sget-object v1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCompatible: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", featureName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cmcVersion="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetVersion="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 18
    :cond_6
    :goto_2
    sget-object p1, Lcom/samsung/android/mdecservice/nms/config/feature/CompatibilityFeature;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCompatible: mandatory fields are missing"

    invoke-static {p1, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
