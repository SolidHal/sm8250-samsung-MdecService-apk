.class public Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DevelopmentSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field listPref:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "mdec/DevelopmentSettingsActivity"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private addResetPreference()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DebugFolder;

    const-string v1, "__MDEC_DEBUG_MENU"

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcsettings/view/developmentsettings/DebugFolder;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/Folder;->isFolderExist()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "RESET"

    .line 4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f0f00c0

    .line 5
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 7
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->listPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private addServerPreference()V
    .locals 2

    .line 1
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "cmc_server_address"

    .line 2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v1, "CMC Server address"

    .line 3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 5
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->listPref:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private declared-synchronized resetAllData()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetAllData"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->clearAll(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->removeinOOBEHistory(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "oobeinfo remove failed"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllSDData(Landroid/content/Context;)V

    .line 8
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->deleteAllPDData(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceListForDelete()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "PD data available for Delete"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 14
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pd.getLineOwnerDeviceId() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deletePrimaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PD data is ! available for Delete"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getProvisionedDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 20
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "P-SD data available for Delete"

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 22
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "psd.getDeviceId() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deleteProvisionedDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 24
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "P-SD data is ! available for Delete"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_4
    new-instance v0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isSuggestionMoveContactsCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "resetAllData: set false"

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setSuggestionMoveContacts(Z)V

    goto :goto_3

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetAllData: no need to set false"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finishAffinity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->resetAllData()V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120005

    .line 2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const-string p1, "development_settings_screen"

    .line 3
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->listPref:Landroid/preference/PreferenceCategory;

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->addResetPreference()V

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;->addServerPreference()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmc_server_address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.cmcsettings.view.developmentsettings.ServerAddressEditDialog"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RESET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v0, Lcom/samsung/android/cmcsettings/view/developmentsettings/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/b;-><init>(Lcom/samsung/android/cmcsettings/view/developmentsettings/DevelopmentSettingsActivity;)V

    const-string v1, "Ok"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 8
    sget-object v0, Lcom/samsung/android/cmcsettings/view/developmentsettings/a;->b:Lcom/samsung/android/cmcsettings/view/developmentsettings/a;

    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const-string v0, "All PD/SD/Provisioned SD info will be lost. Continue ?"

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 10
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
