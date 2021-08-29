.class public Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;
.super Ljava/lang/Object;
.source "DynamicSummaryData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/external/DynamicSummaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mOrder:I

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/external/DynamicSummaryData;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicSummaryData;->access$200(Lcom/samsung/android/settings/external/DynamicSummaryData;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->mOrder:I

    .line 4
    invoke-static {p1}, Lcom/samsung/android/settings/external/DynamicSummaryData;->access$300(Lcom/samsung/android/settings/external/DynamicSummaryData;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->mSummary:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->mOrder:I

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/external/DynamicSummaryData;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/settings/external/DynamicSummaryData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/external/DynamicSummaryData;-><init>(Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;Lcom/samsung/android/settings/external/DynamicSummaryData$1;)V

    return-object v0
.end method

.method public setOrder(I)Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->mOrder:I

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method
