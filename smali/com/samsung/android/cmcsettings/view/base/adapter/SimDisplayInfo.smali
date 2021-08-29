.class public Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;
.super Ljava/lang/Object;
.source "SimDisplayInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isSimActive:Z

.field private isSimPresent:Z

.field private simName:Ljava/lang/String;

.field private simNumber:Ljava/lang/String;

.field private simResourceId:I

.field private simWifiOnlyMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v3, "phone1_on"

    goto :goto_0

    :cond_0
    const-string v3, "phone2_on"

    :goto_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v2, v3

    .line 4
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v4

    if-eq v4, p2, :cond_2

    const v1, 0x7f0f012d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimActive:Z

    .line 7
    invoke-static {p2, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simNumber:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simWifiOnlyMsg:Ljava/lang/String;

    .line 10
    iput-boolean v3, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimPresent:Z

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimActive:Z

    const v0, 0x7f0f00a4

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simName:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simNumber:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simWifiOnlyMsg:Ljava/lang/String;

    .line 15
    iput-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimPresent:Z

    .line 16
    :goto_1
    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimIcon(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simResourceId:I

    .line 17
    sget-object p1, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SimDisplayInfo "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSimName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simResourceId:I

    return v0
.end method

.method public getSimWifiOnlyMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simWifiOnlyMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSimActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimActive:Z

    return v0
.end method

.method public isSimPresent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimPresent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim Resource Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSim Name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsim Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simNumber:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsim active status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nsim wifi message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->simWifiOnlyMsg:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsim present "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
