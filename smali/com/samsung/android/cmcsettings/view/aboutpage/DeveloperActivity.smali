.class public Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "DeveloperActivity.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final REQUEST_CODE:I = 0x0

.field public static final UPDATE_DEVICE_TYPE:Ljava/lang/String; = "update_device_type"


# instance fields
.field private debugInfoSharedPref:Landroid/content/SharedPreferences;

.field private debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private devMainLayout:Landroid/widget/LinearLayout;

.field private mAcServerPref:Landroidx/preference/DropDownPreference;

.field private mCmcTestPref:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDevPrefScreen:Landroidx/preference/PreferenceScreen;

.field private mDeviceTypePref:Landroidx/preference/DropDownPreference;

.field private mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

.field private mSaveRestartBtn:Landroid/widget/Button;

.field private mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->deviceTypeFunction()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->oneNumberFunction(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->startResetService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->checkPasswordAndProceed(Ljava/lang/String;)V

    return-void
.end method

.method private checkPasswordAndProceed(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPasswordAndProcced: pwd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cmc@cpsolution"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Pwd is correct"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Pwd is ! correct"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string v0, "Wrong password!"

    .line 5
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static closeKeyboard(Landroid/content/Context;)V
    .locals 2

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method

.method private deleteOneNumberFolder(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteOneNumberFolder"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/go_to_mdec.test"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Delete OneNumber Folder"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->deleteRecursive(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "oneNumberFunction - test : "

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    sget-object v4, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v3}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private deviceTypeFunction()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save PREF: KEY_DEBUG_MODE_DEVICE_TYPE_SHARED_PREF_NAME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dev_settings_device_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mDeviceTypePref.getEntry() is null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Don\'t run debug mode"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private initTestModePreferences()V
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initTestModePreferences"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/DropDownPreference;->m([Ljava/lang/CharSequence;)V

    .line 5
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->n([Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "dev_settings_ac_server"

    const-string v3, "PRD"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTestModePreferences: acServerString from shared pref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "STG"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "DEV"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/DropDownPreference;->r(I)V

    .line 11
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/DropDownPreference;->m([Ljava/lang/CharSequence;)V

    .line 15
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/ListPreference;->n([Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "dev_settings_device_type"

    const-string v4, "pd"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v3, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTestModePreferences: deviceTypeString from shared pref = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sd"

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 19
    sget-object v3, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initTestModePreferences: deviceType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/DropDownPreference;->r(I)V

    .line 21
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "dev_settings_one_number"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTestModePreferences: mOneNumberPref from shared pref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private oneNumberFunction(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oneNumberFunction : checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/go_to_mdec.test"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "oneNumberFunction: create dir"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "oneNumberFunction: delete dir"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->deleteRecursive(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public static showKeyboard(Landroid/content/Context;)V
    .locals 2

    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0008

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    const v2, 0x7f090008

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0f0026

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const v1, 0x7f0f0025

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$3;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    .line 9
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->showKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method private startResetService(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/cmcsettings/view/aboutpage/ResetService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "update_device_type"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->startServiceForCurrentUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/c;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    sget-object p2, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "power"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string p2, "[CMC] reset for test-da"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c000e

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    .line 4
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "CMC TEST MODE"

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->x(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    const v0, 0x7f0900ad

    .line 8
    new-instance v1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;

    invoke-direct {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/k;->k(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onPause()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "one_number_pref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    const-string v1, ""

    goto :goto_0

    .line 4
    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    :goto_0
    sget-object v3, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange: key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " checkedValue = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " val = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ac_server_pref"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "device_type_pref"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f030002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onPreferenceChange: one_number_pref"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick: preference.getKey( ) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cmc_test_pref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onPreferenceClick: cmc_test_pref clicked"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onPreferenceClick: cmc_test_pref clicked 10 times"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->showPasswordDialog()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: cmc_test_pref clicked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onResume()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, 0x7f09008c

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->devMainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09008d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    .line 6
    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setEnabled(Z)V

    const v0, 0x7f090118

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    .line 9
    new-instance v2, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "dev_settings"

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPref:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 12
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPref:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    .line 13
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f04020f

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x7f0601bd

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->devMainLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0xf

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->devMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 20
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    .line 21
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mAcServerPref:Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    .line 22
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 23
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    .line 24
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 25
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 26
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    .line 27
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mCmcTestPref:Landroidx/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCmcTestPref:Landroidx/preference/Preference;

    .line 28
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 33
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 34
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 35
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCmcTestPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->initTestModePreferences()V

    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    const v1, 0x7f0f00cb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->j()V

    :goto_1
    return-void
.end method

.method public onSwitchChanged(Landroidx/appcompat/widget/SwitchCompat;Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged: isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSwitchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "dev_settings"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->debugInfoSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    const p2, 0x7f0f00cc

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->j()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mAcServerPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 12
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mCmcTestPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->b(Landroidx/preference/Preference;)Z

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->initTestModePreferences()V

    goto :goto_1

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    const p2, 0x7f0f00cb

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mSaveRestartBtn:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->j()V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->deleteOneNumberFolder(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p2, "DEFAULT_ACS"

    const-string v0, "acs.samsungmdec.com"

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    .line 22
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "ACS address db update success"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-object p2, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ACS address db fail. try to insert"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 25
    :goto_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDefaultDeviceType()Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_DEVICE_TYPE;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->startResetService(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
