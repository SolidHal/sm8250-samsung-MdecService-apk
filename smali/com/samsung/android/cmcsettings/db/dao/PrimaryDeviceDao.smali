.class public interface abstract Lcom/samsung/android/cmcsettings/db/dao/PrimaryDeviceDao;
.super Ljava/lang/Object;
.source "PrimaryDeviceDao.java"


# virtual methods
.method public abstract addPrimaryDevice(Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;)V
.end method

.method public abstract deleteAllData()V
.end method

.method public abstract getActiveServices(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPrimaryDevice()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryDevices()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateActiveServices(Ljava/lang/String;Ljava/lang/String;)V
.end method
