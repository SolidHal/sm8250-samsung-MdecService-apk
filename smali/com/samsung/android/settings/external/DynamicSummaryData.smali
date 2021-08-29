.class public Lcom/samsung/android/settings/external/DynamicSummaryData;
.super Ljava/lang/Object;
.source "DynamicSummaryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/external/DynamicSummaryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOrder:I

.field private mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/settings/external/DynamicSummaryData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicSummaryData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/external/DynamicSummaryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicSummaryData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->access$000(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    .line 4
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->access$100(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;Lcom/samsung/android/settings/external/DynamicSummaryData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicSummaryData;-><init>(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/external/DynamicSummaryData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/external/DynamicSummaryData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
