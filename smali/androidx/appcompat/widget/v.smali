.class Landroidx/appcompat/widget/v;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/t0;

.field private c:Landroidx/appcompat/widget/t0;

.field private d:Landroidx/appcompat/widget/t0;

.field private e:Landroidx/appcompat/widget/t0;

.field private f:Landroidx/appcompat/widget/t0;

.field private g:Landroidx/appcompat/widget/t0;

.field private final h:Landroidx/appcompat/widget/x;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Typeface;

.field private l:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/v;->i:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/v;->j:I

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 5
    new-instance p1, Landroidx/appcompat/widget/x;

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/h;->w(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;[I)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/h;->n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/widget/t0;

    invoke-direct {p1}, Landroidx/appcompat/widget/t0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Landroidx/appcompat/widget/t0;->d:Z

    .line 4
    iput-object p0, p1, Landroidx/appcompat/widget/t0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private s(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_5

    if-nez p5, :cond_0

    if-eqz p6, :cond_5

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object p3, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    aget-object p5, p1, v5

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    aget-object p2, p1, v3

    :goto_1
    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    aget-object p6, p1, v4

    :goto_2
    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    aget-object p4, p1, v2

    :goto_3
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_f

    .line 4
    :cond_6
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, v1, :cond_a

    .line 5
    iget-object p5, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 6
    aget-object p6, p5, v5

    if-nez p6, :cond_7

    aget-object p6, p5, v4

    if-eqz p6, :cond_a

    .line 7
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    aget-object p2, p5, v3

    :goto_4
    aget-object p6, p5, v4

    if-eqz p4, :cond_9

    goto :goto_5

    :cond_9
    aget-object p4, p5, v2

    :goto_5
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 8
    :cond_a
    iget-object p5, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 9
    iget-object p6, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    aget-object p1, p5, v5

    :goto_6
    if-eqz p2, :cond_c

    goto :goto_7

    :cond_c
    aget-object p2, p5, v3

    :goto_7
    if-eqz p3, :cond_d

    goto :goto_8

    :cond_d
    aget-object p3, p5, v4

    :goto_8
    if-eqz p4, :cond_e

    goto :goto_9

    :cond_e
    aget-object p4, p5, v2

    :goto_9
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_a
    return-void
.end method

.method private u(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/x;->y(IF)V

    return-void
.end method

.method private v(Landroid/content/Context;Landroidx/appcompat/widget/v0;)V
    .locals 9

    .line 1
    sget v0, Lb/a/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/v0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/v;->i:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    .line 3
    sget v0, Lb/a/j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/v0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/v;->j:I

    if-eq v0, v3, :cond_0

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/v;->i:I

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iput v0, p0, Landroidx/appcompat/widget/v;->i:I

    .line 5
    :cond_0
    sget v0, Lb/a/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_6

    sget v0, Lb/a/j;->TextAppearance_fontFamily:I

    .line 6
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget p1, Lb/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iput-boolean v4, p0, Landroidx/appcompat/widget/v;->l:Z

    .line 9
    sget p1, Lb/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/v0;->k(II)I

    move-result p1

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    goto :goto_0

    .line 12
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    .line 14
    sget v0, Lb/a/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lb/a/j;->TextAppearance_fontFamily:I

    goto :goto_2

    :cond_7
    sget v0, Lb/a/j;->TextAppearance_android_fontFamily:I

    .line 15
    :goto_2
    iget v6, p0, Landroidx/appcompat/widget/v;->j:I

    .line 16
    iget v7, p0, Landroidx/appcompat/widget/v;->i:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    new-instance v8, Landroidx/appcompat/widget/v$a;

    invoke-direct {v8, p0, v6, v7, p1}, Landroidx/appcompat/widget/v$a;-><init>(Landroidx/appcompat/widget/v;IILjava/lang/ref/WeakReference;)V

    .line 20
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p2, v0, p1, v8}, Landroidx/appcompat/widget/v0;->j(IILandroidx/core/content/d/f$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 21
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_9

    iget v6, p0, Landroidx/appcompat/widget/v;->j:I

    if-eq v6, v3, :cond_9

    .line 22
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Landroidx/appcompat/widget/v;->j:I

    iget v7, p0, Landroidx/appcompat/widget/v;->i:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v4

    .line 23
    :goto_3
    invoke-static {p1, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    goto :goto_4

    .line 24
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    .line 25
    :cond_a
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v5

    goto :goto_5

    :cond_b
    move p1, v4

    :goto_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/v;->l:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    .line 27
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 28
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/v;->j:I

    if-eq p2, v3, :cond_e

    .line 29
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/v;->j:I

    iget v0, p0, Landroidx/appcompat/widget/v;->i:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v4, v5

    .line 30
    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    goto :goto_6

    .line 31
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/t0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/t0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/t0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/t0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/t0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/t0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/t0;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V

    .line 7
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/t0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/t0;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V

    .line 11
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/t0;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/t0;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->b()V

    return-void
.end method

.method e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->j()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->k()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->l()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->m()[I

    move-result-object v0

    return-object v0
.end method

.method i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->n()I

    move-result v0

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->s()Z

    move-result v0

    return v0
.end method

.method k(Landroid/util/AttributeSet;I)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1
    iget-object v2, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/h;->i()Landroidx/appcompat/widget/h;

    move-result-object v3

    .line 3
    sget-object v4, Lb/a/j;->AppCompatTextHelper:[I

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v1, v5}, Landroidx/appcompat/widget/v0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/v0;

    move-result-object v4

    .line 4
    sget v6, Lb/a/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v6

    .line 5
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableLeft:I

    .line 7
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v9

    .line 8
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/v;->d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/t0;

    .line 9
    :cond_0
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 10
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableTop:I

    .line 11
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v9

    .line 12
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/v;->d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/t0;

    .line 13
    :cond_1
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 14
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableRight:I

    .line 15
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v9

    .line 16
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/v;->d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/t0;

    .line 17
    :cond_2
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 18
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableBottom:I

    .line 19
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v9

    .line 20
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/v;->d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/t0;

    .line 21
    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    .line 22
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 23
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableStart:I

    .line 24
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v9

    .line 25
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/v;->d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/t0;

    .line 26
    :cond_4
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 27
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableEnd:I

    .line 28
    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v9

    .line 29
    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/v;->d(Landroid/content/Context;Landroidx/appcompat/widget/h;I)Landroidx/appcompat/widget/t0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/t0;

    .line 30
    :cond_5
    invoke-virtual {v4}, Landroidx/appcompat/widget/v0;->v()V

    .line 31
    iget-object v4, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    .line 32
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v9, 0x1a

    const/16 v11, 0x17

    if-eq v6, v8, :cond_d

    .line 33
    sget-object v13, Lb/a/j;->TextAppearance:[I

    invoke-static {v2, v6, v13}, Landroidx/appcompat/widget/v0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/v0;

    move-result-object v6

    if-nez v4, :cond_6

    .line 34
    sget v13, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 35
    sget v13, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v13, v5}, Landroidx/appcompat/widget/v0;->a(IZ)Z

    move-result v13

    const/4 v14, 0x1

    goto :goto_0

    :cond_6
    move v13, v5

    move v14, v13

    .line 36
    :goto_0
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/v;->v(Landroid/content/Context;Landroidx/appcompat/widget/v0;)V

    .line 37
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v11, :cond_a

    .line 38
    sget v15, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 39
    sget v15, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    .line 40
    :goto_1
    sget v10, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 41
    sget v10, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    .line 42
    :goto_2
    sget v12, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 43
    sget v12, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 44
    :goto_3
    sget v8, Lb/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 45
    sget v8, Lb/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/v0;->o(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    .line 46
    :goto_4
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v9, :cond_c

    sget v11, Lb/a/j;->TextAppearance_fontVariationSettings:I

    .line 47
    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 48
    sget v11, Lb/a/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/v0;->o(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    .line 49
    :goto_5
    invoke-virtual {v6}, Landroidx/appcompat/widget/v0;->v()V

    goto :goto_6

    :cond_d
    move v13, v5

    move v14, v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 50
    :goto_6
    sget-object v6, Lb/a/j;->TextAppearance:[I

    invoke-static {v2, v0, v6, v1, v5}, Landroidx/appcompat/widget/v0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/v0;

    move-result-object v6

    if-nez v4, :cond_e

    .line 51
    sget v9, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 52
    sget v9, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v9, v5}, Landroidx/appcompat/widget/v0;->a(IZ)Z

    move-result v13

    const/4 v14, 0x1

    .line 53
    :cond_e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v9, v5, :cond_11

    .line 54
    sget v5, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 55
    sget v5, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 56
    :cond_f
    sget v5, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 57
    sget v5, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 58
    :cond_10
    sget v5, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 59
    sget v5, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 60
    :cond_11
    sget v5, Lb/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 61
    sget v5, Lb/a/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->o(I)Ljava/lang/String;

    move-result-object v8

    .line 62
    :cond_12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v5, v9, :cond_13

    sget v5, Lb/a/j;->TextAppearance_fontVariationSettings:I

    .line 63
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 64
    sget v5, Lb/a/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->o(I)Ljava/lang/String;

    move-result-object v11

    .line 65
    :cond_13
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v5, v9, :cond_14

    sget v5, Lb/a/j;->TextAppearance_android_textSize:I

    .line 66
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 67
    sget v5, Lb/a/j;->TextAppearance_android_textSize:I

    const/4 v9, -0x1

    invoke-virtual {v6, v5, v9}, Landroidx/appcompat/widget/v0;->f(II)I

    move-result v5

    if-nez v5, :cond_14

    .line 68
    iget-object v5, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    const/4 v9, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    :cond_14
    move-object/from16 v17, v3

    .line 69
    :goto_7
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/v;->v(Landroid/content/Context;Landroidx/appcompat/widget/v0;)V

    .line 70
    invoke-virtual {v6}, Landroidx/appcompat/widget/v0;->v()V

    if-eqz v15, :cond_15

    .line 71
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    if-eqz v10, :cond_16

    .line 72
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v12, :cond_17

    .line 73
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-nez v4, :cond_18

    if-eqz v14, :cond_18

    .line 74
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/v;->o(Z)V

    .line 75
    :cond_18
    iget-object v3, v7, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1a

    .line 76
    iget v4, v7, Landroidx/appcompat/widget/v;->j:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    .line 77
    iget-object v4, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget v5, v7, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_8

    .line 78
    :cond_19
    iget-object v4, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    :goto_8
    if-eqz v11, :cond_1b

    .line 79
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1b
    if-eqz v8, :cond_1d

    .line 80
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1c

    .line 81
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_9

    :cond_1c
    const/16 v4, 0x15

    if-lt v3, v4, :cond_1d

    const/16 v3, 0x2c

    .line 82
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v4, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 84
    :cond_1d
    :goto_9
    iget-object v3, v7, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v3, v0, v1}, Landroidx/appcompat/widget/x;->t(Landroid/util/AttributeSet;I)V

    .line 85
    sget-boolean v1, Landroidx/core/widget/b;->a:Z

    if-eqz v1, :cond_1f

    .line 86
    iget-object v1, v7, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v1}, Landroidx/appcompat/widget/x;->n()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 87
    iget-object v1, v7, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    .line 88
    invoke-virtual {v1}, Landroidx/appcompat/widget/x;->m()[I

    move-result-object v1

    .line 89
    array-length v3, v1

    if-lez v3, :cond_1f

    .line 90
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    .line 91
    iget-object v1, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget-object v3, v7, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    .line 92
    invoke-virtual {v3}, Landroidx/appcompat/widget/x;->k()I

    move-result v3

    iget-object v4, v7, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    .line 93
    invoke-virtual {v4}, Landroidx/appcompat/widget/x;->j()I

    move-result v4

    iget-object v5, v7, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    .line 94
    invoke-virtual {v5}, Landroidx/appcompat/widget/x;->l()I

    move-result v5

    const/4 v6, 0x0

    .line 95
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_a

    :cond_1e
    const/4 v6, 0x0

    .line 96
    iget-object v3, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 97
    :cond_1f
    :goto_a
    sget-object v1, Lb/a/j;->AppCompatTextView:[I

    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/v0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/v0;

    move-result-object v8

    .line 98
    sget v0, Lb/a/j;->AppCompatTextView_drawableLeftCompat:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    move-object/from16 v3, v17

    if-eq v0, v1, :cond_20

    .line 99
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    .line 100
    :goto_b
    sget v0, Lb/a/j;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 101
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_c

    :cond_21
    const/4 v5, 0x0

    .line 102
    :goto_c
    sget v0, Lb/a/j;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_22

    .line 103
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_d

    :cond_22
    const/4 v6, 0x0

    .line 104
    :goto_d
    sget v0, Lb/a/j;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_23

    .line 105
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_e

    :cond_23
    const/4 v9, 0x0

    .line 106
    :goto_e
    sget v0, Lb/a/j;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_24

    .line 107
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    goto :goto_f

    :cond_24
    const/4 v10, 0x0

    .line 108
    :goto_f
    sget v0, Lb/a/j;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 109
    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/h;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_10

    :cond_25
    const/16 v16, 0x0

    :goto_10
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v9

    move-object v5, v10

    move-object/from16 v6, v16

    .line 110
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/v;->s(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 111
    sget v0, Lb/a/j;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/v0;->f(II)I

    move-result v0

    .line 112
    sget v2, Lb/a/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v8, v2, v1}, Landroidx/appcompat/widget/v0;->f(II)I

    move-result v2

    .line 113
    sget v3, Lb/a/j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v8, v3, v1}, Landroidx/appcompat/widget/v0;->f(II)I

    move-result v3

    .line 114
    invoke-virtual {v8}, Landroidx/appcompat/widget/v0;->v()V

    if-eq v0, v1, :cond_26

    .line 115
    iget-object v4, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/j;->k(Landroid/widget/TextView;I)V

    :cond_26
    if-eq v2, v1, :cond_27

    .line 116
    iget-object v0, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/j;->l(Landroid/widget/TextView;I)V

    :cond_27
    if-eq v3, v1, :cond_28

    .line 117
    iget-object v0, v7, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/widget/j;->m(Landroid/widget/TextView;I)V

    :cond_28
    return-void
.end method

.method l(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/v;->l:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method m(ZIIII)V
    .locals 0

    .line 1
    sget-boolean p1, Landroidx/core/widget/b;->a:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->c()V

    :cond_0
    return-void
.end method

.method n(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lb/a/j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/v0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/v0;

    move-result-object p2

    .line 2
    sget v0, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/v0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/v;->o(Z)V

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    sget v0, Lb/a/j;->TextAppearance_android_textColor:I

    .line 5
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget v0, Lb/a/j;->TextAppearance_android_textColor:I

    .line 7
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    :cond_1
    sget v0, Lb/a/j;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget v0, Lb/a/j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/v0;->f(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/v;->v(Landroid/content/Context;Landroidx/appcompat/widget/v0;)V

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    sget p1, Lb/a/j;->TextAppearance_fontVariationSettings:I

    .line 14
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/v0;->r(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    sget p1, Lb/a/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/v0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 17
    :cond_3
    invoke-virtual {p2}, Landroidx/appcompat/widget/v0;->v()V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/v;->k:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    .line 19
    iget-object p2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    return-void
.end method

.method o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method p(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/x;->u(IIII)V

    return-void
.end method

.method q([II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/x;->v([II)V

    return-void
.end method

.method r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/x;->w(I)V

    return-void
.end method

.method t(IF)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/v;->u(IF)V

    :cond_0
    return-void
.end method
