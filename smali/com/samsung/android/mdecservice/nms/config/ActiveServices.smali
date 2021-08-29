.class public Lcom/samsung/android/mdecservice/nms/config/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActiveServices"


# instance fields
.field private mEnabledServiceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZZZZZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->mEnabledServiceSet:Ljava/util/Set;

    .line 3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveServices: isMessageLocalSwitchEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCallLocalSwitchEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAtLeast1SdReadyForMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAtLeast1SdReadyForCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isMessageAllowedByPd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCallAllowedByPd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWatchActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/config/NmsFeature;->isPrimaryDeviceInternal()Z

    move-result v0

    const-string v1, "calllog"

    const-string v2, "message"

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    if-eqz p7, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->mEnabledServiceSet:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p4, :cond_2

    if-eqz p7, :cond_5

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->mEnabledServiceSet:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->mEnabledServiceSet:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p6, :cond_5

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->mEnabledServiceSet:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getEnabledServiceSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/config/ActiveServices;->mEnabledServiceSet:Ljava/util/Set;

    return-object v0
.end method
