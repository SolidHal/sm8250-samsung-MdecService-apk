.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$ButtonBarLayout;,
        Landroidx/appcompat/app/AlertController$i;,
        Landroidx/appcompat/app/AlertController$g;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$h;
    }
.end annotation


# instance fields
.field A:Landroidx/core/widget/NestedScrollView;

.field private B:I

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field H:Landroid/widget/ListAdapter;

.field I:I

.field private J:I

.field private K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field P:I

.field private Q:Z

.field private R:I

.field S:Landroid/os/Handler;

.field private final T:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field final b:Landroidx/appcompat/app/g;

.field private final c:Landroid/view/Window;

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field q:Landroid/os/Message;

.field private r:Landroid/graphics/drawable/Drawable;

.field s:Landroid/widget/Button;

.field private t:Ljava/lang/CharSequence;

.field u:Landroid/os/Message;

.field private v:Landroid/graphics/drawable/Drawable;

.field w:Landroid/widget/Button;

.field private x:Ljava/lang/CharSequence;

.field y:Landroid/os/Message;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/g;Landroid/view/Window;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z

    .line 3
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroidx/appcompat/app/AlertController;->I:I

    .line 5
    iput v0, p0, Landroidx/appcompat/app/AlertController;->R:I

    .line 6
    new-instance v1, Landroidx/appcompat/app/AlertController$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$a;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->T:Landroid/view/View$OnClickListener;

    .line 7
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/g;

    .line 9
    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 10
    new-instance p3, Landroidx/appcompat/app/AlertController$h;

    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$h;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/os/Handler;

    .line 11
    sget-object p3, Lb/a/j;->AlertDialog:[I

    sget v1, Lb/a/a;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p3, Lb/a/j;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->J:I

    .line 13
    sget p3, Lb/a/j;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->K:I

    .line 14
    sget p3, Lb/a/j;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->L:I

    .line 15
    sget p3, Lb/a/j;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->M:I

    .line 16
    sget p3, Lb/a/j;->AlertDialog_singleChoiceItemLayout:I

    .line 17
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->N:I

    .line 18
    sget p3, Lb/a/j;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->O:I

    .line 19
    sget p3, Lb/a/j;->AlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->Q:Z

    .line 20
    sget p3, Lb/a/j;->AlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->d:I

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/g;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method private A(Landroid/view/ViewGroup;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "show_button_background"

    .line 2
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 4
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010031

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, -0x1

    .line 5
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_1

    .line 6
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :cond_1
    const/4 v5, 0x2

    const/4 v6, 0x4

    .line 7
    sget v7, Lb/a/f;->button1:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    .line 8
    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-le v7, v8, :cond_3

    .line 10
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v7, :cond_2

    .line 11
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-static {v7, v0, v4}, Lb/n/i/d;->g(Landroid/widget/TextView;ZI)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-static {v7, v0}, Lb/n/i/d;->f(Landroid/widget/TextView;Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    sget v9, Lb/a/e;->sesl_dialog_show_button_background:I

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 14
    :cond_4
    :goto_1
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_5

    .line 15
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    move v7, v2

    goto :goto_2

    .line 16
    :cond_5
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 18
    iget v11, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v7, v2, v2, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_6
    iget-object v7, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v7, v1

    .line 21
    :goto_2
    sget v11, Lb/a/f;->button2:I

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    .line 22
    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v11, v8, :cond_8

    .line 24
    iget v11, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v11, :cond_7

    .line 25
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-static {v11, v0, v4}, Lb/n/i/d;->g(Landroid/widget/TextView;ZI)V

    goto :goto_3

    .line 26
    :cond_7
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-static {v11, v0}, Lb/n/i/d;->f(Landroid/widget/TextView;Z)V

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 27
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    sget v12, Lb/a/e;->sesl_dialog_show_button_background:I

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 28
    :cond_9
    :goto_3
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_a

    .line 29
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 30
    :cond_a
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_b

    .line 32
    iget v12, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v11, v2, v2, v12, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 34
    :cond_b
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x2

    .line 35
    :goto_4
    sget v11, Lb/a/f;->button3:I

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    .line 36
    iget-object v12, p0, Landroidx/appcompat/app/AlertController;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v11, v8, :cond_d

    .line 38
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    if-lez v3, :cond_c

    .line 39
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-static {v3, v0, v4}, Lb/n/i/d;->g(Landroid/widget/TextView;ZI)V

    goto :goto_5

    .line 40
    :cond_c
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-static {v3, v0}, Lb/n/i/d;->f(Landroid/widget/TextView;Z)V

    goto :goto_5

    :cond_d
    if-eqz v0, :cond_e

    .line 41
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    sget v3, Lb/a/e;->sesl_dialog_show_button_background:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 42
    :cond_e
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    .line 43
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 44
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 46
    iget v3, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    :cond_10
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v7, v7, 0x4

    .line 49
    :goto_6
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-ne v7, v1, :cond_11

    .line 50
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->g(Landroid/widget/Button;)V

    goto :goto_7

    :cond_11
    if-ne v7, v5, :cond_12

    .line 51
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->g(Landroid/widget/Button;)V

    goto :goto_7

    :cond_12
    if-ne v7, v6, :cond_13

    .line 52
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->g(Landroid/widget/Button;)V

    :cond_13
    :goto_7
    if-eqz v7, :cond_14

    move v0, v1

    goto :goto_8

    :cond_14
    move v0, v2

    :goto_8
    if-nez v0, :cond_15

    .line 53
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 54
    :cond_15
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    move p1, v1

    goto :goto_9

    :cond_16
    move p1, v2

    .line 55
    :goto_9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_a

    :cond_17
    move v0, v2

    .line 56
    :goto_a
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_b

    :cond_18
    move v1, v2

    .line 57
    :goto_b
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v4, Lb/a/f;->sem_divider2:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1b

    if-eqz p1, :cond_19

    if-nez v0, :cond_1a

    :cond_19
    if-eqz p1, :cond_1b

    if-eqz v1, :cond_1b

    .line 58
    :cond_1a
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_1b
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v3, Lb/a/f;->sem_divider1:I

    invoke-virtual {p1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1c

    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    .line 60
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    return-void
.end method

.method private B(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/f;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 13
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private C(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/AlertController;->i:I

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    iget v2, p0, Landroidx/appcompat/app/AlertController;->i:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->f(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_7

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/f;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 8
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z

    if-eqz v0, :cond_5

    .line 10
    iget v0, p0, Landroidx/appcompat/app/AlertController;->j:I

    iget v2, p0, Landroidx/appcompat/app/AlertController;->k:I

    iget v3, p0, Landroidx/appcompat/app/AlertController;->l:I

    iget v4, p0, Landroidx/appcompat/app/AlertController;->m:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 11
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/f0$a;

    iput v1, p1, Landroidx/appcompat/widget/f0$a;->a:F

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method private D()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/f;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lb/a/f;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    sget v2, Lb/a/f;->scrollView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4
    sget v3, Lb/a/f;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 5
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 6
    sget v5, Lb/a/f;->customPanel:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 7
    sget v6, Lb/a/f;->topPanel:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 8
    sget v7, Lb/a/f;->contentPanel:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v10

    :goto_0
    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v10

    :goto_1
    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v10

    .line 12
    :goto_2
    iget-object v11, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 13
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v9, :cond_3

    goto :goto_3

    :cond_3
    move v8, v10

    :goto_3
    if-eqz v5, :cond_4

    if-nez v6, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    if-eqz v8, :cond_6

    .line 14
    :cond_5
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 15
    :cond_6
    sget v8, Lb/a/d;->sesl_dialog_title_padding_top:I

    .line 16
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 17
    invoke-virtual {v0, v10, v8, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    if-nez v7, :cond_7

    .line 18
    sget v0, Lb/a/d;->sesl_dialog_padding_horizontal:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v5, Lb/a/d;->sesl_dialog_padding_horizontal:I

    .line 19
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 20
    invoke-virtual {v1, v0, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    .line 21
    :cond_7
    sget v0, Lb/a/d;->sesl_dialog_padding_horizontal:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v5, Lb/a/d;->sesl_dialog_padding_horizontal:I

    .line 22
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lb/a/d;->sesl_dialog_title_padding_bottom:I

    .line 23
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 24
    invoke-virtual {v1, v0, v10, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 25
    sget v0, Lb/a/d;->sesl_dialog_body_text_scroll_padding_start:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lb/a/d;->sesl_dialog_body_text_scroll_padding_end:I

    .line 26
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v5, Lb/a/d;->sesl_dialog_body_text_padding_bottom:I

    .line 27
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 28
    invoke-virtual {v2, v0, v10, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    if-eqz v3, :cond_a

    .line 29
    sget v0, Lb/a/d;->sesl_dialog_button_bar_padding_horizontal:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lb/a/d;->sesl_dialog_button_bar_padding_horizontal:I

    .line 30
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lb/a/d;->sesl_dialog_button_bar_padding_bottom:I

    .line 31
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 32
    invoke-virtual {v3, v0, v10, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    return-void
.end method

.method private E(Landroid/view/ViewGroup;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v0, Lb/a/f;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->Q:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v0, Lb/a/f;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lb/a/d;->sesl_dialog_title_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertController;->h(Landroid/widget/TextView;I)V

    .line 12
    iget p1, p0, Landroidx/appcompat/app/AlertController;->B:I

    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 20
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 21
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/f;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private F()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/f;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/appcompat/app/AlertController$b;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    sget v1, Lb/a/f;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4
    sget v2, Lb/a/f;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5
    sget v3, Lb/a/f;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6
    sget v4, Lb/a/f;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 7
    invoke-direct {p0, v4}, Landroidx/appcompat/app/AlertController;->C(Landroid/view/ViewGroup;)V

    .line 8
    sget v5, Lb/a/f;->topPanel:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 9
    sget v6, Lb/a/f;->contentPanel:I

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 10
    sget v7, Lb/a/f;->buttonPanel:I

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 11
    invoke-direct {p0, v5, v1}, Landroidx/appcompat/app/AlertController;->o(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 12
    invoke-direct {p0, v6, v2}, Landroidx/appcompat/app/AlertController;->o(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 13
    invoke-direct {p0, v7, v3}, Landroidx/appcompat/app/AlertController;->o(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 14
    invoke-direct {p0, v6}, Landroidx/appcompat/app/AlertController;->B(Landroid/view/ViewGroup;)V

    .line 15
    invoke-direct {p0, v3}, Landroidx/appcompat/app/AlertController;->A(Landroid/view/ViewGroup;)V

    .line 16
    invoke-direct {p0, v5}, Landroidx/appcompat/app/AlertController;->E(Landroid/view/ViewGroup;)V

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    .line 17
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eq v4, v7, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    move v4, v9

    :goto_0
    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v9

    :goto_1
    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v7, :cond_2

    move v3, v8

    goto :goto_2

    :cond_2
    move v3, v9

    :goto_2
    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v7, :cond_3

    move v1, v8

    goto :goto_3

    :cond_3
    move v1, v9

    :goto_3
    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_4

    move v2, v8

    goto :goto_4

    :cond_4
    move v2, v9

    .line 22
    :goto_4
    iget-object v10, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    if-eqz v10, :cond_5

    .line 23
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move v7, v9

    :goto_5
    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v7, :cond_8

    .line 24
    :cond_7
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->d(Landroid/view/View;)V

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    .line 25
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->e(Landroid/view/View;)V

    .line 26
    :cond_9
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->c()V

    if-eqz v5, :cond_a

    .line 27
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_a

    .line 28
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 29
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    instance-of v1, v0, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_b

    .line 30
    check-cast v0, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v0, v5, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->a(ZZ)V

    :cond_b
    if-nez v4, :cond_e

    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    :goto_6
    if-eqz v0, :cond_e

    if-eqz v3, :cond_d

    const/4 v1, 0x2

    goto :goto_7

    :cond_d
    move v1, v9

    :goto_7
    or-int/2addr v1, v5

    const/4 v2, 0x3

    .line 32
    invoke-direct {p0, v6, v0, v1, v2}, Landroidx/appcompat/app/AlertController;->v(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 33
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_f

    .line 34
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_f

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-static {v0, v9}, Lb/n/i/b;->b(Landroid/widget/AdapterView;I)V

    .line 37
    iget v1, p0, Landroidx/appcompat/app/AlertController;->I:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_f

    .line 38
    invoke-virtual {v0, v1, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 39
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb/a/d;->sesl_select_dialog_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_f
    return-void
.end method

.method private static G(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lb/a/a;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static synthetic a(Landroidx/appcompat/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Landroidx/appcompat/app/AlertController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->D()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/d;->sesl_dialog_button_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/app/AlertController;->h(Landroid/widget/TextView;I)V

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    int-to-float v4, v0

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/app/AlertController;->h(Landroid/widget/TextView;I)V

    .line 8
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/app/AlertController;->h(Landroid/widget/TextView;I)V

    :cond_2
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lb/a/f;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Lb/a/d;->sesl_dialog_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lb/a/d;->sesl_dialog_padding_horizontal:I

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static f(Landroid/view/View;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->f(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private g(Landroid/widget/Button;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private h(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    int-to-float p2, p2

    div-float/2addr p2, v0

    const/4 v0, 0x0

    mul-float/2addr p2, v1

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method static l(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 1
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 4
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private o(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p1, :cond_1

    .line 1
    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_2
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 9
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private p()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/app/AlertController;->K:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/appcompat/app/AlertController;->J:I

    return v0

    .line 3
    :cond_0
    iget v1, p0, Landroidx/appcompat/app/AlertController;->R:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    iget v0, p0, Landroidx/appcompat/app/AlertController;->J:I

    return v0
.end method

.method private v(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lb/a/f;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lb/a/f;->scrollIndicatorDown:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 4
    invoke-static {p2, p3, p4}, Lb/f/k/t;->m0(Landroid/view/View;II)V

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_8

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2
    if-eqz v1, :cond_3

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_3

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, p2

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_8

    .line 9
    :cond_4
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    .line 10
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Landroidx/appcompat/app/AlertController$c;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$c;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Landroidx/appcompat/app/AlertController$d;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 12
    :cond_5
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz p2, :cond_6

    .line 13
    new-instance p1, Landroidx/appcompat/app/AlertController$e;

    invoke-direct {p1, p0, v0, v1}, Landroidx/appcompat/app/AlertController$e;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 14
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance p2, Landroidx/appcompat/app/AlertController$f;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$f;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public i(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public j()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->p()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/g;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/g;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->F()V

    return-void
.end method

.method public m(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->k(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->k(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 1
    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    .line 3
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;

    .line 4
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    .line 7
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;

    .line 8
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 9
    :cond_3
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    .line 10
    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;

    .line 11
    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public r(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    return-void
.end method

.method public s(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->B:I

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public u(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public x(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    return-void
.end method

.method public y(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    return-void
.end method

.method public z(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    .line 4
    iput p2, p0, Landroidx/appcompat/app/AlertController;->j:I

    .line 5
    iput p3, p0, Landroidx/appcompat/app/AlertController;->k:I

    .line 6
    iput p4, p0, Landroidx/appcompat/app/AlertController;->l:I

    .line 7
    iput p5, p0, Landroidx/appcompat/app/AlertController;->m:I

    return-void
.end method
