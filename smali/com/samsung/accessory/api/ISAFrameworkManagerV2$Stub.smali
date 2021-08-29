.class public abstract Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;
.super Landroid/os/Binder;
.source "ISAFrameworkManagerV2.java"

# interfaces
.implements Lcom/samsung/accessory/api/ISAFrameworkManagerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.api.ISAFrameworkManagerV2"

.field static final TRANSACTION_acceptServiceConnection:I = 0x7

.field static final TRANSACTION_authenticatePeerAgent:I = 0x5

.field static final TRANSACTION_cleanupAgent:I = 0x13

.field static final TRANSACTION_closeServiceConnection:I = 0xa

.field static final TRANSACTION_findPeerAgents:I = 0x4

.field static final TRANSACTION_getAgentDetails:I = 0xb

.field static final TRANSACTION_getAgentId:I = 0x14

.field static final TRANSACTION_getClientCallback:I = 0xe

.field static final TRANSACTION_getLocalAgentId:I = 0x3

.field static final TRANSACTION_getNetworkConnectionType:I = 0x18

.field static final TRANSACTION_isSocketConnected:I = 0xd

.field static final TRANSACTION_makeFrameworkConnection:I = 0x1

.field static final TRANSACTION_registerComponent:I = 0x2

.field static final TRANSACTION_registerMexCallback:I = 0xf

.field static final TRANSACTION_rejectServiceConnection:I = 0x8

.field static final TRANSACTION_requestServiceConnection:I = 0x6

.field static final TRANSACTION_send:I = 0x9

.field static final TRANSACTION_sendCompressed:I = 0x16

.field static final TRANSACTION_sendMessage:I = 0x11

.field static final TRANSACTION_sendMessageDeliveryStatus:I = 0x12

.field static final TRANSACTION_sendUncompressed:I = 0x15

.field static final TRANSACTION_setNetworkConnectionType:I = 0x17

.field static final TRANSACTION_tearFrameworkConnection:I = 0xc

.field static final TRANSACTION_unregisterMexCallback:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17

    move-object/from16 v13, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v14, p3

    const v2, 0x5f4e5446

    const/4 v15, 0x1

    const-string v3, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    if-eq v0, v2, :cond_d

    const/4 v2, 0x0

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getNetworkConnectionType()I

    move-result v0

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 6
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISANetworkConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISANetworkConnectionCallback;

    move-result-object v1

    .line 10
    invoke-interface {v13, v2, v3, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->setNetworkConnectionType(JILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result v0

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 13
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v9, v15

    .line 19
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    .line 22
    invoke-interface/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 25
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v9, v15

    .line 31
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    .line 34
    invoke-interface/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 37
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-interface {v13, v2, v3, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    .line 44
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->cleanupAgent(JLjava/lang/String;)V

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 49
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    move v6, v7

    .line 54
    invoke-interface/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessageDeliveryStatus(JJII)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 56
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v9, v15

    .line 63
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v16

    .line 67
    invoke-interface/range {v0 .. v12}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIIII)I

    move-result v0

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 70
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->unregisterMexCallback(JLjava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 75
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAMexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAMexCallback;

    move-result-object v1

    .line 79
    invoke-interface {v13, v2, v3, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 81
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 83
    invoke-interface {v13, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v0, v14, v15}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v15

    .line 88
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->isSocketConnected(JLjava/lang/String;)Z

    move-result v0

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 94
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 96
    invoke-interface {v13, v0, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->tearFrameworkConnection(J)I

    move-result v0

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 99
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v15

    .line 107
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->closeServiceConnection(JLjava/lang/String;)I

    move-result v0

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 113
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v9, v15

    .line 119
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    .line 122
    invoke-interface/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->send(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 125
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_2

    :cond_6
    move-object v6, v2

    .line 130
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v7

    .line 131
    invoke-interface/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result v0

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 134
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_3

    :cond_7
    move-object v6, v2

    .line 139
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v10

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v11

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v7

    move-object v7, v10

    move-object v8, v11

    .line 142
    invoke-interface/range {v0 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    .line 144
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 146
    :cond_8
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v15

    .line 147
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_5

    :cond_9
    move-object v6, v2

    .line 152
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v7

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v8

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    .line 154
    invoke-interface/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v0

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 157
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 161
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v6, v0

    goto :goto_6

    :cond_a
    move-object v6, v2

    .line 162
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;

    move-result-object v7

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-wide v6, v8

    .line 164
    invoke-interface/range {v0 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 167
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentCallback;

    move-result-object v7

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    move-object v6, v7

    .line 172
    invoke-interface/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    .line 175
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    .line 180
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 182
    :cond_b
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v15

    .line 183
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 186
    invoke-interface {v13, v2, v3, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerComponent(J[B)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    .line 188
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/IDeathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v4

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 194
    invoke-interface/range {v0 .. v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v0

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    .line 196
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 198
    :cond_c
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v15

    .line 199
    :cond_d
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
