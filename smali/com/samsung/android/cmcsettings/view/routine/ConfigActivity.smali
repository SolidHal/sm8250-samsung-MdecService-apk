.class public Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;
.super Landroid/app/Activity;
.source "ConfigActivity.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final TEMP_ACTION_SELECTED:Ljava/lang/String; = "currentActionSelected"


# instance fields
.field private isPrevSettingOn:Z

.field private isTurnOnSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isPrevSettingOn:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isTurnOnSelected:Z

    return-void
.end method

.method private openCmcSetting()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_reason_cmcopen"

    const-string v2, "SETTINGS"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private save(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const v1, 0x7f0f00c7

    goto :goto_0

    :cond_0
    const v1, 0x7f0f00c6

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "label_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_1

    :cond_1
    const-string p1, "0"

    :goto_1
    const-string v1, "intent_params"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public initPrevSettings()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_params"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved state params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isPrevSettingOn:Z

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isTurnOnSelected:Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigureCmcOnOffRoutineAction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isPrevSettingOn:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->save(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "valid_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4
    sget-object v2, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_VALID_STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "currentActionSelected"

    .line 5
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isTurnOnSelected:Z

    .line 6
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isPrevSettingOn:Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->initPrevSettings()V

    :goto_0
    if-gez v1, :cond_1

    .line 8
    invoke-static {p0, v1}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->showErrorRoutineConfigPopup(Landroid/content/Context;I)V

    goto :goto_2

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigHelper;->getCmcOobe(Landroid/content/Context;)Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    move-result-object p1

    .line 10
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/utils/Utils;->isSaLogined(Landroid/content/Context;)Z

    move-result v0

    .line 11
    sget-object v1, Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;->off:Lcom/samsung/android/mdeccommon/serviceconfig/ServiceConfigEnums$CMC_OOBE;

    if-eq p1, v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isPrevSettingOn:Z

    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->showCmcOnOffRoutineConfigPopup(Landroid/content/Context;Z)V

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->showCmcSetUpRoutingConfigPopup(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public onOpenCmcForSetup()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "openCmcForSetup"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->openCmcSetting()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSavedInstanceState is On selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isTurnOnSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isTurnOnSelected:Z

    const-string v1, "currentActionSelected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTemporarySaveCmcRoutineSetting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/routine/ConfigActivity;->isTurnOnSelected:Z

    return-void
.end method
