.class public Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
.super Ljava/lang/Object;
.source "DynamicMenuData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/external/DynamicMenuData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsEnabled:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsVisible:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/external/DynamicMenuData;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$900(Lcom/samsung/android/settings/external/DynamicMenuData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$1000(Lcom/samsung/android/settings/external/DynamicMenuData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitle:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$1100(Lcom/samsung/android/settings/external/DynamicMenuData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummary:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$1200(Lcom/samsung/android/settings/external/DynamicMenuData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsChecked:Z

    .line 9
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$1300(Lcom/samsung/android/settings/external/DynamicMenuData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsEnabled:Z

    .line 10
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$1400(Lcom/samsung/android/settings/external/DynamicMenuData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsVisible:Z

    .line 11
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->access$1500(Lcom/samsung/android/settings/external/DynamicMenuData;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsSummaryPrimaryDark:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitleRes:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummaryRes:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsSummaryPrimaryDark:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/external/DynamicMenuData;-><init>(Lcom/samsung/android/settings/external/DynamicMenuData$Builder;Lcom/samsung/android/settings/external/DynamicMenuData$1;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/external/DynamicMenuData$InvalidMenuDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChecked(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsChecked:Z

    return-object p0
.end method

.method public setColorPrimaryDark(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsSummaryPrimaryDark:Z

    return-object p0
.end method

.method public setEnabled(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsEnabled:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setSummaryRes(I)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mSummaryRes:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleRes(I)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mTitleRes:I

    return-object p0
.end method

.method public setVisible(Z)Lcom/samsung/android/settings/external/DynamicMenuData$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData$Builder;->mIsVisible:Z

    return-object p0
.end method
