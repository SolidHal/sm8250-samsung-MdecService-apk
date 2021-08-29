.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "ChangeMainDeviceBaseDialogFragment.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 4
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ChangeMainDeviceBaseDialogFragment"

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mSelectedIndex:I

    const-string p1, "changeMainDialogTag"

    .line 8
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method private changeMainDevice(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->getPrimaryDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "PD data available for Delete: joinServiceAsPrimaryDevice with ChangePd"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/api/internal/MdecInterfaceFactory;->getMdecInterface()Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mSelectedIndex:I

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->ChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;->addPrimaryDevice(ILjava/lang/String;Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$Result;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->startForegroundService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "setPositiveButton"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result p2

    const/16 v0, 0x1c05

    invoke-static {p1, p2, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object p2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/DialogUtil;->sendBroadcastForNetworkErrorPopup(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->changeMainDevice(Landroid/content/Context;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result p2

    const/16 v0, 0x1c04

    invoke-static {p1, p2, v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "setNegativeButton"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    sget-object p2, Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;->off:Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v0, "changeMainDialogTag"

    .line 1
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Landroidx/appcompat/app/c$a;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f002d

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog called with deviceName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "deviceName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u200e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    const v0, 0x7f0f002c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 9
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const p1, 0x7f0f002b

    .line 10
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/d;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;)V

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const p1, 0x7f0f0025

    .line 11
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/c;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;)V

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 12
    invoke-virtual {p0, v3}, Landroidx/fragment/app/b;->setCancelable(Z)V

    .line 13
    invoke-virtual {v1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    const-string v1, "deviceName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "deviceName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setmSelectedIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/ChangeMainDeviceBaseDialogFragment;->mSelectedIndex:I

    return-void
.end method
