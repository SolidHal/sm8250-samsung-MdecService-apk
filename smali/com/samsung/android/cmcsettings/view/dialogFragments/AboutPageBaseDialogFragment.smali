.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "AboutPageBaseDialogFragment.java"


# instance fields
.field private D:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private PWD:Ljava/lang/String;

.field private mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "aboutPageDialogTag"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->PWD:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showDialog :  Ok: pwd = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->PWD:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isUserBinary()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->PWD:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->D:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;->onCheckOTPAndProceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;

    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->PWD:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;->onCheckPasswordAndProceed(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/b;->dismiss()V

    return-void
.end method

.method public getD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getPWD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->PWD:Ljava/lang/String;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string p1, "aboutPageDialogTag"

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 2
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0c0008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    const v1, 0x7f090008

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const/16 v3, 0x24

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;->D:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isUserBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    :cond_0
    const v1, 0x7f0f002b

    .line 11
    new-instance v2, Lcom/samsung/android/cmcsettings/view/dialogFragments/b;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/b;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0025

    .line 12
    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/a;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
