.class public Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;,
        Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static final XML_ATTRIBUTES:[I


# instance fields
.field private mBackground:Landroid/widget/LinearLayout;

.field private mBackgroundActivatedColor:I

.field private mBackgroundColor:I

.field private mLabel:Ljava/lang/String;

.field private mOffTextId:I

.field private mOnTextId:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSummary:Ljava/lang/String;

.field private final mSummarySpan:Landroid/text/style/TextAppearanceSpan;

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->XML_ATTRIBUTES:[I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f040259
        0x7f040258
        0x7f040257
        0x7f040256
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c0092

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    sget-object p4, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->XML_ATTRIBUTES:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x2

    .line 11
    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackgroundColor:I

    const/4 v2, 0x3

    .line 12
    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackgroundActivatedColor:I

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f09016e

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    .line 15
    new-instance p2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100196

    invoke-direct {p2, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    .line 16
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const p2, 0x7f0900c5

    .line 18
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06009e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackgroundColor:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f06009f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 21
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x7f04015a

    invoke-virtual {p1, v2, v1, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget p1, v1, Landroid/util/TypedValue;->data:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    const p1, 0xffffff

    and-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/high16 p2, -0x34000000    # -3.3554432E7f

    goto :goto_1

    :cond_1
    const/high16 p2, 0x66000000

    :goto_1
    or-int/2addr p1, p2

    .line 24
    iput p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackgroundActivatedColor:I

    const p1, 0x7f09016b

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 26
    invoke-virtual {p1, p4}, Landroid/widget/CompoundButton;->setSaveEnabled(Z)V

    .line 27
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->init()V

    const p1, 0x7f09016d

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    const p2, 0x7f080070

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 32
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$1;-><init>(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0f010a

    const p2, 0x7f0f0109

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setSwitchBarText(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateText()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSummarySpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTextColor(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0601b8

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0601b7

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnSwitchChangeListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getDelegatingView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public final getSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public hideProgressBarInSwitch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Gone"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2
    new-instance v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$2;-><init>(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged: isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 4
    iget-boolean v0, p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 5
    iget-boolean v0, p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean p1, p1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;->visible:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;->checked:Z

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->isShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$SavedState;->visible:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    new-instance p3, Landroid/view/TouchDelegate;

    new-instance p4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method

.method public propagateChecked(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propagateChecked: isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;->onSwitchChanged(Landroidx/appcompat/widget/SwitchCompat;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnSwitchChangeListener(Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$OnSwitchChangeListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnSwitchChangeListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked: checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mSummary:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->updateText()V

    return-void
.end method

.method public setSwitchBarText(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mOnTextId:I

    .line 2
    iput p2, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mOffTextId:I

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0f010a

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0109

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->updateText()V

    return-void
.end method

.method public setTextViewLabelAndBackground(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mOnTextId:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mOffTextId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mLabel:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->updateText()V

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->updateTextColor(Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackgroundActivatedColor:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackgroundColor:I

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mTextView:Landroid/widget/TextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mBackground:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public showProgressBarInSwitch()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showProgressBarInSwitch()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public updateSwitchState(Lcom/samsung/android/cmcsettings/utils/ViewUtils$SwitchState;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar$3;->$SwitchMap$com$samsung$android$cmcsettings$utils$ViewUtils$SwitchState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->hideProgressBarInSwitch()V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->showProgressBarInSwitch()V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setEnabled(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->hideProgressBarInSwitch()V

    goto :goto_0

    .line 13
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setChecked(Z)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->setEnabled(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/base/widget/SwitchBar;->hideProgressBarInSwitch()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
