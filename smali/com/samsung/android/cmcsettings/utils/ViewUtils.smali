.class public Lcom/samsung/android/cmcsettings/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;,
        Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;,
        Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;,
        Lcom/samsung/android/cmcsettings/utils/ViewUtils$ForegroundServiceAsyncTask;
    }
.end annotation


# static fields
.field private static DEFAULT_APP_STATUS:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final START_SERVICE:Ljava/lang/String; = "start"

.field private static final STOP_SERVICE:Ljava/lang/String; = "stop"

.field public static mShouldUpdateState:Z

.field private static manager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

.field private static volatile sPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->mShouldUpdateState:Z

    const-string v0, "default_app_status"

    .line 3
    sput-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->DEFAULT_APP_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDefaultAppChanged(Landroid/content/Context;I)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getDefaultAppStatus(Landroid/content/Context;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default app status : prev "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, p1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setDefaultAppStatus(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkNetworkAndShowToast()Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSimSelected()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->showNoSimToast()V

    .line 5
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->SIM:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    return-object v0

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    .line 7
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->WIFI:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    return-object v0

    .line 8
    :cond_2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;->CONNECTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$CONNECTED_ERROR;

    return-object v0
.end method

.method private static checkPackageManager(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->sPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkPackageManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->sPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    return-void
.end method

.method public static dismissAllNotifications(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->dismissAllNotifications(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getCMCStateManager(Landroidx/fragment/app/c;)Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;
    .locals 2

    const-class v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->manager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/v;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/u;

    move-result-object p0

    const-class v1, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/u;->a(Ljava/lang/Class;)Landroidx/lifecycle/t;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    sput-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->manager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->manager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDefaultAppStatus(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/preference/j;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->DEFAULT_APP_STATUS:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get default app status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getRemoveDeviceSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "removeDeviceList"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "remove_device_list"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getSwitchState(Z)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    .line 3
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    if-nez p0, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->on:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    if-nez v1, :cond_2

    .line 6
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 7
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->intermediateOff:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->disabledOn:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    :goto_0
    return-object p0
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->checkPackageManager(Landroid/content/Context;)V

    .line 2
    :try_start_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->sPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.samsung.android.voc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getVersionCode NameNotFound : com.samsung.android.voc"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x72

    return p0

    :cond_0
    const/16 p0, 0x6f

    return p0

    :cond_1
    const/16 p0, 0x70

    return p0
.end method

.method public static isContactUsMenuAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContactUsMenuAvailable versionCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xa220268

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMoveContactsMenuAvailable(Landroid/content/Context;)Z
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    .line 2
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "samsungAccounts.length :0 isMoveContactsMenuAvailable: False"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5
    :cond_0
    aget-object v0, v0, v2

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    sget-object v3, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMoveContactsMenuAvailable: syncable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/samsung/android/cmcsettings/constants/Constants;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, "account_type = \'vnd.sec.contact.phone\'"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 8
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 9
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isMoveContactsMenuAvailable: False"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v2

    .line 11
    :cond_5
    :try_start_1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isMoveContactsMenuAvailable: True"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_7

    .line 14
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v1

    :cond_8
    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_9
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isMoveContactsMenuAvailable: Default false"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static isSdRemoveMenuSupported(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;)",
            "Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 6
    :cond_2
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onPrepareOptionsMenu: SD Call/Msg TURNING_ON or OFF"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;->DISABLED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;

    return-object p0

    .line 8
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onPrepareOptionsMenu: SD TURNING_ON or OFF"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;->DISABLED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;

    return-object p0

    .line 10
    :cond_4
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;->ENABLED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;

    return-object p0

    .line 11
    :cond_5
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;->UNSUPPORTED:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SdRemoveMenuState;

    return-object p0
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    const v0, 0x7fffffff

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 4
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/samsung/android/cmcsettings/services/CMCUIForegroundService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isServiceRunning : yes"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_2
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isServiceRunning : no"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isTipForMoveContactAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isMoveContactsMenuAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isSuggestionMoveContactsCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 5
    :cond_1
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefManager.isSuggestionMoveContactsCancelled()("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isSuggestionMoveContactsCancelled()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), res("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    return v0
.end method

.method public static isTipForSyncContactsAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, v0

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArrayIndexOutOfBoundsException: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 3
    :goto_0
    new-instance v2, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isSuggestionSyncContactsCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSamsungAccountLogin(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static joinAsXDevice(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "joinAsXDevice: Device type not set. Show server connection error toast and turn off switch"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "joinAsXDevice: Device type secondary. Proceeding to register current device as SD"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->addSecondaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinAsXDevice: PD Not set: addPrimaryDevice: SIM slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->NotChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    invoke-interface {v0, p1, p0, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->addPrimaryDevice(ILjava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    :goto_0
    return-void
.end method

.method public static postNotificationForDataSettingChange(Landroid/content/Context;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->postNotificationForDataSettingChange(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static postNotificationForReAuth(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->postNotificationForReAuth(Landroid/content/Context;)V

    return-void
.end method

.method public static postNotificationForRoaming(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->postNotificationForRoaming(Landroid/content/Context;)V

    return-void
.end method

.method private static resetDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetUI : resetting UI"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getActiveServices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceActivation(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->setDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x66

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 p1, 0x65

    invoke-static {p0, p1, v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    return-void
.end method

.method public static resetUI(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;

    .line 3
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-le v5, v1, :cond_1

    move v2, v4

    .line 4
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->isProgressDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v4

    .line 6
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v3, 0x65

    invoke-static {v0, v3, v4}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getInt(Landroid/content/ContentResolver;II)I

    move-result v0

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    if-eqz v4, :cond_6

    .line 7
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetUI : stopping service, resetting DB"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->stopForegroundService(Landroid/content/Context;)V

    .line 9
    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->resetDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 10
    :cond_6
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "resetUI : not stopping service, resetting DB"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_7
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resetUI : resetting DB, service not running"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->resetDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method public static setCMCStateManager(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->manager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    return-void
.end method

.method private static setDefaultAppStatus(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/preference/j;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set default app status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->DEFAULT_APP_STATUS:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setRemoveDeviceSet(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "removeDeviceList"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "remove_device_list"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRoundedCorner(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    const v1, 0x7f06009b

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    const v0, 0x7f08006e

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    div-float v0, p2, p0

    .line 2
    sget-object v1, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLargeTextSize fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float p2, p0, p3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p0

    :goto_0
    mul-float/2addr v0, p3

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->setTextSize(Landroid/widget/TextView;F)V

    :cond_1
    return-void
.end method

.method private static setTextSize(Landroid/widget/TextView;F)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    float-to-double v1, p1

    .line 4
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Exception"

    invoke-static {p0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static showNoSimToast()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f00a4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToastForDefaultApps(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultApplicationStatus(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->checkDefaultAppChanged(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Default call/message app has not changed"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/DefaultApplicationUtils;->checkIfDefaultCallOrMessageAppChanged(Landroid/content/Context;)I

    move-result v1

    .line 5
    sget-object v2, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    if-nez v1, :cond_2

    if-ne v0, v3, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0064

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_6
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    .line 13
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_8
    return-void
.end method

.method public static startForegroundService(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$ForegroundServiceAsyncTask;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$ForegroundServiceAsyncTask;-><init>()V

    const-string v0, "start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static stopForegroundService(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance p0, Lcom/samsung/android/cmcsettings/utils/ViewUtils$ForegroundServiceAsyncTask;

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils$ForegroundServiceAsyncTask;-><init>()V

    const-string v0, "stop"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static updateAllChannels(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->updateAllChannels(Landroid/content/Context;)V

    return-void
.end method
