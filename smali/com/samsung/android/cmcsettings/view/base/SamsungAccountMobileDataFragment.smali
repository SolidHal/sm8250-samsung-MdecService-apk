.class public Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;
.super Landroidx/preference/g;
.source "SamsungAccountMobileDataFragment.java"

# interfaces
.implements Landroidx/preference/Preference$c;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSAPreference:Landroidx/preference/Preference;

.field private mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

.field private mdecUIContractListener:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

.field private preferenceListGroup:Landroidx/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g;-><init>()V

    return-void
.end method

.method private addNetworkSwitchStatePreference(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->getNetworkSwitchPreferenceDisableMode()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->setNetworkSwitchState(Landroidx/preference/SwitchPreferenceCompat;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->getNetworkSwitchPreferenceNormalMode()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->setNetworkSwitchState(Landroidx/preference/SwitchPreferenceCompat;)V

    :goto_0
    return-void
.end method

.method private getNetworkSwitchPreferenceDisableMode()Landroidx/preference/SwitchPreferenceCompat;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getNetworkSwitchPreferenceDisableMode"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method private getNetworkSwitchPreferenceNormalMode()Landroidx/preference/SwitchPreferenceCompat;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getNetworkSwitchPreferenceNormalMode"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    return-object v0
.end method

.method private getmRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private setNetworkSwitchState(Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0129

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 5
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 8
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDataEnabledSIM(Landroid/content/Context;)I

    move-result v0

    .line 10
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 11
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->getNetworkTypeForSlotId(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 14
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 16
    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 17
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 18
    :goto_3
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method


# virtual methods
.method public addPreference(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->preferenceListGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public addSAMobileDataPreferenceCategory(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->addPreference(Landroidx/preference/Preference;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSAPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSAPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->updateSAMobileDataPreferenceCategory(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    .line 4
    check-cast p1, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mdecUIContractListener:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f120003

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/g;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "pd_sd_device_list"

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->preferenceListGroup:Landroidx/preference/PreferenceScreen;

    const-string p1, "samsung_account_mobile_data_category"

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

    const-string p1, "samsung_account"

    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSAPreference:Landroidx/preference/Preference;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060018

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    const-string p1, "network_switch_pref"

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "isChecked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    sget-object p2, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPreferenceChange() called"

    invoke-static {p2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    instance-of p2, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "network_switch_pref"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "NetworkSwitchPreference Use mobile data"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mdecUIContractListener:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;

    const/16 p2, 0x3eb

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;->onCompleteTask(Landroid/os/Bundle;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/preference/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->getmRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->getmRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f080072

    invoke-static {p2, v0}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public removePreference(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->preferenceListGroup:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->k(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public updateSAMobileDataPreferenceCategory(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSAPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p1, :cond_0

    const/16 v2, 0x66

    goto :goto_0

    :cond_0
    const/16 v2, 0xff

    :goto_0
    invoke-static {v1, v2}, Lb/f/d/a;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mSamsungAccountDataPreference:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mNetworkSwitchPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->k(Landroidx/preference/Preference;)Z

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "myDeviceType is pd"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->addNetworkSwitchStatePreference(Z)V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->getmRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->getmRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "myDeviceType is sd"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "This device is wifi only"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/SamsungAccountMobileDataFragment;->addNetworkSwitchStatePreference(Z)V

    :cond_3
    :goto_1
    return-void
.end method
