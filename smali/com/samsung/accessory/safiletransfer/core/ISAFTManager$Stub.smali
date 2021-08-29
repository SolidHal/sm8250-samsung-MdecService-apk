.class public abstract Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub;
.super Landroid/os/Binder;
.source "ISAFTManager.java"

# interfaces
.implements Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.safiletransfer.core.ISAFTManager"

.field static final TRANSACTION_registerCallbackFacilitator:I = 0x1

.field static final TRANSACTION_sendCommand:I = 0x2

.field static final TRANSACTION_sendCommandV2:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.accessory.safiletransfer.core.ISAFTManager"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.safiletransfer.core.ISAFTManager"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.samsung.accessory.safiletransfer.core.ISAFTManager"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/ResultReceiver;

    .line 7
    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommandV2(Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 12
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-interface {p0, p1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 19
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 22
    sget-object p4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/ResultReceiver;

    .line 23
    :cond_7
    invoke-interface {p0, p1, v0}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->registerCallbackFacilitator(ILandroid/os/ResultReceiver;)Z

    move-result p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
