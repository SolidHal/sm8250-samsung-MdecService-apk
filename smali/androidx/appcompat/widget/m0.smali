.class public abstract Landroidx/appcompat/widget/m0;
.super Landroidx/appcompat/widget/SeslProgressBar;
.source "SeslAbsSeekBar.java"


# static fields
.field private static final L0:Z


# instance fields
.field private A0:Landroid/content/res/ColorStateList;

.field private B0:Z

.field private C0:Z

.field private D0:Z

.field private E0:Z

.field private F0:Landroid/animation/AnimatorSet;

.field private G0:I

.field private H0:Z

.field private I0:Z

.field private J0:Z

.field private K0:I

.field private final P:Landroid/graphics/Rect;

.field private Q:Landroid/graphics/drawable/Drawable;

.field private R:Landroid/content/res/ColorStateList;

.field private S:Landroid/graphics/PorterDuff$Mode;

.field private T:Z

.field private U:Z

.field private V:Landroid/graphics/drawable/Drawable;

.field private W:Landroid/content/res/ColorStateList;

.field private a0:Landroid/graphics/PorterDuff$Mode;

.field private b0:Z

.field private c0:Z

.field private d0:I

.field private e0:Z

.field f0:F

.field g0:Z

.field private h0:I

.field private i0:F

.field private j0:I

.field private k0:F

.field private l0:Z

.field private m0:I

.field private n0:I

.field private o0:I

.field private p0:Landroid/graphics/drawable/Drawable;

.field private q0:Landroid/graphics/drawable/Drawable;

.field private r0:F

.field private s0:I

.field private t0:Landroid/graphics/drawable/Drawable;

.field private u0:Landroid/graphics/drawable/Drawable;

.field private v0:Landroid/content/res/ColorStateList;

.field private w0:Landroid/content/res/ColorStateList;

.field private x0:Landroid/content/res/ColorStateList;

.field private y0:Landroid/content/res/ColorStateList;

.field private z0:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/m0;->P:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->T:Z

    .line 6
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->U:Z

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->W:Landroid/content/res/ColorStateList;

    .line 8
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    .line 9
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->b0:Z

    .line 10
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->c0:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->g0:Z

    .line 12
    iput p1, p0, Landroidx/appcompat/widget/m0;->h0:I

    .line 13
    iput p2, p0, Landroidx/appcompat/widget/m0;->o0:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroidx/appcompat/widget/m0;->s0:I

    .line 15
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->B0:Z

    .line 16
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->C0:Z

    .line 17
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->D0:Z

    .line 18
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->E0:Z

    .line 19
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->H0:Z

    .line 20
    iput-boolean p2, p0, Landroidx/appcompat/widget/m0;->J0:Z

    .line 21
    iput p2, p0, Landroidx/appcompat/widget/m0;->K0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->P:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->T:Z

    .line 27
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->U:Z

    .line 28
    iput-object v0, p0, Landroidx/appcompat/widget/m0;->W:Landroid/content/res/ColorStateList;

    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    .line 30
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->b0:Z

    .line 31
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->c0:Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->g0:Z

    .line 33
    iput v0, p0, Landroidx/appcompat/widget/m0;->h0:I

    .line 34
    iput v1, p0, Landroidx/appcompat/widget/m0;->o0:I

    const/4 v2, -0x1

    .line 35
    iput v2, p0, Landroidx/appcompat/widget/m0;->s0:I

    .line 36
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->B0:Z

    .line 37
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->C0:Z

    .line 38
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->D0:Z

    .line 39
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->E0:Z

    .line 40
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->H0:Z

    .line 41
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->J0:Z

    .line 42
    iput v1, p0, Landroidx/appcompat/widget/m0;->K0:I

    .line 43
    sget-object v3, Lb/a/j;->AppCompatSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 44
    sget p4, Lb/a/j;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 45
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/m0;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 46
    sget p4, Lb/a/j;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 47
    sget p4, Lb/a/j;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v3, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p4, v3}, Landroidx/appcompat/widget/b0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    .line 48
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->U:Z

    .line 49
    :cond_0
    sget p4, Lb/a/j;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 50
    sget p4, Lb/a/j;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    .line 51
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->T:Z

    .line 52
    :cond_1
    sget p4, Lb/a/j;->AppCompatSeekBar_tickMark:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 53
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/m0;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 54
    sget p4, Lb/a/j;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 55
    sget p4, Lb/a/j;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v2, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p4, v2}, Landroidx/appcompat/widget/b0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    .line 56
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->c0:Z

    .line 57
    :cond_2
    sget p4, Lb/a/j;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 58
    sget p4, Lb/a/j;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroidx/appcompat/widget/m0;->W:Landroid/content/res/ColorStateList;

    .line 59
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->b0:Z

    .line 60
    :cond_3
    sget p4, Lb/a/j;->AppCompatSeekBar_android_splitTrack:I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/appcompat/widget/m0;->e0:Z

    .line 61
    sget p4, Lb/a/j;->AppCompatSeekBar_android_thumbOffset:I

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->getThumbOffset()I

    move-result v2

    .line 63
    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    .line 64
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/m0;->setThumbOffset(I)V

    .line 65
    sget p4, Lb/a/j;->AppCompatSeekBar_useDisabledAlpha:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 66
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p4, :cond_4

    .line 67
    sget-object p3, Lb/a/j;->AppCompatTheme:[I

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 68
    sget p3, Lb/a/j;->AppCompatTheme_android_disabledAlpha:I

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/m0;->i0:F

    .line 69
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 70
    iput p2, p0, Landroidx/appcompat/widget/m0;->i0:F

    .line 71
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->L()V

    .line 72
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->M()V

    .line 73
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/m0;->j0:I

    .line 74
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget p4, Lb/a/a;->isLightTheme:I

    invoke-virtual {p3, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget p2, p2, Landroid/util/TypedValue;->data:I

    if-eqz p2, :cond_5

    move v1, v0

    :cond_5
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->I0:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 78
    sget p2, Lb/a/c;->sesl_seekbar_control_color_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;->R(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m0;->v0:Landroid/content/res/ColorStateList;

    .line 79
    sget p2, Lb/a/c;->sesl_seekbar_control_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;->R(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m0;->w0:Landroid/content/res/ColorStateList;

    .line 80
    iget-boolean p2, p0, Landroidx/appcompat/widget/m0;->I0:Z

    if-eqz p2, :cond_6

    sget p2, Lb/a/c;->sesl_seekbar_overlap_color_normal:I

    goto :goto_1

    :cond_6
    sget p2, Lb/a/c;->sesl_seekbar_overlap_color_normal_dark:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;->R(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m0;->y0:Landroid/content/res/ColorStateList;

    .line 81
    sget p2, Lb/a/c;->sesl_seekbar_overlap_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;->R(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m0;->z0:Landroid/content/res/ColorStateList;

    .line 82
    iput-object p2, p0, Landroidx/appcompat/widget/m0;->A0:Landroid/content/res/ColorStateList;

    .line 83
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_7

    .line 84
    sget p2, Lb/a/c;->sesl_thumb_control_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;->R(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    .line 85
    :cond_7
    sget p2, Lb/a/b;->sesl_seekbar_sliding_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->B0:Z

    if-eqz p1, :cond_8

    .line 86
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->U()V

    :cond_8
    return-void
.end method

.method static synthetic J(Landroidx/appcompat/widget/m0;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/m0;->G0:I

    return p0
.end method

.method static synthetic K(Landroidx/appcompat/widget/m0;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/m0;->G0:I

    return p1
.end method

.method private L()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->T:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->U:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/m0;->T:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->U:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->b0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->c0:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/widget/m0;->b0:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/m0;->W:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->c0:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->F0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->F0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private Q()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/m0;->s0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private R(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 1
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private U()V
    .locals 8

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->F0:Landroid/animation/AnimatorSet;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x190

    move v3, v1

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 3
    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [I

    if-eqz v4, :cond_1

    aput v1, v6, v1

    aput v2, v6, v5

    .line 4
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    :cond_1
    aput v2, v6, v1

    aput v1, v6, v5

    .line 5
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_2
    const/16 v6, 0x3e

    int-to-long v6, v6

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v6, Landroidx/appcompat/widget/m0$a;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/m0$a;-><init>(Landroidx/appcompat/widget/m0;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    int-to-double v4, v2

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/m0;->F0:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private c0(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2}, Lb/f/d/j/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method private g0(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/m0;->h0(ILandroid/graphics/drawable/Drawable;FI)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v0

    .line 6
    iget v2, p0, Landroidx/appcompat/widget/m0;->d0:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 8
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 9
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    move v7, v2

    move v2, p4

    move p4, v7

    goto :goto_0

    :cond_1
    add-int v2, p4, v1

    .line 10
    :goto_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    sub-int p3, p1, p3

    :cond_2
    add-int/2addr v0, p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/m0;->d0:I

    sub-int/2addr v3, v4

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int v5, p3, v3

    add-int v6, p4, v4

    add-int/2addr v3, v0

    add-int/2addr v4, v2

    .line 14
    invoke-static {p1, v5, v6, v3, v4}, Lb/f/d/j/a;->l(Landroid/graphics/drawable/Drawable;IIII)V

    .line 15
    :cond_3
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Landroidx/appcompat/widget/m0;->m0:I

    .line 17
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p0, Landroidx/appcompat/widget/m0;->n0:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->s0()V

    return-void
.end method

.method private getDualOverlapDrawable()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/e;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/e;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/e;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/e;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private getScale()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h0(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 4
    iget v2, p0, Landroidx/appcompat/widget/m0;->d0:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float/2addr p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 6
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 7
    iget p4, p4, Landroid/graphics/Rect;->right:I

    move v7, v2

    move v2, p4

    move p4, v7

    goto :goto_0

    :cond_0
    add-int v2, p4, v0

    :goto_0
    sub-int/2addr p1, p3

    add-int/2addr v1, p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/m0;->d0:I

    sub-int/2addr v4, v5

    add-int v5, p4, v3

    add-int v6, p1, v4

    add-int/2addr v3, v2

    add-int/2addr v4, v1

    .line 11
    invoke-static {p3, v5, v6, v3, v4}, Lb/f/d/j/a;->l(Landroid/graphics/drawable/Drawable;IIII)V

    .line 12
    :cond_1
    invoke-virtual {p2, p4, p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result p2

    add-int/2addr p4, p2

    iput p4, p0, Landroidx/appcompat/widget/m0;->m0:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/appcompat/widget/m0;->n0:I

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    return-void
.end method

.method private i0(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->Z()V

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->n0(Landroid/view/MotionEvent;)V

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->N()V

    return-void
.end method

.method private j0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->P()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->F0:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private m0(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    move p1, v3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float v3, p1, v0

    .line 6
    iget p1, p0, Landroidx/appcompat/widget/m0;->f0:F

    move v4, v3

    move v3, p1

    move p1, v4

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 8
    iput p1, p0, Landroidx/appcompat/widget/m0;->o0:I

    return-void
.end method

.method private n0(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->o0(Landroid/view/MotionEvent;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 7
    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sub-int v1, v2, v0

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 11
    iget v2, p0, Landroidx/appcompat/widget/m0;->f0:F

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_4

    :goto_0
    move v1, v5

    move v2, v1

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_5

    :goto_1
    move v1, v4

    move v2, v5

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 15
    iget v2, p0, Landroidx/appcompat/widget/m0;->f0:F

    .line 16
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v6

    sub-int/2addr v3, v6

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    cmpl-float v5, v1, v5

    if-lez v5, :cond_6

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    rem-float v4, v1, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v6, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    sub-float/2addr v6, v4

    add-float/2addr v1, v6

    :cond_6
    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 18
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/widget/m0;->c0(FF)V

    .line 19
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/m0;->A(IZZ)Z

    return-void
.end method

.method private o0(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int p1, v0, p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    if-ge p1, v3, :cond_0

    move v0, v4

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 8
    iget v0, p0, Landroidx/appcompat/widget/m0;->f0:F

    move v5, v4

    move v4, v0

    move v0, v5

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v4, v0

    int-to-float v0, v2

    int-to-float p1, p1

    .line 10
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/widget/m0;->c0(FF)V

    float-to-int p1, v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/widget/m0;->A(IZZ)Z

    return-void
.end method

.method private p0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v2

    .line 5
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    if-nez v3, :cond_2

    .line 6
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 7
    iget v4, p0, Landroidx/appcompat/widget/m0;->s0:I

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-boolean v4, p0, Landroidx/appcompat/widget/m0;->H0:Z

    if-nez v4, :cond_1

    .line 8
    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 9
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Landroidx/appcompat/widget/m0;->s0:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 10
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float/2addr v3, v2

    add-float/2addr v5, v3

    float-to-int v1, v5

    .line 11
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 14
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v5, v4

    int-to-float v3, v3

    .line 15
    iget v6, p0, Landroidx/appcompat/widget/m0;->s0:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v4

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float/2addr v3, v1

    add-float/2addr v6, v3

    float-to-int v1, v6

    .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private q0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m0;->z0:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m0;->y0:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->H0:Z

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/m0;->s0:I

    if-le v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->z0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/m0;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->A0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/m0;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->w0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m0;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->p0()V

    return-void
.end method

.method private s0()V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->p0:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget v2, p0, Landroidx/appcompat/widget/m0;->m0:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroidx/appcompat/widget/m0;->m0:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->q0:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 10
    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->L:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v6, v4, v5

    div-float/2addr v6, v3

    sub-float v6, v0, v6

    float-to-int v6, v6

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v7, 0x41b00000    # 22.0f

    mul-float v8, v4, v7

    div-float/2addr v8, v3

    sub-float v8, v1, v8

    float-to-int v8, v8

    mul-float/2addr v5, v4

    div-float/2addr v5, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    mul-float/2addr v4, v7

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v6, v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->T:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->L()V

    return-void
.end method

.method private t0(II)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m0;->u0(II)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    .line 6
    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    if-le v4, v2, :cond_2

    sub-int/2addr p2, v4

    .line 8
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v4, v2

    .line 9
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v2

    .line 10
    div-int/lit8 p2, p2, 0x2

    sub-int v4, v2, v4

    .line 11
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    move v7, v4

    move v4, p2

    move p2, v7

    :goto_1
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v4

    .line 13
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v1, :cond_4

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->getScale()F

    move-result v0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/appcompat/widget/m0;->g0(ILandroid/graphics/drawable/Drawable;FI)V

    .line 15
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->s0()V

    return-void
.end method

.method private u0(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    .line 4
    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_0
    if-le v4, v2, :cond_1

    sub-int v5, p1, v4

    .line 6
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v2

    .line 7
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    sub-int v5, p1, v2

    .line 8
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v4

    .line 9
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    move v4, v5

    move v5, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v2, v6

    sub-int/2addr p1, v4

    .line 11
    invoke-virtual {v0, v4, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v1, :cond_3

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->getScale()F

    move-result p1

    invoke-direct {p0, p2, v1, p1, v5}, Landroidx/appcompat/widget/m0;->h0(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    return-void
.end method

.method private v0(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->z0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->A0:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->w0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public A(IZZ)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->A(IZZ)Z

    move-result p2

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->v0(I)V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->q0()V

    return p2
.end method

.method protected H(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->H(II)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m0;->t0(II)V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->p0()V

    return-void
.end method

.method O()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method S(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/m0;->d0:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/m0;->d0:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method protected T(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    iget-object v3, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    .line 5
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ltz v3, :cond_1

    .line 6
    div-int/lit8 v1, v3, 0x2

    .line 7
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    .line 11
    iget-object v4, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public V(I)Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/n/i/c;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method W(III)V
    .locals 0

    return-void
.end method

.method X()V
    .locals 0

    return-void
.end method

.method Y(III)V
    .locals 0

    return-void
.end method

.method Z()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->l0:Z

    return-void
.end method

.method a0()V
    .locals 0

    return-void
.end method

.method b0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->l0:Z

    return-void
.end method

.method public d0()V
    .locals 2

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lb/n/h/f;->k(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    .line 3
    invoke-static {v0, v1}, Lb/n/i/c;->d(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1, p2}, Lb/f/d/j/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/m0;->i0:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroidx/appcompat/widget/m0;->i0:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->T:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->q0()V

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public e0(II)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lb/n/h/f;->k(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0, p1, p2}, Lb/n/i/c;->f(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public f0(II)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lb/n/i/c;->e(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "SeslAbsSeekBar"

    const-string v2, "Stack:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHoverPopupType()I
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb/n/h/f;->l(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/m0;->h0:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->e0:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/m0;->d0:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->W:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method public k0()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lb/n/h/f;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lb/n/h/f;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->k0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->getHoverPopupType()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m0;->V(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/m0;->K0:I

    if-eq v1, v0, :cond_0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/m0;->K0:I

    const/16 v0, 0x3231

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m0;->setHoverPopupGravity(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 8
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/m0;->e0(II)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->d0()V

    .line 10
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->p0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->q0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->J0:Z

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->S(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->k0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->a0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/m0;->m0(I)V

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/m0;->o0:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/widget/m0;->Y(III)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/m0;->m0(I)V

    .line 9
    iget v0, p0, Landroidx/appcompat/widget/m0;->o0:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/widget/m0;->W(III)V

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->getHoverPopupType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m0;->V(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/m0;->f0(II)V

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->r0()V

    .line 13
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 6
    invoke-static {p1}, Lb/f/k/c0/c;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/f/k/c0/c;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Lb/f/k/c0/c;->a(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-static {p1}, Lb/f/k/c0/c;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;)Lb/f/k/c0/c;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lb/f/k/c0/c;->a(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/m0;->h0:I

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v2, 0x3

    const/16 v3, 0x51

    const/16 v4, 0x46

    const/16 v5, 0x45

    const/4 v6, 0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x13

    if-eq p1, v1, :cond_1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_0
    neg-int v0, v0

    .line 4
    :cond_1
    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-int v0, v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v6, v6}, Landroidx/appcompat/widget/m0;->A(IZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->X()V

    return v6

    :cond_3
    const/16 v1, 0x15

    if-eq p1, v1, :cond_4

    const/16 v1, 0x16

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    goto :goto_0

    :cond_4
    neg-int v0, v0

    .line 7
    :cond_5
    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    neg-int v0, v0

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v6, v6}, Landroidx/appcompat/widget/m0;->A(IZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->X()V

    return v6

    .line 10
    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 4
    :goto_0
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5
    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    iget v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 7
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 8
    :goto_1
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9
    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    iget v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 10
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v3

    goto :goto_2

    :cond_3
    move v0, v1

    move v2, v0

    .line 11
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 13
    invoke-static {v2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 14
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->getScale()F

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/appcompat/widget/m0;->g0(ILandroid/graphics/drawable/Drawable;FI)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslProgressBar;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/m0;->t0(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->g0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->J0:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->E0:Z

    .line 4
    iget-boolean p1, p0, Landroidx/appcompat/widget/m0;->l0:Z

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->b0()V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 8
    :cond_3
    iput-boolean v2, p0, Landroidx/appcompat/widget/m0;->E0:Z

    .line 9
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->l0:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->n0(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 13
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Landroidx/appcompat/widget/m0;->k0:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroidx/appcompat/widget/m0;->j0:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_6

    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    if-ne v0, v4, :cond_c

    iget v0, p0, Landroidx/appcompat/widget/m0;->r0:F

    sub-float/2addr v1, v0

    .line 14
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/m0;->j0:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 15
    :cond_6
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->i0(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 16
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->E0:Z

    if-eqz v0, :cond_8

    .line 17
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->E0:Z

    .line 18
    :cond_8
    iget-boolean v0, p0, Landroidx/appcompat/widget/m0;->l0:Z

    if-eqz v0, :cond_9

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->n0(Landroid/view/MotionEvent;)V

    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->b0()V

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 22
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->Z()V

    .line 23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->n0(Landroid/view/MotionEvent;)V

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->b0()V

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 26
    :cond_a
    iput-boolean v1, p0, Landroidx/appcompat/widget/m0;->E0:Z

    .line 27
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->l0()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/m0;->k0:F

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/m0;->r0:F

    goto :goto_1

    .line 30
    :cond_b
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->i0(Landroid/view/MotionEvent;)V

    :cond_c
    :goto_1
    return v2

    :cond_d
    :goto_2
    return v1
.end method

.method p(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/widget/m0;->e0:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/b0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/m0;->P:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Landroidx/appcompat/widget/m0;->d0:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 7
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 8
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->p(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->T(Landroid/graphics/Canvas;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->p(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->T(Landroid/graphics/Canvas;)V

    .line 16
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->Q()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 20
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/m0;->s0:I

    if-le v0, v1, :cond_3

    .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->t0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->O()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_5

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, p1, v1, v1}, Landroidx/appcompat/widget/m0;->A(IZZ)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v2

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->O()Z

    move-result p2

    if-nez p2, :cond_7

    return v2

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    .line 9
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p1, v3, :cond_8

    neg-int p2, p2

    .line 10
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v1, v1}, Landroidx/appcompat/widget/m0;->A(IZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/m0;->X()V

    return v1

    :cond_9
    return v2
.end method

.method public r0()V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lb/n/h/f;->k(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lb/n/i/c;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setHoverPopupGravity(I)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/m0;->L0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lb/n/h/f;->k(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lb/n/i/c;->c(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    .line 1
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/m0;->h0:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->D0:Z

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    iget v1, p0, Landroidx/appcompat/widget/m0;->h0:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/m0;->h0:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/m0;->h0:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/m0;->h0:I

    div-int v0, p1, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    int-to-float p1, p1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr p1, v1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMode(I)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/a/e;->sesl_split_seekbar_primary_progress:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/m0;->p0:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/a/e;->sesl_split_seekbar_vertical_bar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/m0;->q0:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->s0()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/a/e;->sesl_scrubber_control_anim:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->v0(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->w0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/m0;->s0:I

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->w0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 5
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/m0;->s0:I

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->getDualOverlapDrawable()V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->q0()V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->w0:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->e0:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v1}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 6
    :cond_1
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/appcompat/widget/m0;->d0:I

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/appcompat/widget/m0;->d0:I

    :goto_1
    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->L()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/m0;->t0(II)V

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/m0;->d0:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;->R(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->R:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/m0;->T:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->L()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->x0:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->S:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->U:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->L()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->M()V

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->W:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->b0:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->M()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/m0;->a0:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/m0;->c0:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->M()V

    return-void
.end method

.method u(FZI)V
    .locals 3

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1
    iget-boolean v1, p0, Landroidx/appcompat/widget/m0;->C0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/m0;->D0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/m0;->E0:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/m0;->G0:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->j0()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/m0;->P()V

    .line 5
    iput-boolean v2, p0, Landroidx/appcompat/widget/m0;->D0:Z

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/m0;->G0:I

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->u(FZI)V

    .line 8
    iget-object p2, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    const/high16 v0, -0x80000000

    invoke-direct {p0, p3, p2, p1, v0}, Landroidx/appcompat/widget/m0;->g0(ILandroid/graphics/drawable/Drawable;FI)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected v(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->v(I)V

    int-to-float p1, p1

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroidx/appcompat/widget/m0;->g0(ILandroid/graphics/drawable/Drawable;FI)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/m0;->V:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method w(IF)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->w(IF)V

    .line 2
    sget v0, Lb/a/f;->progress:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/m0;->Q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, p1, p2, v1}, Landroidx/appcompat/widget/m0;->g0(ILandroid/graphics/drawable/Drawable;FI)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
