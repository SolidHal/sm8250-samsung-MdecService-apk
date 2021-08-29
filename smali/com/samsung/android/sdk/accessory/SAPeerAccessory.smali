.class public Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
.super Ljava/lang/Object;
.source "SAPeerAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAccessory;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_APDU_SIZE:I = 0x100000

.field static final DEFAULT_ENCRYPTION_PADDING_LENGTH:I = 0x0

.field static final DEFAULT_MXDU_SIZE:I = 0xfff4

.field static final DEFAULT_SSDU_SIZE:I = 0xfffa

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAPeerAccesssosry"

.field static final TRANSPORT_ALL:I = 0xff

.field public static final TRANSPORT_BLE:I = 0x4

.field public static final TRANSPORT_BT:I = 0x2

.field public static final TRANSPORT_MOBILE:I = 0x10

.field public static final TRANSPORT_USB:I = 0x8

.field public static final TRANSPORT_WIFI:I = 0x1


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mApduSize:I

.field private mCompatabilityVersion:I

.field private mEncryptionPaddingLength:I

.field private mId:J

.field private mMxduSize:I

.field private mName:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mSsduSize:I

.field private mTransportType:I

.field private mUniqueId:Ljava/lang/String;

.field private mVendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 31
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    .line 32
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    .line 34
    iput p5, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    .line 35
    iput-object p6, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    .line 37
    iput p8, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    .line 38
    iput p9, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    .line 39
    iput p10, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    .line 40
    iput p11, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    .line 41
    iput-object p12, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    const/4 v0, 0x1

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    const/4 v0, 0x2

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    const/4 v0, 0x4

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    const/4 v0, 0x5

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    const/4 v0, 0x6

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    const/4 v0, 0x7

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    const/16 v0, 0x8

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    const/16 v0, 0x9

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    const/16 v0, 0xa

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessoryId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getApduSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    return v0
.end method

.method getCompatibilityVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    return v0
.end method

.method getContent()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getEncryptionPaddingLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    return-wide v0
.end method

.method getMxduSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method getSsduSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    return v0
.end method

.method public getTransportType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    return v0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    return-object v0
.end method

.method setCompatibilityVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PeerAccessory - "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " TransportType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ProductId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " VendorId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " APDU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SSDU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Accessory ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MXDU:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Encryption padding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x9

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCompatibilityVersion = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[SA_SDK]SAPeerAccesssosry"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMxduSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    const/16 v0, 0x8

    if-lt p2, v0, :cond_1

    .line 14
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    :cond_1
    :goto_0
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
