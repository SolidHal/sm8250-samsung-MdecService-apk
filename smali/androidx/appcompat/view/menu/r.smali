.class final Landroidx/appcompat/view/menu/r;
.super Landroidx/appcompat/view/menu/k;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final y:I

.field private static final z:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/g;

.field private final e:Landroidx/appcompat/view/menu/f;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field final j:Landroidx/appcompat/widget/i0;

.field private k:Z

.field private l:Landroid/widget/ListView;

.field final m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final n:Landroid/view/View$OnAttachStateChangeListener;

.field private o:Landroid/widget/PopupWindow$OnDismissListener;

.field private p:Landroid/view/View;

.field q:Landroid/view/View;

.field private r:Landroidx/appcompat/view/menu/m$a;

.field s:Landroid/view/ViewTreeObserver;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lb/a/g;->sesl_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/r;->y:I

    .line 2
    sget v0, Lb/a/g;->sesl_popup_sub_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/r;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;IIZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->k:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/ListView;

    .line 4
    new-instance v2, Landroidx/appcompat/view/menu/r$a;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/r$a;-><init>(Landroidx/appcompat/view/menu/r;)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v2, Landroidx/appcompat/view/menu/r$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/r$b;-><init>(Landroidx/appcompat/view/menu/r;)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    iput v0, p0, Landroidx/appcompat/view/menu/r;->w:I

    .line 7
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10104a9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 9
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    .line 10
    new-instance v3, Lb/a/o/d;

    iget v2, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, p1, v2}, Lb/a/o/d;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    .line 12
    :goto_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    .line 13
    instance-of p1, p2, Landroidx/appcompat/view/menu/s;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 14
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/r;->k:Z

    .line 15
    :cond_1
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/r;->f:Z

    .line 16
    iget-object p6, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    .line 17
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 18
    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/i;

    .line 19
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/i;->o()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_2
    if-nez v3, :cond_4

    .line 20
    new-instance v3, Landroidx/appcompat/view/menu/f;

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/r;->f:Z

    sget v5, Landroidx/appcompat/view/menu/r;->y:I

    invoke-direct {v3, p2, p6, v4, v5}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    iput-object v3, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    goto :goto_3

    .line 21
    :cond_4
    new-instance v3, Landroidx/appcompat/view/menu/f;

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/r;->f:Z

    sget v5, Landroidx/appcompat/view/menu/r;->z:I

    invoke-direct {v3, p2, p6, v4, v5}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    iput-object v3, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    .line 22
    :goto_3
    iput p4, p0, Landroidx/appcompat/view/menu/r;->h:I

    .line 23
    iput p5, p0, Landroidx/appcompat/view/menu/r;->i:I

    .line 24
    iget-object p4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 25
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p0, Landroidx/appcompat/view/menu/r;->g:I

    .line 26
    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/View;

    .line 27
    new-instance p3, Landroidx/appcompat/widget/i0;

    iget-object p4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iget p5, p0, Landroidx/appcompat/view/menu/r;->h:I

    iget p6, p0, Landroidx/appcompat/view/menu/r;->i:I

    invoke-direct {p3, p4, v1, p5, p6}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    if-eqz p1, :cond_5

    .line 28
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/r;->k:Z

    goto :goto_4

    .line 29
    :cond_5
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->k:Z

    .line 30
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/g;->addMenuPresenter(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    return-void
.end method

.method private q()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->t:Z

    const/4 v2, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/View;

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/g0;->D(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/g0;->E(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/g0;->C(Z)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/View;

    .line 8
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    :cond_3
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 12
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/g0;->w(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    iget v3, p0, Landroidx/appcompat/view/menu/r;->w:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/g0;->z(I)V

    .line 14
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->u:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/r;->g:I

    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/k;->e(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/r;->v:I

    .line 16
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/r;->u:Z

    .line 17
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    iget v4, p0, Landroidx/appcompat/view/menu/r;->v:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/g0;->y(I)V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/g0;->B(I)V

    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->d()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/g0;->A(Landroid/graphics/Rect;)V

    .line 20
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->show()V

    .line 21
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->f()Landroid/widget/ListView;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 23
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/r;->k:Z

    if-nez v4, :cond_5

    .line 24
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/ListView;

    goto :goto_1

    .line 25
    :cond_5
    iput-object v3, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/ListView;

    .line 26
    :goto_1
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/r;->x:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/r;->k:Z

    if-nez v4, :cond_7

    .line 27
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    .line 28
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lb/a/g;->sesl_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 29
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 30
    iget-object v6, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/g;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_6
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 32
    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 33
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/g0;->m(Landroid/widget/ListAdapter;)V

    .line 34
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->show()V

    return v1

    :cond_8
    :goto_2
    return v2
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->dismiss()V

    :cond_0
    return-void
.end method

.method public f()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g0;->f()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/View;

    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->d(Z)V

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/r;->w:I

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g0;->i(I)V

    return-void
.end method

.method public l(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->x:Z

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g0;->h(I)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->r:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->onCloseMenu(Landroidx/appcompat/view/menu/g;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->t:Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/view/ViewTreeObserver;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/view/ViewTreeObserver;

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->n:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/s;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/l;

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->c:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->q:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/r;->f:Z

    iget v7, p0, Landroidx/appcompat/view/menu/r;->h:I

    iget v8, p0, Landroidx/appcompat/view/menu/r;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V

    .line 3
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->r:Landroidx/appcompat/view/menu/m$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->j(Landroidx/appcompat/view/menu/m$a;)V

    .line 4
    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->o(Landroidx/appcompat/view/menu/g;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->g(Z)V

    .line 5
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->i(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Landroidx/appcompat/view/menu/r;->o:Landroid/widget/PopupWindow$OnDismissListener;

    .line 7
    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 8
    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v6

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_1
    const/4 v3, -0x1

    .line 10
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/f;->getCount()I

    move-result v4

    move v6, v1

    :goto_2
    if-ge v6, v4, :cond_3

    .line 11
    iget-object v7, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/f;->c(I)Landroidx/appcompat/view/menu/i;

    move-result-object v7

    if-ne v5, v7, :cond_2

    move v3, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 12
    :cond_3
    :goto_3
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    .line 13
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v3, v2

    if-ltz v2, :cond_4

    .line 14
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    .line 15
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v1

    .line 17
    :goto_4
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/g;->close(Z)V

    .line 18
    iget-object v4, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v4}, Landroidx/appcompat/widget/g0;->b()I

    move-result v4

    .line 19
    iget-object v5, p0, Landroidx/appcompat/view/menu/r;->j:Landroidx/appcompat/widget/i0;

    invoke-virtual {v5}, Landroidx/appcompat/widget/g0;->k()I

    move-result v5

    mul-int/2addr v2, v3

    add-int/2addr v5, v2

    .line 20
    iget v2, p0, Landroidx/appcompat/view/menu/r;->w:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/View;

    .line 21
    invoke-static {v3}, Lb/f/k/t;->t(Landroid/view/View;)I

    move-result v3

    .line 22
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 23
    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v4, v2

    .line 24
    :cond_7
    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/view/menu/l;->n(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->r:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_8

    .line 26
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;)Z

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    return v1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->r:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->u:Z

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->e:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
