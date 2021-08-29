.class public Lcom/samsung/android/settings/external/DynamicMenuData;
.super Ljava/lang/Object;
.source "DynamicMenuData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;,
        Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/external/DynamicMenuData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mIsSummaryPrimaryDark:Z

.field private mIsVisible:Z

.field private mKey:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mSummaryRes:I

.field private mTitle:Ljava/lang/String;

.field private mTitleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/external/DynamicMenuData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/external/DynamicMenuData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$000(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$100(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$200(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitleRes:I

    .line 6
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$300(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$400(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummaryRes:I

    .line 8
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$500(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    .line 9
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$600(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    .line 10
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$700(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    .line 11
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->access$800(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;Lcom/samsung/android/settings/external/DynamicMenuData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;-><init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/external/DynamicMenuData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/external/DynamicMenuData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/external/DynamicMenuData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/external/DynamicMenuData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/external/DynamicMenuData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/external/DynamicMenuData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/external/DynamicMenuData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    return v0
.end method

.method public getColorPrimaryDark()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummaryRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitleRes:I

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    return v0
.end method

.method public updateTextResource(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummaryRes:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :catch_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-boolean p2, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
