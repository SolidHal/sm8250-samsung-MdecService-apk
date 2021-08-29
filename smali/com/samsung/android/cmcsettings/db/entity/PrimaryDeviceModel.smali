.class public Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;
.super Ljava/lang/Object;
.source "PrimaryDeviceModel.java"


# instance fields
.field private active_services:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private device_name:Ljava/lang/String;

.field private msisdn:Ljava/lang/String;

.field private primaryKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive_services()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->active_services:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->device_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->msisdn:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->primaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public setActive_services(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->active_services:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->device_name:Ljava/lang/String;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/PrimaryDeviceModel;->primaryKey:Ljava/lang/String;

    return-void
.end method
