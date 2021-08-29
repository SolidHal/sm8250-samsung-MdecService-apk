.class public abstract Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.super Landroidx/fragment/app/b;
.source "CMCBaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field protected fragmentTag:Ljava/lang/String;

.field protected mContext:Landroidx/fragment/app/c;

.field public mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

.field protected mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onAttach(Landroid/content/Context;)V

    .line 2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    .line 3
    check-cast p1, Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mdecUIContractUIView:Lcom/samsung/android/cmcsettings/view/MdecUIContract$UIView;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/b;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setonCompleteListener(Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mListener:Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;

    return-void
.end method
