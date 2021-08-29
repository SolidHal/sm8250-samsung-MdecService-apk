.class public Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;
.super Landroidx/appcompat/app/d;
.source "MdecEventListenerActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected actionBar:Landroidx/appcompat/app/a;

.field private isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

.field private mBadgeListener:Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;

.field private mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

.field private mCMCActivationObserver:Landroid/database/ContentObserver;

.field private mCMCOOBEObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mMessageAppChangeObserver:Landroid/database/ContentObserver;

.field private mNetworkModeChangeObserver:Landroid/database/ContentObserver;

.field protected viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/d;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$1;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    .line 3
    new-instance v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$2;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/view/t;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/t;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mBadgeListener:Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;

    .line 5
    new-instance v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$3;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    .line 6
    new-instance v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$4;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mNetworkModeChangeObserver:Landroid/database/ContentObserver;

    .line 7
    new-instance v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$5;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationObserver:Landroid/database/ContentObserver;

    .line 8
    new-instance v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$6;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public synthetic a(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshBadge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->checkForUpdatesCompleted(I)V

    return-void
.end method

.method protected checkForUpdatesCompleted(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForUpdatesCompleted result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method protected measureContentFrame()V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700d2

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 6
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 8
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 9
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v4, 0x19b

    if-le v2, v4, :cond_0

    const/16 v2, 0x24d

    if-lt v3, v2, :cond_0

    const/16 v2, 0x3bf

    if-gt v3, v2, :cond_0

    const v1, 0x3f666666    # 0.9f

    const v0, 0x3d4ccccd    # 0.05f

    goto :goto_0

    :cond_0
    const/16 v2, 0x3c0

    if-lt v3, v2, :cond_1

    const/16 v2, 0x77f

    if-gt v3, v2, :cond_1

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_0

    :cond_1
    const/16 v2, 0x780

    if-lt v3, v2, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v0, 0x3e800000    # 0.25f

    :cond_2
    :goto_0
    const v2, 0x7f09007c

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f09007a

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f09007b

    .line 12
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 16
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 21
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    sget-object v2, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "measureContentFrame : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCMCActivationChange()V
    .locals 0

    return-void
.end method

.method protected onCMCActivationIntermediateChange()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->v(Z)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->t(Z)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->actionBar:Landroidx/appcompat/app/a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_0
    const-string p1, "first_time_roaming_change"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

    const-string v2, "roaming_handled"

    .line 9
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->isFirstTimeRoamingChange:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 11
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 14
    new-instance v1, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$7;-><init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)V

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNetworkModeChange()V
    .locals 0

    return-void
.end method

.method protected onOOBESetOff()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getRemoveSD(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->viewId:I

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090084

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x7f09008e

    if-eq v0, v1, :cond_3

    const v1, 0x7f09010f

    if-eq v0, v1, :cond_1

    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    iget p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->viewId:I

    const/16 v0, 0x1bf9

    invoke-static {p0, p1, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action bar home pressed with viewID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->viewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "QRCodeGeneratorDialogTag"

    .line 10
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {p1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v3}, Landroidx/fragment/app/k;->e()I

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return v2

    .line 15
    :cond_3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onOptionsItemSelected: DevelopmentSettingsActivity"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.cmcsettings.view.developmentsettings.DevelopmentSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 19
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 20
    const-class v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    sget-object p1, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onOptionsItemSelected: debugActivity"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0900b7

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09010f

    .line 3
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0900e1

    .line 4
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f090076

    .line 5
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f09008e

    .line 6
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f090006

    .line 7
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f090084

    .line 8
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->myDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sd"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    if-eqz v2, :cond_4

    .line 11
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isMoveContactsMenuAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    if-eqz v3, :cond_5

    .line 12
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->isContactUsMenuAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    if-eqz v4, :cond_6

    .line 13
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    :cond_6
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ur"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    sget-object v2, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "aboutCmCTitle: urdu "

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 18
    :cond_7
    sget-object v2, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "aboutCmCTitle: !urdu "

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v5, :cond_8

    .line 20
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 21
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 22
    :cond_8
    check-cast v5, Landroidx/appcompat/view/menu/p;

    if-eqz v5, :cond_9

    .line 23
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->getContactsResult()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->needToShowBadge(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "N"

    .line 24
    invoke-interface {v5, v1}, Landroidx/appcompat/view/menu/p;->c(Ljava/lang/String;)V

    :cond_9
    if-eqz v6, :cond_a

    .line 25
    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 26
    :cond_a
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isCmcActivationIntermediateState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 28
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/c;->onResume()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onShowProgressChange()V

    return-void
.end method

.method protected onShowProgressChange()V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStart()V

    const-string v0, "MdecEventListenerActivity"

    const-string v1, "onStart(): register mdecEventListener"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getProgressBarSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_default_application"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_network_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mNetworkModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_activation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->getUriFor(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmc_oobe"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->setCheckForUpdate(ZZ)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onStop()V

    const-string v0, "MdecEventListenerActivity"

    const-string v1, "onStop(): deregister mdecEventListener"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->getProgressBarSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mMessageAppChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mDataRoamingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mNetworkModeChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mNetworkModeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCActivationIntermediateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mCMCOOBEObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->setCheckForUpdate(ZZ)V

    return-void
.end method

.method protected setCheckForUpdate(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->mBadgeListener:Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    invoke-static {p0, v1, v0, p1, p2}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->setUiUpdateListener(Landroid/app/Activity;ILcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates$Listener;ZZ)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->setIsRetry(Z)V

    :cond_1
    return-void
.end method

.method protected showServerConnectionFailedToast()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error occured while connecting to server: show toast & turn off the switch"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0f00d5

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
