.class public Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;
.super Landroidx/preference/g;
.source "CallAndMessageDetailFragment.java"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;
.implements Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private mActivity:Landroidx/fragment/app/c;

.field private mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

.field private mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

.field private prefCat:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    return-void
.end method

.method private isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isErrorCode(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_CANNOT_CONNECT_TO_SERVER:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_NOTIFY_TIMEOUT:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;->REASON_OTHERS:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public synthetic a(Lcom/samsung/android/cmcsettings/db/entity/SecondaryDeviceModel;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->updateSwitchState(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->updateSwitchState(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateMessageSwitch called from onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->updateSwitchState(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateCallSwitch called from onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->updateSwitchState(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public synthetic c(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->isErrorCode(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f0f00d5

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onSetSdCallServiceMode : setting the new value"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "updateCallSwitch called from callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const-string v0, "callforking"

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public synthetic d(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->isErrorCode(Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f0f00d5

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onSetSdMessageServiceMode : setting the new value"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "updateMessageSwitch called from callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const-string v0, "message"

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 5
    instance-of v0, p1, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Landroidx/fragment/app/c;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mActivity:Landroidx/fragment/app/c;

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120004

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/g;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/v;->c(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object p1

    const-class p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailViewModel;

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailViewModel;->getSecondaryDevice(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/b;

    invoke-direct {p2, p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/b;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    const-string p1, "call_preference"

    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    const-string p1, "message_preference"

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    const-string p1, "services_category"

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->prefCat:Landroidx/preference/PreferenceCategory;

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceCategory()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;->speaker:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$DeviceCategory;

    if-ne p1, p2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->prefCat:Landroidx/preference/PreferenceCategory;

    const p2, 0x7f0f00f6

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->prefCat:Landroidx/preference/PreferenceCategory;

    const p2, 0x7f0f00f7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "mMdecDeviceInfo is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->prefCat:Landroidx/preference/PreferenceCategory;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const p3, 0x7f080072

    invoke-static {p2, p3}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->checkNetworkAndShowToast()Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "call_preference"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, " mMdecDeviceInfo.getDeviceId() -> "

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_page_view_id:I

    sget v7, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_calls:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    invoke-static {p1, v6, v7, v1, v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    .line 4
    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iscall -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setSdCallServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_page_view_id:I

    sget v7, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_sd_detail_messages:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move-wide v1, v3

    :goto_1
    invoke-static {p1, v6, v7, v1, v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLogWithValue(Landroid/content/Context;IIJ)V

    .line 10
    :try_start_1
    check-cast p2, Ljava/lang/Boolean;

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v5}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->setSdMessageServiceMode(Ljava/lang/String;Z)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 14
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ismessage -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_2
    return v5
.end method

.method public onRefresh(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " errorCode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mActivity:Landroidx/fragment/app/c;

    if-eqz p1, :cond_0

    .line 3
    new-instance p2, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/d;

    invoke-direct {p2, p0}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/d;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSetCMCActivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 0

    return-void
.end method

.method public onSetCMCDeactivation(ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 0

    return-void
.end method

.method public onSetSdCallServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SettingActivationValue onSetSdCallServiceMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetSdCallServiceMode: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " curCallforkingMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mActivity:Landroidx/fragment/app/c;

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/e;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/e;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Ljava/lang/String;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onSetSdCallServiceMode : not setting the new value"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, -0x1

    .line 7
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const-string p3, "suggestion_move_contacts"

    const-string v0, "7513"

    invoke-static {p1, p2, p3, v0, p4}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetSdMessageServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SettingActivationValue onSetSdMessageServiceMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetSdMessageServiceMode: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " errorCode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " curMessageMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mActivity:Landroidx/fragment/app/c;

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/c;-><init>(Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Ljava/lang/String;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onSetSdMessageServiceMode : not setting the new value"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, -0x1

    .line 7
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mContext:Landroid/content/Context;

    const-string p3, "suggestion_move_contacts"

    const-string v0, "7514"

    invoke-static {p1, p2, p3, v0, p4}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetSdServiceMode(Ljava/lang/String;ZLcom/samsung/android/mdecservice/mdec/api/MdecInterface$Reason;Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/g;->onStart()V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->registerSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/g;->onStop()V

    .line 2
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterRefreshEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecRefreshListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 3
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deregisterSwitchChangedEventListener(Lcom/samsung/android/mdecservice/mdec/api/mdeclisteners/MdecSwitchChangedListener;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->updateSwitchState(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->updateSwitchState(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMsgSyncSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->prefCat:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->k(Landroidx/preference/Preference;)Z

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isCallForkingSupported()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->prefCat:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mCallPref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->k(Landroidx/preference/Preference;)Z

    .line 13
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceData()Lcom/samsung/android/mdeccommon/obj/DeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/obj/DeviceData;->isMsgSyncSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMessagePref:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "sd"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->mMdecDeviceInfo:Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/secondaryDevices/detail/CallAndMessageDetailFragment;->deviceId:Ljava/lang/String;

    :goto_0
    return-void
.end method
