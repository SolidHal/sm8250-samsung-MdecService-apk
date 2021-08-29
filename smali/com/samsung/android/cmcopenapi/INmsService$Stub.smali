.class public abstract Lcom/samsung/android/cmcopenapi/INmsService$Stub;
.super Landroid/os/Binder;
.source "INmsService.java"

# interfaces
.implements Lcom/samsung/android/cmcopenapi/INmsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/INmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/INmsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cmcopenapi.INmsService"

.field static final TRANSACTION_getAllCif:I = 0x12

.field static final TRANSACTION_getMessageSetting:I = 0x8

.field static final TRANSACTION_getRcsCapability:I = 0xd

.field static final TRANSACTION_isInitialized:I = 0x1

.field static final TRANSACTION_isNmsSubscribed:I = 0x4

.field static final TRANSACTION_onRequestToAppCompleted:I = 0xe

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_registerNmsConfigListener:I = 0x10

.field static final TRANSACTION_registerNmsSubscriptionListener:I = 0x5

.field static final TRANSACTION_requestToServer:I = 0xb

.field static final TRANSACTION_sendMessageSetting:I = 0x7

.field static final TRANSACTION_sendMessageSettingExt:I = 0xf

.field static final TRANSACTION_sendRelayRCS:I = 0xc

.field static final TRANSACTION_sendrelayMMS:I = 0xa

.field static final TRANSACTION_sendrelaySMS:I = 0x9

.field static final TRANSACTION_unregisterCallback:I = 0x3

.field static final TRANSACTION_unregisterNmsConfigListener:I = 0x11

.field static final TRANSACTION_unregisterNmsSubscriptionListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.cmcopenapi.INmsService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/INmsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.cmcopenapi.INmsService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/android/cmcopenapi/INmsService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/android/cmcopenapi/INmsService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/android/cmcopenapi/INmsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/INmsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/cmcopenapi/INmsService;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/INmsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/INmsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/cmcopenapi/INmsService;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcopenapi/INmsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/INmsService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lcom/samsung/android/cmcopenapi/INmsService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcopenapi/INmsService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.cmcopenapi.INmsService"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lcom/samsung/android/cmcopenapi/INmsService;->getAllCif()V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 5
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/config/INmsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;

    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->unregisterNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 9
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/config/INmsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;

    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->registerNmsConfigListener(Lcom/samsung/android/cmcopenapi/config/INmsConfigListener;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 13
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->sendMessageSettingExt(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 17
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 22
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->onRequestToAppCompleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 24
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 26
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->getRcsCapability(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 29
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 31
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->sendRelayRCS(Ljava/lang/String;Ljava/util/List;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 34
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 39
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->requestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 41
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 43
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cmcopenapi/INmsService;->sendrelayMMS(Ljava/util/List;Ljava/util/List;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 46
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 48
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->sendrelaySMS(Ljava/util/List;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 50
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-interface {p0}, Lcom/samsung/android/cmcopenapi/INmsService;->getMessageSetting()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 53
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->sendMessageSetting(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 57
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 60
    sget-object p4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 61
    :cond_0
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/cmcopenapi/INmsService;->unregisterNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 63
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;

    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 66
    sget-object p4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 67
    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/cmcopenapi/INmsService;->registerNmsSubscriptionListener(Lcom/samsung/android/cmcopenapi/subscription/INmsSubscriptionListener;Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 69
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 72
    sget-object p4, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 73
    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/cmcopenapi/INmsService;->isNmsSubscribed(ILcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 76
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    move-result-object p1

    .line 78
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->unregisterCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 81
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/INmsServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcopenapi/INmsServiceCallback;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lcom/samsung/android/cmcopenapi/INmsService;->registerCallback(Lcom/samsung/android/cmcopenapi/INmsServiceCallback;)Z

    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 86
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Lcom/samsung/android/cmcopenapi/INmsService;->isInitialized()Z

    move-result p1

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 90
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
