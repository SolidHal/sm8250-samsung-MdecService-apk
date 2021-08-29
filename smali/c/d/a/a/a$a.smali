.class public abstract Lc/d/a/a/a$a;
.super Landroid/os/Binder;
.source "ISACallback.java"

# interfaces
.implements Lc/d/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/a$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.msc.sa.aidl.ISACallback"

.field static final TRANSACTION_onReceiveAccessToken:I = 0x1

.field static final TRANSACTION_onReceiveAuthCode:I = 0x4

.field static final TRANSACTION_onReceiveChecklistValidation:I = 0x2

.field static final TRANSACTION_onReceiveDisclaimerAgreement:I = 0x3

.field static final TRANSACTION_onReceivePasswordConfirmation:I = 0x6

.field static final TRANSACTION_onReceiveSCloudAccessToken:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.msc.sa.aidl.ISACallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc/d/a/a/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.msc.sa.aidl.ISACallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lc/d/a/a/a;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/d/a/a/a;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/d/a/a/a$a$a;

    invoke-direct {v0, p0}, Lc/d/a/a/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lc/d/a/a/a;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/a/a$a$a;->b:Lc/d/a/a/a;

    return-object v0
.end method

.method public static setDefaultImpl(Lc/d/a/a/a;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/a/a$a$a;->b:Lc/d/a/a/a;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lc/d/a/a/a$a$a;->b:Lc/d/a/a/a;

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
    .locals 4

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.msc.sa.aidl.ISACallback"

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    move v3, v1

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 6
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 7
    :cond_1
    invoke-interface {p0, p1, v3, v0}, Lc/d/a/a/a;->onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 9
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    move v3, v1

    .line 12
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 13
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 14
    :cond_3
    invoke-interface {p0, p1, v3, v0}, Lc/d/a/a/a;->onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 16
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    move v3, v1

    .line 19
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 20
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 21
    :cond_5
    invoke-interface {p0, p1, v3, v0}, Lc/d/a/a/a;->onReceiveAuthCode(IZLandroid/os/Bundle;)V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 23
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    move v3, v1

    .line 26
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 27
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 28
    :cond_7
    invoke-interface {p0, p1, v3, v0}, Lc/d/a/a/a;->onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 30
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    move v3, v1

    .line 33
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 34
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 35
    :cond_9
    invoke-interface {p0, p1, v3, v0}, Lc/d/a/a/a;->onReceiveChecklistValidation(IZLandroid/os/Bundle;)V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 37
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    move v3, v1

    .line 40
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 41
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 42
    :cond_b
    invoke-interface {p0, p1, v3, v0}, Lc/d/a/a/a;->onReceiveAccessToken(IZLandroid/os/Bundle;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 44
    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
