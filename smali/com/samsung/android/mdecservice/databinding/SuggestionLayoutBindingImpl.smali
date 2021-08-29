.class public Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;
.super Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;
.source "SuggestionLayoutBindingImpl.java"

# interfaces
.implements Lcom/samsung/android/mdecservice/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$j;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$j;

    sget-object v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$j;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x2

    .line 2
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v2, p3, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v5, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->closeButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->suggestionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->tipActionTextview:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    new-instance p1, Lcom/samsung/android/mdecservice/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/mdecservice/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/mdecservice/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 11
    new-instance p1, Lcom/samsung/android/mdecservice/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/mdecservice/generated/callback/OnClickListener;-><init>(Lcom/samsung/android/mdecservice/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeSuggestViewModelIsTipVisible(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeSuggestViewModelTipButtonText(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeSuggestViewModelTipDescriptionText(Landroidx/lifecycle/o;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->mSuggestFragment:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->onFragmentClick()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->mSuggestFragment:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    if-eqz p1, :cond_3

    move p2, v0

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->onCloseButtonClicked()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->mSuggestViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    const-wide/16 v6, 0x37

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x34

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x31

    const/4 v13, 0x0

    if-eqz v6, :cond_a

    and-long v15, v2, v11

    cmp-long v6, v15, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->getTipDescriptionText()Landroidx/lifecycle/o;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v13, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v15, v2, v9

    cmp-long v15, v15, v4

    if-eqz v15, :cond_7

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->getIsTipVisible()Landroidx/lifecycle/o;

    move-result-object v16

    move-object/from16 v13, v16

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x1

    .line 10
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_3

    .line 11
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 12
    :goto_3
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    if-eqz v15, :cond_5

    if-eqz v13, :cond_4

    const-wide/16 v14, 0x80

    goto :goto_4

    :cond_4
    const-wide/16 v14, 0x40

    :goto_4
    or-long/2addr v2, v14

    :cond_5
    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    const/16 v13, 0x8

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v13, 0x0

    :goto_6
    and-long v14, v2, v7

    cmp-long v14, v14, v4

    if-eqz v14, :cond_9

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->getTipButtonText()Landroidx/lifecycle/o;

    move-result-object v0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    const/4 v14, 0x2

    .line 14
    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_9

    .line 15
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    move-object v0, v14

    move-object v14, v6

    goto :goto_8

    :cond_9
    move-object v14, v6

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    const-wide/16 v15, 0x20

    and-long/2addr v15, v2

    cmp-long v6, v15, v4

    if-eqz v6, :cond_b

    .line 16
    iget-object v6, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->closeButton:Landroid/widget/ImageButton;

    iget-object v15, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v6, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->tipActionTextview:Landroid/widget/TextView;

    iget-object v15, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    and-long/2addr v9, v2

    cmp-long v6, v9, v4

    if-eqz v6, :cond_c

    .line 18
    iget-object v6, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_c
    and-long v9, v2, v11

    cmp-long v6, v9, v4

    if-eqz v6, :cond_d

    .line 19
    iget-object v6, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->suggestionTextView:Landroid/widget/TextView;

    invoke-static {v6, v14}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    and-long/2addr v2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 20
    iget-object v2, v1, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->tipActionTextview:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/p/a;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->onChangeSuggestViewModelTipButtonText(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->onChangeSuggestViewModelIsTipVisible(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1

    .line 3
    :cond_2
    check-cast p2, Landroidx/lifecycle/o;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->onChangeSuggestViewModelTipDescriptionText(Landroidx/lifecycle/o;I)Z

    move-result p1

    return p1
.end method

.method public setSuggestFragment(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->mSuggestFragment:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSuggestViewModel(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBinding;->mSuggestViewModel:Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->mDirtyFlags:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/a;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->setSuggestFragment(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 2
    check-cast p2, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mdecservice/databinding/SuggestionLayoutBindingImpl;->setSuggestViewModel(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
