.class public Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;
.super Ljava/lang/Object;
.source "MdecCallbackHandler.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field static mInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;


# instance fields
.field mAddDeviceListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteDeviceListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field mPersonalInfoListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field mSwitchChangedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateInfoListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mRefreshListeners:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mPersonalInfoListeners:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mUpdateInfoListeners:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mInstance:Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;

    return-object v0
.end method


# virtual methods
.method public onAddPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onAddPrimaryDevice - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;->onAddPrimaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAddSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onAddSecondaryDevice - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;->onAddSecondaryDevice(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeletePrimaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onDeletePrimaryDevice - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;->onDeletePrimaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeleteProvisionedDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onDeleteProvisionedDevice - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;->onDeleteProvisionedDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onDeleteSecondaryDevice - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;->onDeleteSecondaryDevice(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onRefresh - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->refreshTileService()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mRefreshListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;->onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetCMCActivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onSetCMCActivation - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), currServiceMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;->onSetCMCActivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onSetCMCDeactivation - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), currServiceMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;->onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onSetSdCallServiceMode - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), curCallforkingMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;->onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onSetSdMessageServiceMode - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), curMessageMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;->onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetSdServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onSetSdServiceMode - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), currServiceMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;->onSetSdServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpdatePDPAgreement(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onUpdatePDPAgreement - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mPersonalInfoListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;->onUpdatePDPAgreement(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpdatePhoneNumber(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onUpdatePhoneNumber - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mUpdateInfoListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;->onUpdatePhoneNumber(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpdatePrimaryDeviceForSimSlotChanged(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> onUpdatePrimaryDeviceForSimSlotChanged - result("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), selectedSimSlotIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;->onUpdatePrimaryDeviceForSimSlotChanged(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerAddDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add device event listener already : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register add device event listener ok : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerDeleteDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete device event listener already : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register delete device event listener ok : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerPersonalInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mPersonalInfoListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "personal info event listener already : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mPersonalInfoListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register personal info changed event listener ok : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerRefreshCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mRefreshListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh event listener already : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mRefreshListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register refresh event listener ok : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerSwitchChangedCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch changed event listener already : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register switch changed event listener ok : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public registerUpdateInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mUpdateInfoListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update info event listener already : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mUpdateInfoListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register update info changed event listener ok : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterAddDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecAddDeviceListener;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-register add device event listener fail... no such eventlistner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mAddDeviceListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister add device event listener ok : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterDeleteDeviceCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecDeleteDeviceListener;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-register delete device event listener fail... no such eventlistner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mDeleteDeviceListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister delete device event listener ok : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterPersonalInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mPersonalInfoListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecPersonalInfoListener;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-register personal info event listener fail... no such eventlistner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mPersonalInfoListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister personal info event listener ok : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterRefreshCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mRefreshListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-register refresh event listener fail... no such eventlistner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mRefreshListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister refresh event listener ok : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterSwitchChangedCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-register switch changed event listener fail... no such eventlistner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mSwitchChangedListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister switch changed event listener ok : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterUpdateInfoCallback(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cb is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mUpdateInfoListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecUpdateInfoListener;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "de-register update info event listener fail... no such eventlistner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->mUpdateInfoListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecCallbackHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister update info event listener ok : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
