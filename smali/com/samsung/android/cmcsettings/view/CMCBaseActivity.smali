.class public Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.super Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;
.source "CMCBaseActivity.java"

# interfaces
.implements Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView$OTPAndPasswordCheckListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCheckOTPAndProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCheckPasswordAndProceed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onResume()V

    return-void
.end method
