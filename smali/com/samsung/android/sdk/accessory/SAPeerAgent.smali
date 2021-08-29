.class public Lcom/samsung/android/sdk/accessory/SAPeerAgent;
.super Ljava/lang/Object;
.source "SAPeerAgent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAPeerAgent"


# instance fields
.field private final MEX_ERROR_NONE:I

.field private mCompatabilityVersion:I

.field private mContainerId:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mMexSupport:I

.field private mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

.field private mPeerId:Ljava/lang/String;

.field private mProfileVersion:Ljava/lang/String;

.field private mSocketSupport:I

.field private mTransactionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x700

    .line 26
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->MEX_ERROR_NONE:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 29
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peeragent:Framework version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[SA_SDK]SAPeerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    .line 36
    const-class v1, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAccessory;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x700

    .line 2
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->MEX_ERROR_NONE:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 5
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    .line 6
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    .line 11
    iput p6, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    .line 12
    iput p7, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x700

    .line 14
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->MEX_ERROR_NONE:I

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 17
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    const/4 v0, 0x4

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v0, 0x5

    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 24
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-void
.end method


# virtual methods
.method checkFeatureEnabled(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/16 p1, 0x700

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/16 p1, 0x704

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const/16 p1, 0x703

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[SA_SDK]SAPeerAgent"

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid peerAgent instance.Peer ID - this:null PeerAgent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, " PeerAgent:"

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid peerAgent instance.Peer ID - this:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid peerAgent instance.Container ID - this:null PeerAgent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid peerAgent instance.Container ID - this:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 18
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid peerAgent instance.Accessory ID - this:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    return v0
.end method

.method public getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-object v0
.end method

.method public getAccessoryId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method getCompatibilityVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    return v0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getContent()Ljava/util/List;
    .locals 2
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
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getEncryptionPaddingLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v0

    return v0
.end method

.method public getMaxAllowedDataSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x100000

    return v0
.end method

.method public getMaxAllowedMessageSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x100000

    return v0
.end method

.method getMxduSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getMxduSize()I

    move-result v0

    return v0

    :cond_0
    const v0, 0xfff4

    return v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    return-object v0
.end method

.method getSsduSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getSsduSize()I

    move-result v0

    return v0

    :cond_0
    const v0, 0xfffa

    return v0
.end method

.method getTransactionId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mTransactionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v4

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public isFeatureEnabled(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v2

    .line 1
    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 2
    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_1
    return v0
.end method

.method setCompatibilityVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    return-void
.end method

.method setTransactionId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mTransactionId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeerAgent - id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FriendlyName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile Version:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MexSupport:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 v0, 0x9

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCompatibilityVersion = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "[SA_SDK]SAPeerAgent"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    if-nez p2, :cond_2

    .line 9
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getActiveFrameworkVersion()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 10
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isActiveFrameworkMexSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    :cond_1
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    if-lt p2, v0, :cond_3

    .line 13
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    :goto_0
    return-void
.end method
