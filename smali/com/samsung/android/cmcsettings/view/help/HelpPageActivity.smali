.class public Lcom/samsung/android/cmcsettings/view/help/HelpPageActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "HelpPageActivity.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/help/HelpPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/help/HelpPageActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_more_option_help:I

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c000f

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    const p1, 0x7f09018a

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    const v0, 0x7f0f0081

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/a;->x(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->v(Z)V

    .line 8
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->t(Z)V

    .line 9
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_0
    const p1, 0x7f0900b6

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    const p1, 0x7f090071

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f04020f

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    const p1, 0x7f0900bb

    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 18
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2022 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f0087

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n\u2022 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f008a

    .line 21
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f008d

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 22
    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 24
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0089

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f0088

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f0f008c

    .line 25
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0f008b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900ba

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0900b8

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0f0082

    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0900b9

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f09018f

    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0f0084

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method protected onOOBESetOff()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_more_option_help:I

    iput v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->viewId:I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/help/HelpPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_more_option_help:I

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 4
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
