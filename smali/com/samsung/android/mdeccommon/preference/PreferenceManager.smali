.class public Lcom/samsung/android/mdeccommon/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# static fields
.field private static final CALL_APP:Ljava/lang/String; = "call_app"

.field public static final CMC_CALL_CONTROL:Ljava/lang/String; = "7513"

.field public static final CMC_MESSAGE_CONTROL:Ljava/lang/String; = "7514"

.field private static final DIALOG_OPENED:Ljava/lang/String; = "dialog_opened"

.field public static final FIRST_TIME_ROAMING_CHANGE:Ljava/lang/String; = "first_time_roaming_change"

.field private static final IS_PROGRESS_DISPLAY:Ljava/lang/String; = "isProgressDisplay"

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MESSAGE_APP:Ljava/lang/String; = "message_app"

.field private static final MODE_REMOVE_SD:Ljava/lang/String; = "mode_remove_sd"

.field private static final PREF_CHANGE_MAIN_DEVICE:Ljava/lang/String; = "change_main_device_pref"

.field private static final PREF_DEFAULT_CALL_MESSGE_APP:Ljava/lang/String; = "default_call_message_app_pref"

.field public static final PREF_NAME:Ljava/lang/String; = "suggestion_move_contacts"

.field private static final PREF_REMOVE_MODE:Ljava/lang/String; = "remove_mode_pref"

.field private static final PREF_SIM_STATE_CHANGE_EVENT:Ljava/lang/String; = "sim_state_change_event_pref"

.field public static final PRIVATE_MODE:I = 0x0

.field public static final REMOVE_DEVICE_LIST:Ljava/lang/String; = "removeDeviceList"

.field private static final SIM_STATE:Ljava/lang/String; = "sim_state"

.field public static final SUGGESTION_MOVE_CONTACTS_STATUS:Ljava/lang/String; = "SuggestionMoveContacts"

.field public static final SUGGESTION_SYNC_CONTACTS_STATUS:Ljava/lang/String; = "SuggestionSyncContacts"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "suggestion_move_contacts"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->pref:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private static getChangeMainDeviceDialogSharedPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "change_main_device_pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultCallAppSelected(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getDefaultCallMessageAppPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "call_app"

    const-string v1, "com.samsung.android.dialer"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultCallMessageAppPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "default_call_message_app_pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultMessageAppSelected(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getDefaultCallMessageAppPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "message_app"

    const-string v1, "com.samsung.android.messaging"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrevSimStateOnSimStateChangeEvent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getSimStateSharedPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "sim_state"

    const-string v1, "UNKNOWN"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProgressBarSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "isProgressDisplay"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoveModeSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "remove_mode_pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoveSD(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveModeSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "mode_remove_sd"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getSimStateSharedPref(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "sim_state_change_event_pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static isDialogOpened(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getChangeMainDeviceDialogSharedPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "dialog_opened"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isProgressDisplay(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getProgressBarSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isProgressDisplay"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static setCurSimStateOnSimStateChangeEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getSimStateSharedPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sim_state"

    .line 2
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDefaultCallAppSelected(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getDefaultCallMessageAppPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "call_app"

    .line 2
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDefaultMessageAppSelected(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getDefaultCallMessageAppPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "message_app"

    .line 2
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDialogOpened(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getChangeMainDeviceDialogSharedPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "dialog_opened"

    .line 2
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setProgressDisplay(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getProgressBarSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isProgressDisplay"

    .line 2
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRemoveSD(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoveSD value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveModeSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "mode_remove_sd"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public isSuggestionMoveContactsCancelled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "SuggestionMoveContacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSuggestionSyncContactsCancelled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "SuggestionSyncContacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setSuggestionMoveContacts(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SuggestionMoveContacts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET cancelled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSuggestionSyncContacts(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SuggestionSyncContacts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET cancelled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
