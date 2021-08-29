.class public Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
.super Ljava/lang/Object;
.source "NmsSubscription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NmsSubscription"


# instance fields
.field private final mClientCorrelator:Ljava/lang/String;

.field private final mPdDeviceId:Ljava/lang/String;

.field private final mPhoneId:I

.field private final mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

.field private final mSubId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPhoneId:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x20b3a426

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x38eb0007

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "calllog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    goto :goto_2

    .line 6
    :cond_3
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->CALLLOG:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    goto :goto_2

    .line 7
    :cond_4
    sget-object v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->MESSAGE:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 8
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPdDeviceId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mClientCorrelator:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mSubId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->access$000(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPhoneId:I

    .line 13
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->access$100(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    .line 14
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->access$200(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPdDeviceId:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->access$300(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mClientCorrelator:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->access$400(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mSubId:Ljava/lang/String;

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;

    invoke-direct {v0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientCorrelator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mClientCorrelator:Ljava/lang/String;

    return-object v0
.end method

.method public getPdDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPdDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPhoneId:I

    return v0
.end method

.method public getService()Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    return-object v0
.end method

.method public getSubId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mSubId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NmsSubscription [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPdDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mClientCorrelator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mSubId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    invoke-virtual {p2}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mPdDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mClientCorrelator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;->mSubId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
