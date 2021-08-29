.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field private d:I

.field private e:I

.field f:Z

.field private g:Landroidx/appcompat/widget/SeslSeekBar;

.field h:Z

.field private i:Landroidx/appcompat/widget/SeslSeekBar$a;

.field private j:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 12
    sget v0, Landroidx/preference/m;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->i:Landroidx/appcompat/widget/SeslSeekBar$a;

    .line 3
    new-instance v0, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->j:Landroid/view/View$OnKeyListener;

    .line 4
    sget-object v0, Landroidx/preference/t;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Landroidx/preference/t;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 6
    sget p2, Landroidx/preference/t;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->c(I)V

    .line 7
    sget p2, Landroidx/preference/t;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->d(I)V

    .line 8
    sget p2, Landroidx/preference/t;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->h:Z

    .line 9
    sget p2, Landroidx/preference/t;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Landroidx/preference/SeekBarPreference;Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/SeekBarPreference;->g(Landroidx/appcompat/widget/SeslSeekBar;)V

    return-void
.end method

.method static synthetic b(Landroidx/preference/SeekBarPreference;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method private f(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-eq p1, v0, :cond_2

    .line 4
    iput p1, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method private g(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->f(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->e:I

    if-eq p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->f(IZ)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->j:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3
    sget v0, Landroidx/preference/p;->seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p1, :cond_0

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->i:Landroidx/appcompat/widget/SeslSeekBar$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$a;)V

    .line 6
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/m0;->setMax(I)V

    .line 7
    iget p1, p0, Landroidx/preference/SeekBarPreference;->e:I

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/m0;->setKeyProgressIncrement(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/m0;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->e:I

    .line 10
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    .line 11
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Landroidx/preference/p;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/m0;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 6
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 7
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->d:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    .line 5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    .line 6
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->d:I

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->e(I)V

    return-void
.end method
