.class public abstract Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityCmcmainBinding.java"


# instance fields
.field public final bottomBar:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final collapsingAppBar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public final contentEndPane:Landroid/widget/LinearLayout;

.field public final contentFrame:Landroid/widget/LinearLayout;

.field public final contentStartPane:Landroid/widget/LinearLayout;

.field public final fragmentPlaceholder:Landroid/widget/FrameLayout;

.field public final fragmentPlaceholderCallMessage:Landroid/widget/FrameLayout;

.field public final fragmentPlaceholderPd:Landroid/widget/FrameLayout;

.field public final fragmentPlaceholderSd:Landroid/widget/FrameLayout;

.field public final fragmentPlaceholderSuggestions:Landroid/widget/FrameLayout;

.field protected mStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

.field public final mainFragmentLayout:Landroid/widget/LinearLayout;

.field public final scrollableLayout:Landroid/widget/LinearLayout;

.field public final switchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;Landroidx/appcompat/widget/Toolbar;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->bottomBar:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->collapsingAppBar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->contentEndPane:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->contentFrame:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->contentStartPane:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->fragmentPlaceholder:Landroid/widget/FrameLayout;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->fragmentPlaceholderCallMessage:Landroid/widget/FrameLayout;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->fragmentPlaceholderPd:Landroid/widget/FrameLayout;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->fragmentPlaceholderSd:Landroid/widget/FrameLayout;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->fragmentPlaceholderSuggestions:Landroid/widget/FrameLayout;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->mainFragmentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->scrollableLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->switchBar:Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c000d

    .line 2
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
    .locals 1

    .line 3
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c000d

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c000d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;

    return-object p0
.end method


# virtual methods
.method public getStateManager()Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcmainBinding;->mStateManager:Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;

    return-object v0
.end method

.method public abstract setStateManager(Lcom/samsung/android/cmcsettings/view/base/viewModel/CMCStateManager;)V
.end method
