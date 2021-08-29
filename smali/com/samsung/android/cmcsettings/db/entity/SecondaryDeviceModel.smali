.class public Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;
.super Ljava/lang/Object;
.source "SecondaryDeviceModel.java"


# instance fields
.field private active_services:Ljava/lang/String;

.field private call_active:I

.field private device_active:I

.field private device_category:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private device_name:Ljava/lang/String;

.field private line_id:Ljava/lang/String;

.field private message_active:I


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
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->active_services:Ljava/lang/String;

    return-object v0
.end method

.method public getCall_active()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->call_active:I

    return v0
.end method

.method public getDevice_active()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_active:I

    return v0
.end method

.method public getDevice_category()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_category:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLine_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->line_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage_active()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->message_active:I

    return v0
.end method

.method public setActive_services(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->active_services:Ljava/lang/String;

    return-void
.end method

.method public setCall_active(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->call_active:I

    return-void
.end method

.method public setDevice_active(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_active:I

    return-void
.end method

.method public setDevice_category(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_category:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->device_name:Ljava/lang/String;

    return-void
.end method

.method public setLine_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->line_id:Ljava/lang/String;

    return-void
.end method

.method public setMessage_active(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;->message_active:I

    return-void
.end method
