.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "SwitchAccountBaseDialogFragment.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "switchAccountDialogTag"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method private launchSALogoutActivity(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    .line 2
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3
    array-length v0, v0

    if-lez v0, :cond_1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.OPEN_PERSONAL_INFORMATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p1, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.accountsetting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v2}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->setActivationIntermediate(Landroid/content/Context;I)V

    const/16 p1, 0x69

    .line 10
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const p2, 0x7f0f0113

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isDeviceActivated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;->onRequestAccessTokenProcess()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;->launchSALogoutActivity(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "switchAccountDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreateDialog"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const v1, 0x7f0c0024

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f010b

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0025

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/i;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/i;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0108

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/j;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/j;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/SwitchAccountBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/b;->setCancelable(Z)V

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
