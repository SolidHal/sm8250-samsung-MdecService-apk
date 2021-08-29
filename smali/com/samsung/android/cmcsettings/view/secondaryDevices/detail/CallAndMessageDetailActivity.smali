.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "CallAndMessageDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field frag:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

.field private mActionBar:Landroidx/appcompat/app/a;

.field mContext:Landroid/content/Context;

.field prev_activation_val:Ljava/lang/Boolean;

.field sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private addOrReplaceFragment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    const-string v3, "sd"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    new-instance v2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    invoke-direct {v2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->frag:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    .line 5
    invoke-virtual {v2, v1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->frag:Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    const v2, 0x7f0900ad

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/k;->k(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/k;->f()I

    return-void
.end method


# virtual methods
.method public synthetic b(Z)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->prev_activation_val:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivation()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->addOrReplaceFragment()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;->SecondaryDevice:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getDeviceInfo(Ljava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceType;)Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefresh result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " errorCode = new title is"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mActionBar:Landroidx/appcompat/app/a;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->x(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_page_view_id:I

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->measureContentFrame()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0010

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    .line 3
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_data"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isActivation()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->prev_activation_val:Ljava/lang/Boolean;

    const p1, 0x7f09018a

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mActionBar:Landroidx/appcompat/app/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->x(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mActionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->v(Z)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mActionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->t(Z)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mActionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_1
    const p1, 0x7f090071

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 15
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->sd:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04020f

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->addOrReplaceFragment()V

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->measureContentFrame()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_page_view_id:I

    iput v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->viewId:I

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_page_view_id:I

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefresh result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/a;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;Z)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onStart()V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onStop()V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method
