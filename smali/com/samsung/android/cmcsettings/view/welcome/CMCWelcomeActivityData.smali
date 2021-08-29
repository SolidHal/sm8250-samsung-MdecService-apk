.class public Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;
.super Landroidx/lifecycle/a;
.source "CMCWelcomeActivityData.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CMCWelcomeActivityData"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mButtonText:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryText:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mSummaryText:Landroidx/lifecycle/o;

    .line 3
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mButtonText:Landroidx/lifecycle/o;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private summaryText()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->isTablet()Z

    move-result v0

    const-string v2, "\n\n\n"

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0116

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0096

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate():  mDescriptionText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonText()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mButtonText:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getSummaryText()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mSummaryText:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mButtonText:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public setSummaryText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->mSummaryText:Landroidx/lifecycle/o;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->summaryText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method
