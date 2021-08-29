.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "TurnOnCMCBaseDialogFragment.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private saId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 4
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->saId:Ljava/lang/String;

    const-string p1, "turnOnCMCDialogTag"

    .line 6
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->on:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setOOBE(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->saId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->addinOOBEHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object v0, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    :goto_0
    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onFinish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string v0, "turnOnCMCDialogTag"

    .line 1
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->saId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "saId"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->saId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f011f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f00a7

    .line 6
    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/l;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/l;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0025

    .line 7
    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/k;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/k;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->saId:Ljava/lang/String;

    const-string v1, "saId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "saId"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnCMCBaseDialogFragment;->saId:Ljava/lang/String;

    return-void
.end method
