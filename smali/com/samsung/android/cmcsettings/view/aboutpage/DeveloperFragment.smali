.class public Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;
.super Landroidx/preference/g;
.source "DeveloperFragment.java"


# static fields
.field public static mAcServerPref:Landroidx/preference/DropDownPreference;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static mCmcTestPref:Landroidx/preference/Preference;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static mDevPrefScreen:Landroidx/preference/PreferenceScreen;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static mDeviceTypePref:Landroidx/preference/DropDownPreference;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f120002

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/g;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "dev_pref_screen"

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    sput-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mDevPrefScreen:Landroidx/preference/PreferenceScreen;

    const-string p1, "ac_server_pref"

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    sput-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mAcServerPref:Landroidx/preference/DropDownPreference;

    const-string p1, "device_type_pref"

    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    sput-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mDeviceTypePref:Landroidx/preference/DropDownPreference;

    const-string p1, "one_number_pref"

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    sput-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mOneNumberPref:Landroidx/preference/SwitchPreferenceCompat;

    const-string p1, "cmc_test_pref"

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/g;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperFragment;->mCmcTestPref:Landroidx/preference/Preference;

    return-void
.end method
