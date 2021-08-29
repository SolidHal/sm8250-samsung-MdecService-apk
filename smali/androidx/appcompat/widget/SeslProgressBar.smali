.class public Landroidx/appcompat/widget/SeslProgressBar;
.super Landroid/view/View;
.source "SeslProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SeslProgressBar$c;,
        Landroidx/appcompat/widget/SeslProgressBar$b;,
        Landroidx/appcompat/widget/SeslProgressBar$SavedState;,
        Landroidx/appcompat/widget/SeslProgressBar$d;,
        Landroidx/appcompat/widget/SeslProgressBar$e;
    }
.end annotation


# static fields
.field private static final N:Z

.field private static final O:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:F

.field G:Z

.field private H:Z

.field private final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/widget/SeslProgressBar$d;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroidx/appcompat/widget/SeslProgressBar$b;

.field protected K:I

.field protected L:F

.field private final M:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroidx/appcompat/widget/SeslProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Landroid/view/animation/Transformation;

.field private q:Landroid/view/animation/AlphaAnimation;

.field private r:Z

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroidx/appcompat/widget/SeslProgressBar$c;

.field w:I

.field private x:Z

.field private y:Landroid/view/animation/Interpolator;

.field private z:Landroidx/appcompat/widget/SeslProgressBar$e;


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
    sput-boolean v0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    .line 8
    new-instance v1, Landroidx/appcompat/widget/SeslProgressBar$a;

    const-string v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/widget/SeslProgressBar$a;-><init>(Landroidx/appcompat/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->M:Landroid/util/FloatProperty;

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:J

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->r()V

    .line 11
    sget-object v1, Lb/a/j;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->x:Z

    .line 13
    sget p4, Lb/a/j;->ProgressBar_android_progressDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 14
    invoke-static {p4}, Landroidx/appcompat/widget/SeslProgressBar;->t(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_1
    :goto_0
    sget p4, Lb/a/j;->ProgressBar_android_indeterminateDuration:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    .line 18
    sget p4, Lb/a/j;->ProgressBar_android_minWidth:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:I

    .line 19
    sget p4, Lb/a/j;->ProgressBar_android_maxWidth:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    .line 20
    sget p4, Lb/a/j;->ProgressBar_android_minHeight:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    .line 21
    sget p4, Lb/a/j;->ProgressBar_android_maxHeight:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    .line 22
    sget p4, Lb/a/j;->ProgressBar_android_indeterminateBehavior:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    .line 23
    sget p4, Lb/a/j;->ProgressBar_android_interpolator:I

    const v1, 0x10a000b

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p4, :cond_2

    .line 24
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/SeslProgressBar;->z(Landroid/content/Context;I)V

    .line 25
    :cond_2
    sget p4, Lb/a/j;->ProgressBar_min:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    .line 26
    sget p4, Lb/a/j;->ProgressBar_android_max:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    .line 27
    sget p4, Lb/a/j;->ProgressBar_android_progress:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    .line 28
    sget p4, Lb/a/j;->ProgressBar_android_secondaryProgress:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 29
    sget p4, Lb/a/j;->ProgressBar_android_indeterminateDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 30
    invoke-static {p4}, Landroidx/appcompat/widget/SeslProgressBar;->t(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_4
    :goto_1
    sget p4, Lb/a/j;->ProgressBar_android_indeterminateOnly:I

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->o:Z

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->o:Z

    .line 34
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->x:Z

    if-nez p4, :cond_5

    .line 35
    sget p4, Lb/a/j;->ProgressBar_android_indeterminate:I

    iget-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_5
    move v0, p3

    :cond_6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminate(Z)V

    .line 36
    sget p4, Lb/a/j;->ProgressBar_android_mirrorForRtl:I

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    .line 37
    sget p4, Lb/a/j;->ProgressBar_android_progressTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_8

    .line 38
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_7

    .line 39
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 40
    :cond_7
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_progressTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2, v1}, Landroidx/appcompat/widget/b0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    .line 41
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->h:Z

    .line 42
    :cond_8
    sget p4, Lb/a/j;->ProgressBar_android_progressTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 43
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_9

    .line 44
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 45
    :cond_9
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_progressTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->e:Landroid/content/res/ColorStateList;

    .line 46
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->g:Z

    .line 47
    :cond_a
    sget p4, Lb/a/j;->ProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 48
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_b

    .line 49
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 50
    :cond_b
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_progressBackgroundTintMode:I

    .line 51
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 52
    invoke-static {v2, v1}, Landroidx/appcompat/widget/b0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    .line 53
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->l:Z

    .line 54
    :cond_c
    sget p4, Lb/a/j;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 55
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_d

    .line 56
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 57
    :cond_d
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->i:Landroid/content/res/ColorStateList;

    .line 58
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->k:Z

    .line 59
    :cond_e
    sget p4, Lb/a/j;->ProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 60
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_f

    .line 61
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 62
    :cond_f
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_secondaryProgressTintMode:I

    .line 63
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 64
    invoke-static {v2, v1}, Landroidx/appcompat/widget/b0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    .line 65
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->p:Z

    .line 66
    :cond_10
    sget p4, Lb/a/j;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 67
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_11

    .line 68
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 69
    :cond_11
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->m:Landroid/content/res/ColorStateList;

    .line 70
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->o:Z

    .line 71
    :cond_12
    sget p4, Lb/a/j;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 72
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_13

    .line 73
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 74
    :cond_13
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v2, Lb/a/j;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v1}, Landroidx/appcompat/widget/b0;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    .line 75
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->d:Z

    .line 76
    :cond_14
    sget p4, Lb/a/j;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_16

    .line 77
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez p4, :cond_15

    .line 78
    new-instance p4, Landroidx/appcompat/widget/SeslProgressBar$c;

    invoke-direct {p4, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 79
    :cond_15
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    sget v0, Lb/a/j;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->a:Landroid/content/res/ColorStateList;

    .line 80
    iget-object p4, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-boolean p3, p4, Landroidx/appcompat/widget/SeslProgressBar$c;->c:Z

    .line 81
    :cond_16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->m()V

    .line 83
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->j()V

    .line 84
    invoke-static {p0}, Lb/f/k/t;->r(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_17

    .line 85
    invoke-static {p0, p3}, Lb/f/k/t;->g0(Landroid/view/View;I)V

    .line 86
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->L:F

    return-void
.end method

.method private B(IF)V
    .locals 2

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:F

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->w(IF)V

    return-void
.end method

.method private E(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private F(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    .line 4
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_2

    .line 5
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 6
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lb/a/f;->progress:I

    if-eq v4, v6, :cond_1

    sget v6, Lb/a/f;->secondaryProgress:I

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v2

    :goto_2
    invoke-direct {p0, v5, v4}, Landroidx/appcompat/widget/SeslProgressBar;->F(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ge v1, p2, :cond_4

    .line 8
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 16
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 18
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v2

    .line 19
    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_8

    .line 20
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 21
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 22
    invoke-static {p1}, Landroidx/appcompat/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    .line 23
    invoke-direct {p0, p1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->c(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v3

    .line 24
    invoke-static {p1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->b(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 25
    invoke-direct {p0, v4, p2}, Landroidx/appcompat/widget/SeslProgressBar;->F(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    .line 26
    :cond_8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_a

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 30
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    if-gtz v0, :cond_9

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->w:I

    :cond_9
    if-eqz p2, :cond_a

    .line 32
    new-instance p2, Landroid/graphics/drawable/ClipDrawable;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p2

    :cond_a
    return-object p1
.end method

.method private G(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 4
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v2, v0, :cond_0

    .line 6
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Landroidx/appcompat/widget/SeslProgressBar;->F(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 8
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method private I()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private static a(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb/n/c/a/a;->a(Landroid/graphics/drawable/StateListDrawable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lb/n/c/a/a;->b(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lb/n/c/a/a;->c(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d(Landroidx/appcompat/widget/SeslProgressBar;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Landroidx/appcompat/widget/SeslProgressBar;IIZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/widget/SeslProgressBar;->o(IIZZZ)V

    return-void
.end method

.method static synthetic f(Landroidx/appcompat/widget/SeslProgressBar;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Z

    return p1
.end method

.method static synthetic g(Landroidx/appcompat/widget/SeslProgressBar;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->B(IF)V

    return-void
.end method

.method static synthetic h(Landroidx/appcompat/widget/SeslProgressBar;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:F

    return p0
.end method

.method static synthetic i(Landroidx/appcompat/widget/SeslProgressBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->F:F

    return p1
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->d:Z

    if-eqz v1, :cond_3

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-boolean v2, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->c:Z

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->a:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6
    :cond_1
    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->d:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v0}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->g:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->h:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    sget v0, Lb/a/f;->progress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->q(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->g:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->e:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->h:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->k:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->l:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    sget v0, Lb/a/f;->background:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->q(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->k:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->i:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->l:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private m()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->k()V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->l()V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->n()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->o:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->p:Z

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    sget v0, Lb/a/f;->secondaryProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->q(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->o:Z

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lb/f/d/j/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iget-boolean v2, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->p:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v1, v1, Landroidx/appcompat/widget/SeslProgressBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lb/f/d/j/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private declared-synchronized o(IIZZZ)V
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v2, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v3, v1, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    iget v4, v1, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 2
    iget v4, v1, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_0
    sget v3, Lb/a/f;->progress:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    const v7, 0x461c4000    # 10000.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    .line 4
    iget-object v8, v1, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 5
    instance-of v9, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_4

    .line 6
    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 8
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v10

    invoke-static {v9, v10}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    if-eqz v9, :cond_3

    move-object v8, v9

    .line 9
    :cond_3
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4

    .line 10
    :cond_4
    instance-of v9, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v9, :cond_8

    .line 11
    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/StateListDrawable;

    .line 12
    invoke-static {v9}, Landroidx/appcompat/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_a

    .line 13
    move-object v11, v8

    check-cast v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v11, v10}, Landroidx/appcompat/widget/SeslProgressBar;->b(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    if-nez v11, :cond_5

    .line 14
    monitor-exit p0

    return-void

    .line 15
    :cond_5
    :try_start_1
    instance-of v13, v11, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v13, :cond_6

    .line 16
    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    .line 17
    invoke-virtual {v11, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 19
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v11

    invoke-static {v12, v11}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    :cond_6
    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    move-object v12, v8

    .line 20
    :goto_3
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 21
    :cond_8
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4

    .line 22
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_4
    if-eqz v3, :cond_b

    if-eqz p5, :cond_b

    .line 23
    iget-object v0, v1, Landroidx/appcompat/widget/SeslProgressBar;->M:Landroid/util/FloatProperty;

    new-array v7, v6, [F

    aput v4, v7, v5

    invoke-static {p0, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v5, 0x50

    .line 25
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 26
    sget-object v5, Landroidx/appcompat/widget/SeslProgressBar;->O:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    .line 28
    :cond_b
    invoke-direct {p0, p1, v4}, Landroidx/appcompat/widget/SeslProgressBar;->B(IF)V

    :goto_5
    if-eqz v3, :cond_c

    if-eqz p4, :cond_c

    move/from16 v0, p3

    .line 29
    invoke-virtual {p0, v4, v0, v2}, Landroidx/appcompat/widget/SeslProgressBar;->u(FZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private q(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    .line 3
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private r()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    const/16 v1, 0x64

    .line 2
    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    .line 4
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->o:Z

    const/16 v0, 0xfa0

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    const/16 v0, 0x18

    .line 9
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:I

    const/16 v1, 0x30

    .line 10
    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    .line 12
    iput v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    return-void
.end method

.method private static t(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/widget/SeslProgressBar;->t(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 5
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    .line 6
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 7
    invoke-static {p0}, Landroidx/appcompat/widget/SeslProgressBar;->a(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    .line 8
    invoke-static {p0, v3}, Landroidx/appcompat/widget/SeslProgressBar;->b(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    invoke-static {v4}, Landroidx/appcompat/widget/SeslProgressBar;->t(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2

    .line 10
    :cond_5
    instance-of p0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private declared-synchronized x(IIZZ)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/SeslProgressBar;->o(IIZZZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:Landroidx/appcompat/widget/SeslProgressBar$e;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SeslProgressBar$e;-><init>(Landroidx/appcompat/widget/SeslProgressBar;Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:Landroidx/appcompat/widget/SeslProgressBar$e;

    .line 5
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/appcompat/widget/SeslProgressBar$d;->a(IIZZ)Landroidx/appcompat/widget/SeslProgressBar$d;

    move-result-object p1

    .line 6
    iget-object p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->D:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Z

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:Landroidx/appcompat/widget/SeslProgressBar$e;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->J:Landroidx/appcompat/widget/SeslProgressBar$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SeslProgressBar$b;-><init>(Landroidx/appcompat/widget/SeslProgressBar;Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->J:Landroidx/appcompat/widget/SeslProgressBar$b;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->J:Landroidx/appcompat/widget/SeslProgressBar$b;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method declared-synchronized A(IZZ)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    invoke-static {p1, v0, v2}, Lb/f/f/a;->d(III)I

    move-result p1

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    :try_start_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    .line 7
    sget v0, Lb/a/f;->progress:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->x(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 8
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method C()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Landroidx/appcompat/widget/SeslProgressBar;->N:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->r:Z

    goto :goto_2

    .line 5
    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->r:Z

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Landroid/view/animation/Interpolator;

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:Landroid/view/animation/Transformation;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 14
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 19
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_5
    :goto_3
    return-void
.end method

.method D()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->r:Z

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    return-void
.end method

.method protected H(II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->o:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v4, v2, v3

    sub-float v5, v0, v4

    .line 7
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    sub-int v2, p1, v0

    .line 8
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v0, v2

    sub-int/2addr p2, v0

    .line 9
    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    move v2, p1

    move v3, v1

    move v9, v0

    move v0, p2

    move p2, v9

    goto :goto_0

    :cond_1
    move v2, p1

    move v0, v1

    move v3, v0

    .line 10
    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int v2, p1, v2

    sub-int/2addr p1, v3

    move v3, v2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 11
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1, p2}, Lb/f/d/j/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0, p1, p2}, Lb/f/d/j/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->I()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMirrorForRtl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 1
    invoke-static {p0}, Lb/n/h/f;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 1
    invoke-static {p0}, Lb/n/h/f;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->i:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->e:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->m:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->C()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslProgressBar$d;

    .line 8
    iget v4, v2, Landroidx/appcompat/widget/SeslProgressBar$d;->a:I

    iget v5, v2, Landroidx/appcompat/widget/SeslProgressBar$d;->b:I

    iget-boolean v6, v2, Landroidx/appcompat/widget/SeslProgressBar$d;->c:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Landroidx/appcompat/widget/SeslProgressBar$d;->d:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/widget/SeslProgressBar;->o(IIZZZ)V

    .line 9
    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslProgressBar$d;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->D:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->D()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->z:Landroidx/appcompat/widget/SeslProgressBar$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->E:Z

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->J:Landroidx/appcompat/widget/SeslProgressBar$b;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 9
    iput-boolean v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->D:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->p(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    .line 4
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:I

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->d:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    .line 4
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->I()V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 7
    invoke-static {v2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 8
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->b:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    .line 4
    iget p1, p1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->c:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    iput v0, v1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->b:I

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    iput v0, v1, Landroidx/appcompat/widget/SeslProgressBar$SavedState;->c:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->H(II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->H:Z

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->C()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->D()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->C()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->D()V

    :cond_2
    :goto_1
    return-void
.end method

.method p(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->G:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    .line 8
    iget-boolean v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->r:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 9
    iget-object v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->q:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 10
    iget-object v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    .line 11
    :try_start_0
    iput-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 12
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Z

    .line 14
    invoke-static {p0}, Lb/f/k/t;->S(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 15
    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->C:Z

    throw p1

    .line 16
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 18
    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    if-eqz p1, :cond_2

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    .line 19
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 20
    iput-boolean v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->B:Z

    :cond_2
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->x:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized s()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eq p1, v0, :cond_2

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->E(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->C()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->E(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9
    :cond_1
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->j()V

    .line 10
    :cond_2
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->E(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->G(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->c:Z

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->j()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->d:Z

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->j()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->y:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    if-ge p1, v0, :cond_0

    .line 3
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Z

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    if-eq p1, v0, :cond_2

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    .line 8
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    if-le v0, p1, :cond_1

    .line 9
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    .line 10
    :cond_1
    sget p1, Lb/a/f;->progress:I

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->x(IIZZ)V

    goto :goto_0

    .line 11
    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
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
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    if-le p1, v0, :cond_0

    .line 3
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->i:Z

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->k:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    if-eq p1, v0, :cond_2

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    .line 8
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    if-ge v0, p1, :cond_1

    .line 9
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    .line 10
    :cond_1
    sget p1, Lb/a/f;->progress:I

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->x(IIZZ)V

    goto :goto_0

    .line 11
    :cond_2
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
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
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lb/a/e;->sesl_split_seekbar_background_progress:I

    invoke-static {p1, v0}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lb/a/e;->sesl_scrubber_progress_vertical:I

    invoke-static {p1, v0}, Landroidx/core/content/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->A(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->k:Z

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->l()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->j:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->l:Z

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->l()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_6

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    invoke-static {p0}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lb/f/d/j/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->K:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 11
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    if-ge v1, v0, :cond_3

    .line 12
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->c:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 15
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    if-ge v1, v0, :cond_3

    .line 16
    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->e:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->m()V

    .line 19
    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-nez v0, :cond_5

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->E(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->postInvalidate()V

    .line 22
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->H(II)V

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->I()V

    .line 24
    sget v2, Lb/a/f;->progress:I

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/SeslProgressBar;->o(IIZZZ)V

    .line 25
    sget v8, Lb/a/f;->secondaryProgress:I

    iget v9, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Landroidx/appcompat/widget/SeslProgressBar;->o(IIZZZ)V

    :cond_6
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SeslProgressBar;->F(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->e:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->g:Z

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->k()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->f:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->h:Z

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->k()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    if-ge p1, v0, :cond_1

    .line 4
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->h:I

    .line 5
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    if-le p1, v0, :cond_2

    .line 6
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->j:I

    .line 7
    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    if-eq p1, v0, :cond_3

    .line 8
    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    .line 9
    sget v0, Lb/a/f;->secondaryProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Landroidx/appcompat/widget/SeslProgressBar;->x(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->o:Z

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->n()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SeslProgressBar$c;-><init>(Landroidx/appcompat/widget/SeslProgressBar$a;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->v:Landroidx/appcompat/widget/SeslProgressBar$c;

    iput-object p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->n:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/SeslProgressBar$c;->p:Z

    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->n()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->C()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->D()V

    :cond_2
    :goto_1
    return-void
.end method

.method u(FZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "accessibility"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/SeslProgressBar;->y()V

    .line 4
    :cond_0
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->g:I

    iget p3, p0, Landroidx/appcompat/widget/SeslProgressBar;->f:I

    if-le p1, p3, :cond_1

    if-nez p2, :cond_1

    .line 5
    sget p2, Lb/a/f;->secondaryProgress:I

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p3}, Landroidx/appcompat/widget/SeslProgressBar;->x(IIZZ)V

    :cond_1
    return-void
.end method

.method protected v(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lb/a/f;->progress:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->t:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->s:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
    .locals 0

    return-void
.end method

.method public z(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
