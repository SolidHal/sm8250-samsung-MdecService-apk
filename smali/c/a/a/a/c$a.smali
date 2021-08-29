.class public abstract Lc/a/a/a/c$a;
.super Landroid/os/Binder;
.source "ISnsRemoteServiceCallback.java"

# interfaces
.implements Lc/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/c$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.mms.transaction.ISnsRemoteServiceCallback"

.field static final TRANSACTION_onResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.mms.transaction.ISnsRemoteServiceCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lc/a/a/a/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.mms.transaction.ISnsRemoteServiceCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lc/a/a/a/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/a/a/a/c;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/a/a/a/c$a$a;

    invoke-direct {v0, p0}, Lc/a/a/a/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lc/a/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/a/c$a$a;->b:Lc/a/a/a/c;

    return-object v0
.end method

.method public static setDefaultImpl(Lc/a/a/a/c;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/a/a/a/c$a$a;->b:Lc/a/a/a/c;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    sput-object p0, Lc/a/a/a/c$a$a;->b:Lc/a/a/a/c;

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

    const/4 v0, 0x1

    const-string v1, "com.android.mms.transaction.ISnsRemoteServiceCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 7
    invoke-interface {p0, p1, p3, p2}, Lc/a/a/a/c;->onResponse(III)V

    return v0
.end method
