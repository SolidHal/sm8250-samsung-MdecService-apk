.class public interface abstract Lcom/samsung/android/cmcsettings/db/dao/SecondaryDeviceDao;
.super Ljava/lang/Object;
.source "SecondaryDeviceDao.java"


# virtual methods
.method public abstract addConnectedDevice(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
.end method

.method public abstract deleteAllData()V
.end method

.method public abstract deleteDevice(Ljava/lang/String;)V
.end method

.method public abstract deleteOldDevices(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getActiveServices(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAllConnectedDevice()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallActiveStatus(Ljava/lang/String;)I
.end method

.method public abstract getConnectedDevice(Ljava/lang/String;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedDeviceData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceActiveStatus(Ljava/lang/String;)I
.end method

.method public abstract getMessageActiveStatus(Ljava/lang/String;)I
.end method

.method public abstract updateActiveServices(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateActiveStatus(Ljava/lang/String;I)V
.end method

.method public abstract updateCallActiveStatus(Ljava/lang/String;I)V
.end method

.method public abstract updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateMessageActiveStatus(Ljava/lang/String;I)V
.end method
