.class public Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;
.super Ljava/lang/Object;
.source "RcsGroupParticipantType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAddress:Ljava/lang/String;

.field mName:Ljava/lang/String;

.field mYourOwn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "false"

    .line 7
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mYourOwn:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mAddress:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mYourOwn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "false"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mYourOwn:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mAddress:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mYourOwn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getYourOwn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mYourOwn:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/rcs/RcsGroupParticipantType;->mYourOwn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
