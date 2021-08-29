.class public abstract Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PrimaryDeviceFragmentBinding.java"


# instance fields
.field protected mFragment:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

.field protected mStateManager:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

.field public final pdtitle:Landroid/widget/TextView;

.field public final primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

.field public final primaryDeviceFragmentForSd:Landroid/widget/LinearLayout;

.field public final sdsummary:Landroid/widget/TextView;

.field public final sdtitle:Landroid/widget/TextView;

.field public final simActivation:Landroid/widget/TextView;

.field public final simIcon:Landroid/widget/ImageView;

.field public final simNumber:Landroid/widget/TextView;

.field public final summaryLayout:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->pdtitle:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForPd:Landroid/widget/LinearLayout;

    .line 4
    iput-object p6, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->primaryDeviceFragmentForSd:Landroid/widget/LinearLayout;

    .line 5
    iput-object p7, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdsummary:Landroid/widget/TextView;

    .line 6
    iput-object p8, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->sdtitle:Landroid/widget/TextView;

    .line 7
    iput-object p9, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simActivation:Landroid/widget/TextView;

    .line 8
    iput-object p10, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simIcon:Landroid/widget/ImageView;

    .line 9
    iput-object p11, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->simNumber:Landroid/widget/TextView;

    .line 10
    iput-object p12, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->summaryLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c004f

    .line 2
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
    .locals 1

    .line 3
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c004f

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c004f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;

    return-object p0
.end method


# virtual methods
.method public getFragment()Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->mFragment:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;

    return-object v0
.end method

.method public getStateManager()Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/PrimaryDeviceFragmentBinding;->mStateManager:Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;

    return-object v0
.end method

.method public abstract setFragment(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceFragment;)V
.end method

.method public abstract setStateManager(Lcom/samsung/android/cmcsettings/view/primaryDevice/PrimaryDeviceDetailViewModel;)V
.end method
