.class Landroidx/appcompat/widget/y0;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static l:Landroidx/appcompat/widget/y0; = null

.field private static m:Landroidx/appcompat/widget/y0; = null

.field private static n:I = 0x0

.field private static o:I = 0x0

.field private static p:Z = false

.field private static q:I = 0x0

.field private static r:Z = false

.field private static s:Z = false

.field private static t:Z = false


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private h:Landroidx/appcompat/widget/z0;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/y0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/y0$a;-><init>(Landroidx/appcompat/widget/y0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/y0;->d:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/y0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/y0$b;-><init>(Landroidx/appcompat/widget/y0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/y0;->e:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/y0;->j:Z

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/y0;->k:Z

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    .line 7
    iput-object p2, p0, Landroidx/appcompat/widget/y0;->c:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lb/f/k/u;->c(Landroid/view/ViewConfiguration;)I

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/widget/y0;->b()V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/y0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/y0;->f:I

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/y0;->g:I

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/y0;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/appcompat/widget/y0;->t:Z

    return-void
.end method

.method public static g(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/appcompat/widget/y0;->s:Z

    return-void
.end method

.method public static h(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/appcompat/widget/y0;->r:Z

    return-void
.end method

.method private static i(Landroidx/appcompat/widget/y0;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/y0;->l:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {v0}, Landroidx/appcompat/widget/y0;->a()V

    .line 3
    :cond_0
    sput-object p0, Landroidx/appcompat/widget/y0;->l:Landroidx/appcompat/widget/y0;

    if-eqz p0, :cond_1

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/y0;->e()V

    :cond_1
    return-void
.end method

.method public static j(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "TooltipCompatHandler"

    const-string p1, "view is null"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/y0;->l:Landroidx/appcompat/widget/y0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 3
    invoke-static {v1}, Landroidx/appcompat/widget/y0;->i(Landroidx/appcompat/widget/y0;)V

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    sget-object p1, Landroidx/appcompat/widget/y0;->m:Landroidx/appcompat/widget/y0;

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    if-ne v0, p0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/widget/y0;->c()V

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Landroidx/appcompat/widget/y0;->m:Landroidx/appcompat/widget/y0;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    if-ne v1, p0, :cond_4

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/y0;->c()V

    goto :goto_0

    .line 12
    :cond_4
    new-instance v0, Landroidx/appcompat/widget/y0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/y0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private l(Landroid/view/MotionEvent;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lb/n/h/d;->b()I

    move-result p1

    .line 3
    invoke-static {p1}, Lb/n/d/a/a;->b(I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/y0;->j:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/y0;->j:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lb/n/h/d;->a()I

    move-result p1

    .line 7
    invoke-static {p1}, Lb/n/d/a/a;->b(I)V

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/y0;->j:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method c()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/widget/y0;->m:Landroidx/appcompat/widget/y0;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    .line 2
    sput-object v1, Landroidx/appcompat/widget/y0;->m:Landroidx/appcompat/widget/y0;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroidx/appcompat/widget/z0;->f()V

    .line 5
    iput-object v1, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/y0;->b()V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/widget/y0;->k:Z

    .line 10
    sget-object v2, Landroidx/appcompat/widget/y0;->l:Landroidx/appcompat/widget/y0;

    if-ne v2, p0, :cond_2

    .line 11
    invoke-static {v1}, Landroidx/appcompat/widget/y0;->i(Landroidx/appcompat/widget/y0;)V

    .line 12
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/y0;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    sput v0, Landroidx/appcompat/widget/y0;->n:I

    .line 14
    sput v0, Landroidx/appcompat/widget/y0;->o:I

    .line 15
    sput-boolean v0, Landroidx/appcompat/widget/y0;->r:Z

    .line 16
    sput-boolean v0, Landroidx/appcompat/widget/y0;->p:Z

    return-void
.end method

.method d()Z
    .locals 3

    .line 1
    invoke-static {}, Lb/n/f/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method k(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-static {v2}, Lb/f/k/t;->G(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Landroidx/appcompat/widget/y0;->i(Landroidx/appcompat/widget/y0;)V

    .line 3
    sget-object v2, Landroidx/appcompat/widget/y0;->m:Landroidx/appcompat/widget/y0;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Landroidx/appcompat/widget/y0;->c()V

    .line 5
    :cond_1
    sput-object v0, Landroidx/appcompat/widget/y0;->m:Landroidx/appcompat/widget/y0;

    .line 6
    iput-boolean v1, v0, Landroidx/appcompat/widget/y0;->i:Z

    .line 7
    new-instance v3, Landroidx/appcompat/widget/z0;

    iget-object v2, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/appcompat/widget/z0;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    .line 8
    sget-boolean v2, Landroidx/appcompat/widget/y0;->p:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 9
    sput-boolean v4, Landroidx/appcompat/widget/y0;->s:Z

    .line 10
    sput-boolean v4, Landroidx/appcompat/widget/y0;->t:Z

    .line 11
    sget-boolean v2, Landroidx/appcompat/widget/y0;->r:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 12
    :cond_3
    :goto_0
    iget-object v1, v0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    sget v2, Landroidx/appcompat/widget/y0;->n:I

    sget v3, Landroidx/appcompat/widget/y0;->o:I

    sget v5, Landroidx/appcompat/widget/y0;->q:I

    iget-object v6, v0, Landroidx/appcompat/widget/y0;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v5, v6}, Landroidx/appcompat/widget/z0;->k(IIILjava/lang/CharSequence;)V

    .line 13
    sput-boolean v4, Landroidx/appcompat/widget/y0;->p:Z

    goto :goto_2

    .line 14
    :cond_4
    sget-boolean v1, Landroidx/appcompat/widget/y0;->r:Z

    if-nez v1, :cond_9

    .line 15
    sget-boolean v1, Landroidx/appcompat/widget/y0;->s:Z

    if-nez v1, :cond_6

    sget-boolean v1, Landroidx/appcompat/widget/y0;->t:Z

    if-eqz v1, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    sput-boolean v4, Landroidx/appcompat/widget/y0;->s:Z

    .line 17
    sput-boolean v4, Landroidx/appcompat/widget/y0;->t:Z

    .line 18
    iget-object v4, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget v5, v0, Landroidx/appcompat/widget/y0;->f:I

    iget v6, v0, Landroidx/appcompat/widget/y0;->g:I

    iget-boolean v7, v0, Landroidx/appcompat/widget/y0;->i:Z

    iget-object v8, v0, Landroidx/appcompat/widget/y0;->c:Ljava/lang/CharSequence;

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/widget/z0;->i(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :cond_6
    :goto_1
    iget-object v9, v0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    iget-object v10, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget v11, v0, Landroidx/appcompat/widget/y0;->f:I

    iget v12, v0, Landroidx/appcompat/widget/y0;->g:I

    iget-boolean v13, v0, Landroidx/appcompat/widget/y0;->i:Z

    iget-object v14, v0, Landroidx/appcompat/widget/y0;->c:Ljava/lang/CharSequence;

    sget-boolean v15, Landroidx/appcompat/widget/y0;->s:Z

    sget-boolean v16, Landroidx/appcompat/widget/y0;->t:Z

    invoke-virtual/range {v9 .. v16}, Landroidx/appcompat/widget/z0;->j(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V

    .line 20
    :goto_2
    iget-object v1, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 21
    iget-boolean v1, v0, Landroidx/appcompat/widget/y0;->i:Z

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x9c4

    goto :goto_4

    .line 22
    :cond_7
    iget-object v1, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-static {v1}, Lb/f/k/t;->z(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const-wide/16 v1, 0xbb8

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    goto :goto_3

    :cond_8
    const-wide/16 v1, 0x3a98

    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    :goto_3
    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 25
    :goto_4
    iget-object v3, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget-object v4, v0, Landroidx/appcompat/widget/y0;->e:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 26
    iget-object v3, v0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    iget-object v4, v0, Landroidx/appcompat/widget/y0;->e:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/y0;->i:Z

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    const-string v2, "TooltipCompatHandler"

    if-nez v0, :cond_1

    const-string p1, "TooltipCompat Anchor view is null"

    .line 3
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x4002

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x18

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/y0;->d()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lb/n/h/d;->a()I

    move-result p2

    .line 8
    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 9
    invoke-static {p1, v4, p2}, Lb/n/h/f;->n(Landroid/view/View;ILandroid/view/PointerIcon;)V

    :cond_2
    return v1

    .line 10
    :cond_3
    iget-object v3, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "accessibility"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    .line 13
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v6, 0x7

    if-eq v3, v6, :cond_9

    const/16 v6, 0x9

    if-eq v3, v6, :cond_8

    const/16 v6, 0xa

    if-eq v3, v6, :cond_5

    goto/16 :goto_0

    :cond_5
    const-string v3, "MotionEvent.ACTION_HOVER_EXIT : hide SeslTooltipPopup"

    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_6

    .line 16
    invoke-direct {p0, p2, v1}, Landroidx/appcompat/widget/y0;->l(Landroid/view/MotionEvent;Z)V

    .line 17
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_7

    iget-object p2, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    .line 18
    invoke-static {}, Lb/n/h/d;->a()I

    move-result p2

    .line 19
    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 20
    invoke-static {p1, v4, p2}, Lb/n/h/f;->n(Landroid/view/View;ILandroid/view/PointerIcon;)V

    .line 21
    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/y0;->c()V

    goto :goto_0

    .line 22
    :cond_8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_b

    iget-object p2, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    if-nez p2, :cond_b

    if-eqz v0, :cond_b

    .line 23
    invoke-static {}, Lb/n/h/d;->b()I

    move-result p2

    .line 24
    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 25
    invoke-static {p1, v4, p2}, Lb/n/h/f;->n(Landroid/view/View;ILandroid/view/PointerIcon;)V

    goto :goto_0

    .line 26
    :cond_9
    iget-object p1, p0, Landroidx/appcompat/widget/y0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/appcompat/widget/y0;->h:Landroidx/appcompat/widget/z0;

    if-nez p1, :cond_b

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/y0;->f:I

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/appcompat/widget/y0;->g:I

    .line 29
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    if-ge p1, v5, :cond_a

    .line 30
    invoke-direct {p0, p2, v0}, Landroidx/appcompat/widget/y0;->l(Landroid/view/MotionEvent;Z)V

    .line 31
    :cond_a
    iget-boolean p1, p0, Landroidx/appcompat/widget/y0;->k:Z

    if-nez p1, :cond_b

    .line 32
    invoke-static {p0}, Landroidx/appcompat/widget/y0;->i(Landroidx/appcompat/widget/y0;)V

    .line 33
    iput-boolean v0, p0, Landroidx/appcompat/widget/y0;->k:Z

    :cond_b
    :goto_0
    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/y0;->f:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/y0;->g:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y0;->k(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/y0;->c()V

    return-void
.end method
