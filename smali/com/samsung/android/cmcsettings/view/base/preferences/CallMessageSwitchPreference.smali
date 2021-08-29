.class public Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "CallMessageSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0c0011

    .line 1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/l;)V

    const v0, 0x7f0900c4

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public updateSwitchState(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->CALL:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->MESSAGE:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    .line 2
    :goto_0
    sget-object v1, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->CALL:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v1, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceCallActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceMessageActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 4
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getDeviceActivation(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    .line 5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/samsung/android/cmcsettings/utils/MdecDatabaseUtils;->getActiveServicesForSD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v5, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;

    invoke-direct {v5, p1}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Lcom/samsung/android/cmcsettings/utils/CallMessageActiveServices;->getActiveServiceMap()Ljava/util/HashMap;

    move-result-object p1

    .line 8
    sget-object v5, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;->CALL:Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference$PreferenceType;

    if-ne v0, v5, :cond_4

    const-string v0, "callforking"

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_5

    goto :goto_4

    :cond_4
    const-string v0, "message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_5

    :goto_4
    move p1, v3

    goto :goto_5

    :cond_5
    move p1, v2

    .line 10
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/preferences/CallMessageSwitchPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    move v5, v2

    goto :goto_6

    :cond_6
    const/16 v5, 0x8

    .line 11
    :goto_6
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_7
    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    move v0, v3

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    if-eqz v4, :cond_9

    if-eq v1, p1, :cond_9

    move v2, v3

    .line 12
    :cond_9
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 13
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
