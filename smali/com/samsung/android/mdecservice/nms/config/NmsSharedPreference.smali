.class public Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;
.super Ljava/lang/Object;
.source "NmsSharedPreference.java"


# static fields
.field private static final PREFERENCE_CONTACT_LAST_SYNC_TIME:Ljava/lang/String; = "Contact_Last_Sync_Time"

.field private static final PREFERENCE_CONTACT_REFRESH_TIME:Ljava/lang/String; = "Contact_Refresh_Time"

.field private static final PREFERENCE_INITIAL_SYNC_TIME:Ljava/lang/String; = "Initial_Sync_Time"

.field private static final PREFERENCE_MDEC_ENABLED:Ljava/lang/String; = "mdec_enabled"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "NMS_config"

.field private static mCalllogInitTime:J

.field private static mSpConfig:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMdecEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "mdec_enabled"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static getTimeStampForContact()J
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "Contact_Last_Sync_Time"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public static getTimeStampForContactRefresh()J
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "Contact_Refresh_Time"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public static getTimeStampForMsg()J
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "Initial_Sync_Time"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public static initConfig(Landroid/content/Context;)V
    .locals 2

    const-string v0, "NMS_config"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static setMdecEnabled(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mdec_enabled"

    .line 3
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTimeStampForContact(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Contact_Last_Sync_Time"

    .line 3
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTimeStampForContactRefresh(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Contact_Refresh_Time"

    .line 3
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setTimeStampForMsg(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/config/NmsSharedPreference;->mSpConfig:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Initial_Sync_Time"

    .line 3
    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
