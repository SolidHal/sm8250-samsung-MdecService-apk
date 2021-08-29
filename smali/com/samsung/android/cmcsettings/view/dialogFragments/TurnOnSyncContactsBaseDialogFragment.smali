.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "TurnOnSyncContactsBaseDialogFragment.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "turnOnSyncDialogTag"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "sync contacts Confirm"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "isPositiveButtonClicked"

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    const-string v0, "turnOnSyncDialogTag"

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;->onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string p2, "sync contacts Later"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "isPositiveButtonClicked"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    const-string v0, "turnOnSyncDialogTag"

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;->onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isPositiveButtonClicked"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    const-string v1, "turnOnSyncDialogTag"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;->onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "turnOnSyncDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0041

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f010c

    .line 5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f010d

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/m;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/m;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0110

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/n;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/n;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/TurnOnSyncContactsBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method
