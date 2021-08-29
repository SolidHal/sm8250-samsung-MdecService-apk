.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "RemoveDeviceBaseDialogFragment.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private removeDeviceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    const-string v0, "removeDeviceDialogTag"

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method private removeDeviceInSet()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDeviceInSet: removeDeviceSet.size( ) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove deviceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {v2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->deleteSecondaryDevice(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceInSet()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string p1, "removeDeviceDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getRemoveDeviceSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    const p1, 0x7f0f00bd

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f00be

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    new-instance v0, Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00bf

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const p1, 0x7f0f0025

    .line 9
    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/f;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const p1, 0x7f0f00bc

    .line 10
    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/e;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    const-string v1, "removeDeviceSet"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "removeDeviceSet"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/RemoveDeviceBaseDialogFragment;->removeDeviceSet:Ljava/util/HashSet;

    return-void
.end method
