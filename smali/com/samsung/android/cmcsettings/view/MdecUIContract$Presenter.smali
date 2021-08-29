.class public interface abstract Lcom/samsung/android/cmcsettings/view/MdecUIContract$Presenter;
.super Ljava/lang/Object;
.source "MdecUIContract.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/base/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/MdecUIContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract activate()V
.end method

.method public abstract activatePDDevice()V
.end method

.method public abstract activateSDDevice()V
.end method

.method public abstract changeSelectedSim(I)V
.end method

.method public abstract deactivateAndDeregisterDevice()V
.end method

.method public abstract flowAfterSAAndWelcomeDone()V
.end method

.method public abstract initFragments()V
.end method

.method public abstract initSDCallAndMessageFragment()V
.end method

.method public abstract launchReasonAction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract launchingFromQRAndAccountNotSame(Ljava/lang/String;)Z
.end method

.method public abstract performSwitchOperations(ZLjava/lang/String;)V
.end method

.method public abstract refreshPrimaryDeviceFragment()V
.end method

.method public abstract registerDevice(I)V
.end method

.method public abstract updateLinkedDeviceFragment(Z)V
.end method
