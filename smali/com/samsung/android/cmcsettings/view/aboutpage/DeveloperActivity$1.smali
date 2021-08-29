.class Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;
.super Ljava/lang/Object;
.source "DeveloperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Apply and Reset button clicked"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$200(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev_settings_ac_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$200(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "DEV"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "acs-central.ane2.mdc-dev.net"

    goto :goto_0

    :cond_0
    const-string v1, "STG"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "acs-central-ane1.mdc-stg.net"

    goto :goto_0

    :cond_1
    const-string v1, "PRD"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "acs.samsungmdec.com"

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 9
    :goto_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAcServerPref.getEntry() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " defaultAcsAddrInDb = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEFAULT_ACS"

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 12
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACS address db update success"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ACS address db fail. try to insert"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 15
    :goto_1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceTypePref.getEntry() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$500(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)V

    .line 17
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$200(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$600(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v1, "dev_settings_one_number"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$200(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$600(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$700(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Landroid/content/Context;Z)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroidx/preference/DropDownPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$800(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mDeviceTypePref.getEntry() is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Don\'t run debug mode"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
