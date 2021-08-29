.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "ShowDefaultAppsBaseDialogFragment.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "showDefaultAppsDialogTag"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(IZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p4, "showDefaultAppsDialog: Change clicked"

    invoke-static {p3, p4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p3, "showDefaultAppsDialog: changeMsgAppToSamsungApp"

    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setMessageAppAsSamsungDefault(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p3, "showDefaultAppsDialog: changePhoneAppToSamsungApp"

    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setCallAppAsSamsungDefault(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p3, "showDefaultAppsDialog: changePhoneAppToSamsungApp & changeMsgAppToSamsungApp"

    invoke-static {p1, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setMessageAppAsSamsungDefault(Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->setCallAppAsSamsungDefault(Landroid/content/Context;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "sim changed flow used"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onLaunchSimOOBEDialog()V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onActivatePDDevice()V

    :goto_1
    return-void
.end method

.method public synthetic b(ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showDefaultAppsDialog: Change cancel defaultAppStatus"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object p2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    sget-object p2, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;->main:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;

    sget-object p3, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->setCmcActivation(Landroid/content/Context;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION_TYPE;Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_ACTIVATION;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const-string p1, "showDefaultAppsDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {v4}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f005d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0f005b

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f005f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0f005a

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f005e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0f0059

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {v2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onActivatePDDevice()V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    :goto_2
    move-object v2, v5

    .line 14
    :goto_3
    new-instance v3, Landroidx/appcompat/app/c$a;

    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {v3, v4}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v3, v5}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 16
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const v2, 0x7f0f005c

    .line 17
    new-instance v4, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;

    invoke-direct {v4, p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/h;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;IZ)V

    invoke-virtual {v3, v2, v4}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0025

    .line 18
    new-instance v2, Lcom/samsung/android/cmcsettings/view/dialogFragments/g;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/g;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/ShowDefaultAppsBaseDialogFragment;I)V

    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 19
    invoke-virtual {p0, v1}, Landroidx/fragment/app/b;->setCancelable(Z)V

    .line 20
    invoke-virtual {v3}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method
