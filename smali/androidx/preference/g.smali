.class public abstract Landroidx/preference/g;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroidx/preference/j$c;
.implements Landroidx/preference/j$a;
.implements Landroidx/preference/j$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/g$d;,
        Landroidx/preference/g$h;,
        Landroidx/preference/g$e;,
        Landroidx/preference/g$g;,
        Landroidx/preference/g$f;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field public static final SESL_ROUNDED_CORNER_TYPE_NONE:I = 0x0

.field public static final SESL_ROUNDED_CORNER_TYPE_SOLID:I = 0x1

.field public static final SESL_ROUNDED_CORNER_TYPE_STROKE:I = 0x2

.field private static final SESL_SWITCH_PREFERENCE_LAYOUT:I = 0x2

.field private static final SESL_SWITCH_PREFERENCE_LAYOUT_LARGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslPreferenceFragmentC"


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$r;

.field private final mDividerDecoration:Landroidx/preference/g$d;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mIsLargeLayout:I

.field private mLayoutResId:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/j;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mRoundedCornerType:I

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mSeslListRoundedCorner:Lb/a/n/b;

.field private mSeslRoundedCorner:Lb/a/n/b;

.field private mSeslStrokeListRoundedCorner:Lb/a/n/b;

.field private mSeslSubheaderRoundedCorner:Lb/a/n/d;

.field private mSubheaderColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroidx/preference/g$d;

    invoke-direct {v0, p0}, Landroidx/preference/g$d;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$d;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroidx/preference/g;->mRoundedCornerType:I

    .line 4
    sget v0, Landroidx/preference/q;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/g;->mLayoutResId:I

    .line 5
    new-instance v0, Landroidx/preference/g$a;

    invoke-direct {v0, p0}, Landroidx/preference/g$a;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v0, Landroidx/preference/g$b;

    invoke-direct {v0, p0}, Landroidx/preference/g$b;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroidx/preference/g;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/preference/g;->mRoundedCornerType:I

    return p0
.end method

.method static synthetic access$100(Landroidx/preference/g;)Lb/a/n/d;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/g;->mSeslSubheaderRoundedCorner:Lb/a/n/d;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/preference/g;)Lb/a/n/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/g;->mSeslRoundedCorner:Lb/a/n/b;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/preference/g;)Lb/a/n/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/g;->mSeslStrokeListRoundedCorner:Lb/a/n/b;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/preference/g;)Lb/a/n/b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/g;->mSeslListRoundedCorner:Lb/a/n/b;

    return-object p0
.end method

.method private postBindPreferences()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/preference/g$c;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/g$c;-><init>(Landroidx/preference/g;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    .line 3
    iput-object v0, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onDetached()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->onUnbindPreferences()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/preference/g;->requirePreferenceManager()V

    .line 2
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/j;->m(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/g;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method bindPreferences()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Landroidx/preference/g;->mRoundedCornerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Landroidx/preference/g;->mSubheaderColor:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderColor(I)V

    .line 4
    iput-boolean v2, v0, Landroidx/preference/Preference;->mIsSolidRoundedCorner:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/g;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 6
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/g;->onBindPreferences()V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->k()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onBindPreferences()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v0

    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x140

    const/4 v3, 0x1

    if-gt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 4
    :goto_0
    instance-of v2, v0, Landroidx/preference/h;

    if-eqz v2, :cond_6

    iget v2, p0, Landroidx/preference/g;->mIsLargeLayout:I

    if-eq v1, v2, :cond_6

    .line 5
    iput v1, p0, Landroidx/preference/g;->mIsLargeLayout:I

    const/4 v1, 0x0

    move v2, v1

    .line 6
    :goto_1
    move-object v4, v0

    check-cast v4, Landroidx/preference/h;

    invoke-virtual {v4}, Landroidx/preference/h;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 7
    invoke-virtual {v4, v1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 8
    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v5, :cond_4

    .line 9
    instance-of v2, v4, Landroidx/preference/SeslSwitchPreferenceScreen;

    if-eqz v2, :cond_2

    .line 10
    iget v2, p0, Landroidx/preference/g;->mIsLargeLayout:I

    if-ne v2, v3, :cond_1

    sget v2, Landroidx/preference/q;->sesl_switch_preference_screen_large:I

    goto :goto_2

    :cond_1
    sget v2, Landroidx/preference/q;->sesl_switch_preference_screen_default:I

    :goto_2
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_4

    .line 11
    :cond_2
    iget v2, p0, Landroidx/preference/g;->mIsLargeLayout:I

    if-ne v2, v3, :cond_3

    sget v2, Landroidx/preference/q;->sesl_preference_switch_large:I

    goto :goto_3

    :cond_3
    sget v2, Landroidx/preference/q;->sesl_preference:I

    :goto_3
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_4
    move v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyDataSetChanged()V

    .line 13
    :cond_6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/m;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 5
    sget v0, Landroidx/preference/s;->PreferenceThemeOverlay:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x140

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    iput v3, p0, Landroidx/preference/g;->mIsLargeLayout:I

    .line 8
    new-instance v0, Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    .line 9
    invoke-virtual {v0, p0}, Landroidx/preference/j;->p(Landroidx/preference/j$b;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/preference/g;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$r;
    .locals 1

    .line 1
    new-instance v0, Landroidx/preference/h;

    invoke-direct {v0, p1}, Landroidx/preference/h;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    sget p3, Landroidx/preference/p;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 3
    :cond_0
    sget p3, Landroidx/preference/q;->sesl_preference_recyclerview:I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {p0}, Landroidx/preference/g;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$z;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 6
    new-instance p2, Landroidx/preference/k;

    invoke-direct {p2, p1}, Landroidx/preference/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/n;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/preference/t;->PreferenceFragmentCompat:[I

    sget v2, Landroidx/preference/m;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Landroidx/preference/t;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Landroidx/preference/g;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/g;->mLayoutResId:I

    .line 3
    sget v1, Landroidx/preference/t;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    sget v2, Landroidx/preference/t;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 5
    sget v6, Landroidx/preference/t;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroidx/preference/t;->View:[I

    const v10, 0x1010208

    invoke-virtual {v8, v3, v9, v10, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 9
    sget v9, Landroidx/preference/t;->View_android_background:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 10
    instance-of v10, v9, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_0

    .line 11
    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v9

    iput v9, p0, Landroidx/preference/g;->mSubheaderColor:I

    .line 12
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " sub header color = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Landroidx/preference/g;->mSubheaderColor:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SeslPreferenceFragmentC"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 15
    iget v8, p0, Landroidx/preference/g;->mLayoutResId:I

    invoke-virtual {p1, v8, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v8, 0x102003f

    .line 16
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 17
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_7

    .line 18
    check-cast v8, Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p0, p1, v8, p3}, Landroidx/preference/g;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 20
    iput-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    iget-object p3, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$d;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 22
    invoke-virtual {p0, v1}, Landroidx/preference/g;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v5, :cond_1

    .line 23
    invoke-virtual {p0, v2}, Landroidx/preference/g;->setDividerHeight(I)V

    .line 24
    :cond_1
    iget-object p3, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$d;

    invoke-virtual {p3, v6}, Landroidx/preference/g$d;->e(Z)V

    .line 25
    iget-object p3, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 26
    iget p3, p0, Landroidx/preference/g;->mRoundedCornerType:I

    const/16 v1, 0xf

    if-ne p3, v7, :cond_2

    .line 27
    new-instance p3, Lb/a/n/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, v4}, Lb/a/n/d;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Landroidx/preference/g;->mSeslSubheaderRoundedCorner:Lb/a/n/d;

    .line 28
    new-instance p3, Lb/a/n/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2, v4}, Lb/a/n/b;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Landroidx/preference/g;->mSeslRoundedCorner:Lb/a/n/b;

    .line 29
    sget p3, Landroidx/preference/n;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Landroidx/preference/g;->mSubheaderColor:I

    .line 30
    iget-object v0, p0, Landroidx/preference/g;->mSeslSubheaderRoundedCorner:Lb/a/n/d;

    invoke-virtual {v0, v1, p3}, Lb/a/n/b;->e(II)V

    .line 31
    iget-object p3, p0, Landroidx/preference/g;->mSeslRoundedCorner:Lb/a/n/b;

    iget v0, p0, Landroidx/preference/g;->mSubheaderColor:I

    invoke-virtual {p3, v1, v0}, Lb/a/n/b;->e(II)V

    .line 32
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOutlineStrokeEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 33
    new-instance p3, Lb/a/n/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lb/a/n/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/preference/g;->mSeslRoundedCorner:Lb/a/n/b;

    .line 34
    new-instance p3, Lb/a/n/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lb/a/n/d;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/preference/g;->mSeslSubheaderRoundedCorner:Lb/a/n/d;

    .line 35
    :cond_3
    :goto_0
    iget p3, p0, Landroidx/preference/g;->mRoundedCornerType:I

    if-eqz p3, :cond_4

    .line 36
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 37
    iget p3, p0, Landroidx/preference/g;->mSubheaderColor:I

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomColor(I)V

    .line 38
    new-instance p1, Lb/a/n/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, v4, v7}, Lb/a/n/b;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Landroidx/preference/g;->mSeslListRoundedCorner:Lb/a/n/b;

    .line 39
    iget p3, p0, Landroidx/preference/g;->mSubheaderColor:I

    invoke-virtual {p1, v1, p3}, Lb/a/n/b;->e(II)V

    .line 40
    iget-object p1, p0, Landroidx/preference/g;->mSeslListRoundedCorner:Lb/a/n/b;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lb/a/n/b;->f(I)V

    .line 41
    new-instance p1, Lb/a/n/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/n/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/preference/g;->mSeslStrokeListRoundedCorner:Lb/a/n/b;

    .line 42
    invoke-virtual {p1, p3}, Lb/a/n/b;->f(I)V

    .line 43
    :cond_4
    iget-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_5

    .line 44
    iget-object p1, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_5
    iget-object p1, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Landroidx/preference/g;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 46
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/g;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/preference/g;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean v0, p0, Landroidx/preference/g;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Landroidx/preference/g;->unbindPreferences()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$e;

    .line 3
    invoke-interface {v0, p0, p1}, Landroidx/preference/g$e;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/g$e;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$e;

    .line 6
    invoke-interface {v0, p0, p1}, Landroidx/preference/g$e;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/b;->i(Ljava/lang/String;)Landroidx/preference/b;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/c;->i(Ljava/lang/String;)Landroidx/preference/c;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/d;->i(Ljava/lang/String;)Landroidx/preference/d;

    move-result-object p1

    .line 14
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/b;->show(Landroidx/fragment/app/h;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$g;

    .line 3
    invoke-interface {v0, p0, p1}, Landroidx/preference/g$g;->a(Landroidx/preference/g;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$g;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$g;

    .line 6
    invoke-interface {v0, p0, p1}, Landroidx/preference/g$g;->a(Landroidx/preference/g;Landroidx/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/g$f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/g;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$f;

    .line 4
    invoke-interface {v0, p0, p1}, Landroidx/preference/g$f;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/g$f;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Landroidx/preference/g$f;

    .line 7
    invoke-interface {v0, p0, p1}, Landroidx/preference/g$f;->a(Landroidx/preference/g;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "SeslPreferenceFragmentC"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/c;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/h;->e()Landroidx/fragment/app/f;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/c;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v3, v4, p1, v2}, Landroidx/fragment/app/f;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/k;->k(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Landroidx/fragment/app/k;->d(Ljava/lang/String;)Landroidx/fragment/app/k;

    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()I

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->q(Landroidx/preference/j$c;)V

    .line 3
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p0}, Landroidx/preference/j;->o(Landroidx/preference/j$a;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/j;->q(Landroidx/preference/j$c;)V

    .line 3
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, v1}, Landroidx/preference/j;->o(Landroidx/preference/j$a;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Landroidx/preference/g;->mHavePrefs:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/preference/g;->bindPreferences()V

    .line 7
    iget-object p1, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/preference/g;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/preference/g;->mInitDone:Z

    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/preference/g;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/preference/g;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public seslSetRoundedCornerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/g;->mRoundedCornerType:I

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$d;

    invoke-virtual {v0, p1}, Landroidx/preference/g$d;->f(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mDividerDecoration:Landroidx/preference/g$d;

    invoke-virtual {v0, p1}, Landroidx/preference/g$d;->g(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0, p1}, Landroidx/preference/j;->r(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/g;->onUnbindPreferences()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/preference/g;->mHavePrefs:Z

    .line 4
    iget-boolean p1, p0, Landroidx/preference/g;->mInitDone:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Landroidx/preference/g;->postBindPreferences()V

    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/preference/g;->requirePreferenceManager()V

    .line 2
    iget-object v0, p0, Landroidx/preference/g;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/j;->m(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference object with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a PreferenceScreen"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/g;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method
