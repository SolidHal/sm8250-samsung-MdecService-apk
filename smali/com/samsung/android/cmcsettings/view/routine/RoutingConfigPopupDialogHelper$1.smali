.class final Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$1;
.super Ljava/lang/Object;
.source "RoutingConfigPopupDialogHelper.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper;->showCmcOnOffRoutineConfigPopup(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$routinePopupListener:Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$1;->val$routinePopupListener:Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$1;->val$routinePopupListener:Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;

    const v0, 0x7f090198

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/samsung/android/cmcsettings/view/routine/RoutingConfigPopupDialogHelper$RoutinePopupListener;->onTemporarySaveCmcRoutineSetting(Z)V

    return-void
.end method
