.class public Lcom/samsung/android/mdecservice/nms/config/feature/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# instance fields
.field private mCompatabilityFeatureName:Ljava/lang/String;

.field private mCompatibilityVersion:I

.field private mCompatibilityVersionName:Ljava/lang/String;

.field private mCompatiblePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatibilityVersion:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatabilityFeatureName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatibilityVersionName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatiblePackageName:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatibilityVersion:I

    .line 7
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatabilityFeatureName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatibilityVersionName:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatiblePackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompatabilityFeatureName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatabilityFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatibilityVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatibilityVersion:I

    return v0
.end method

.method public getCompatibilityVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatibilityVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatiblePackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/feature/Feature;->mCompatiblePackageName:Ljava/lang/String;

    return-object v0
.end method
