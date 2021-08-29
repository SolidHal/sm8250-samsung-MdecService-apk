.class public Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "CMCWelcomeActivity.java"


# static fields
.field private static final CMC_STATE_ACTIVATION_INTERMEDIATE:Ljava/lang/String; = "cmc_state_activation_intermediate"

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field mActivityCmcWelcomeBinding:Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

.field mCMCWelcomeActivityData:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

.field protected mContext:Landroid/content/Context;

.field mDevicePolicyText:Landroid/widget/TextView;

.field protected mLaunchReason:Ljava/lang/String;

.field mTopView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    return-void
.end method

.method private finishWelcomeActivity(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intent_data"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getButtonText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isGDPRModel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isLGPDModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeSpannableTextForWelcomeActivity()V
    .locals 14

    const v0, 0x7f090178

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "makeSpannableTextForWelcomeActivity()"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;-><init>(Landroid/content/Context;Z)V

    .line 4
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/welcome/LinkTouchMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 5
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSingaporeModel(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x21

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    const-string v9, "%2$s"

    const-string v10, "%1$s"

    const-string v11, ""

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f0f0117

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 9
    sget-object v12, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v13, "makeSpannableTextForWelcomeActivity(): isSingaporeModel"

    invoke-static {v12, v13}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v11, v7, v3

    aput-object v11, v7, v6

    .line 10
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 13
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v8

    .line 14
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 16
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/cmcsettings/utils/Utils;->isGDPRModel(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/cmcsettings/utils/Utils;->isLGPDModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f0f0119

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x7f0f0118

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 19
    :goto_1
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v11, v12, v3

    aput-object v11, v12, v6

    aput-object v11, v12, v7

    const/4 v3, 0x3

    aput-object v11, v12, v3

    .line 20
    invoke-static {v4, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 22
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 23
    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v8

    .line 24
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mLaunchReason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->finishWelcomeActivity(Ljava/lang/String;I)V

    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 p1, 0x1bf0

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    const/16 v3, 0x65

    invoke-static {v2, v3, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    const/16 v3, 0x66

    invoke-static {v2, v3, p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->showNoSimToast()V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mLaunchReason:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->finishWelcomeActivity(Ljava/lang/String;I)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mLaunchReason:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->finishWelcomeActivity(Ljava/lang/String;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "WELCOME"

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->finishWelcomeActivity(Ljava/lang/String;I)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_reason_cmcopen"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mLaunchReason:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "SETTINGS"

    .line 7
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mLaunchReason:Ljava/lang/String;

    :cond_2
    const p1, 0x7f0c000c

    .line 9
    invoke-static {p0, p1}, Landroidx/databinding/g;->j(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mActivityCmcWelcomeBinding:Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    .line 10
    invoke-static {p0}, Landroidx/lifecycle/v;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;

    move-result-object p1

    const-class v0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mCMCWelcomeActivityData:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    .line 11
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mActivityCmcWelcomeBinding:Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->setWelcome(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mCMCWelcomeActivityData:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->setSummaryText()V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mCMCWelcomeActivityData:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;->setButtonText(Ljava/lang/String;)V

    const p1, 0x7f090178

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mDevicePolicyText:Landroid/widget/TextView;

    const p1, 0x7f09018e

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mTopView:Landroid/view/View;

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->setBgColorVal()V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x404

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->setViewHeight()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "cmc_state_activation_intermediate"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onResume()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->makeSpannableTextForWelcomeActivity()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "cmc_state_activation_intermediate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBgColorVal()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04020f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    .line 4
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Set background color"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-void
.end method

.method public setViewHeight()V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setViewHeight"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 7
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 8
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->isTablet()Z

    move-result v3

    const v4, 0x800003

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    if-ne v0, v5, :cond_0

    int-to-double v0, v1

    const-wide v3, 0x3fcc28f5c28f5c29L    # 0.22

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mDevicePolicyText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    int-to-double v0, v1

    const-wide v5, 0x3fceb851eb851eb8L    # 0.24

    mul-double/2addr v0, v5

    double-to-int v0, v0

    .line 11
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mDevicePolicyText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mDevicePolicyText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    if-ne v0, v5, :cond_3

    const/16 v0, 0x28

    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->convertToPX(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_3
    int-to-double v0, v1

    const-wide v3, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 16
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivity;->mTopView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 17
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method
