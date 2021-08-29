.class public interface abstract Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;
.super Ljava/lang/Object;
.source "MdecUIContract.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/MdecUIContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UIView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OnCompleteTaskListener;,
        Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/cmcsettings/view/base/BaseView<",
        "Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public abstract doSAVerificationProcess()Z
.end method

.method public abstract onActivatePDDevice()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onLaunchSimOOBEDialog()V
.end method

.method public abstract onLaunchSwitchAccountDialog()V
.end method

.method public abstract onLaunchWelcomeActivity()V
.end method

.method public abstract onRequestAccessTokenProcess()V
.end method

.method public abstract onShowDefaultAppsDialog()V
.end method

.method public abstract onShowTurnOnCMCDialogSD(Ljava/lang/String;)V
.end method

.method public abstract onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V
.end method

.method public abstract onUpdateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;Z)V
.end method

.method public abstract refreshSuggestionTipCardFragment(Z)V
.end method

.method public abstract removeFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
.end method

.method public abstract replaceFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract replaceFragment(Ljava/lang/String;I)V
.end method

.method public abstract restartCMCOnCondition()V
.end method

.method public abstract stopCMCOnCondition()V
.end method
