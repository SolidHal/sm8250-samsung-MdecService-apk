.class public Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
.super Ljava/lang/Object;
.source "NmsSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClientCorrelator:Ljava/lang/String;

.field private mPdDeviceId:Ljava/lang/String;

.field private mPhoneId:I

.field private mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

.field private mSubId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mPhoneId:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mPdDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mClientCorrelator:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mSubId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription;-><init>(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;)V

    return-object v0
.end method

.method public setClientCorrelator(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mClientCorrelator:Ljava/lang/String;

    return-object p0
.end method

.method public setPdDeviceId(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mPdDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneId(I)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mPhoneId:I

    return-object p0
.end method

.method public setService(Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mServiceType:Lcom/samsung/android/cmcopenapi/subscription/NmsSubscriptionType;

    return-object p0
.end method

.method public setSubId(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcopenapi/subscription/NmsSubscription$Builder;->mSubId:Ljava/lang/String;

    return-object p0
.end method
