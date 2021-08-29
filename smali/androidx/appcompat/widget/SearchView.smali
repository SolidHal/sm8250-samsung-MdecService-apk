.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/f0;
.source "SearchView.java"

# interfaces
.implements Lb/a/o/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$k;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$o;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$n;,
        Landroidx/appcompat/widget/SearchView$l;,
        Landroidx/appcompat/widget/SearchView$m;
    }
.end annotation


# static fields
.field static final g0:Landroidx/appcompat/widget/SearchView$k;


# instance fields
.field private A:Landroidx/appcompat/widget/SearchView$n;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Z

.field private D:Z

.field E:Lb/g/a/a;

.field private F:Z

.field private G:Ljava/lang/CharSequence;

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Ljava/lang/CharSequence;

.field private M:Ljava/lang/CharSequence;

.field private N:Z

.field private O:I

.field P:Landroid/app/SearchableInfo;

.field private Q:Landroid/os/Bundle;

.field private R:Landroid/view/inputmethod/InputMethodManager;

.field private S:Z

.field private final T:Landroid/content/Intent;

.field private final U:Ljava/lang/Runnable;

.field private V:Ljava/lang/Runnable;

.field private final W:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final a0:Landroid/view/View$OnClickListener;

.field final b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field b0:Landroid/view/View$OnKeyListener;

.field private final c:Landroid/view/View;

.field private final c0:Landroid/widget/TextView$OnEditorActionListener;

.field private final d:Landroid/view/View;

.field private final d0:Landroid/widget/AdapterView$OnItemClickListener;

.field private final e:Landroid/view/View;

.field private final e0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final f:Landroid/widget/ImageView;

.field private f0:Landroid/text/TextWatcher;

.field final g:Landroid/widget/ImageView;

.field final h:Landroid/widget/ImageView;

.field final i:Landroid/widget/ImageView;

.field final j:Landroid/widget/ImageView;

.field final k:Landroid/widget/ImageView;

.field private final l:Landroid/view/View;

.field private m:Landroidx/appcompat/widget/SearchView$o;

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/Rect;

.field private p:[I

.field private q:[I

.field private final r:Landroid/widget/ImageView;

.field private final s:I

.field private final t:I

.field private final u:Landroid/content/Intent;

.field private final v:Landroid/content/Intent;

.field private final w:Ljava/lang/CharSequence;

.field private x:Landroidx/appcompat/widget/SearchView$m;

.field private y:Landroidx/appcompat/widget/SearchView$l;

.field z:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/SearchView$k;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$k;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SearchView;->g0:Landroidx/appcompat/widget/SearchView$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lb/a/a;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->p:[I

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:[I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->S:Z

    .line 9
    new-instance v1, Landroidx/appcompat/widget/SearchView$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$b;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->U:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Landroidx/appcompat/widget/SearchView$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$c;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->V:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->W:Ljava/util/WeakHashMap;

    .line 12
    new-instance v1, Landroidx/appcompat/widget/SearchView$f;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v1, Landroidx/appcompat/widget/SearchView$g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$g;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->b0:Landroid/view/View$OnKeyListener;

    .line 14
    new-instance v1, Landroidx/appcompat/widget/SearchView$h;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$h;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->c0:Landroid/widget/TextView$OnEditorActionListener;

    .line 15
    new-instance v1, Landroidx/appcompat/widget/SearchView$i;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$i;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->d0:Landroid/widget/AdapterView$OnItemClickListener;

    .line 16
    new-instance v1, Landroidx/appcompat/widget/SearchView$j;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$j;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->e0:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 17
    new-instance v1, Landroidx/appcompat/widget/SearchView$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$a;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->f0:Landroid/text/TextWatcher;

    .line 18
    sget-object v1, Lb/a/j;->SearchView:[I

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/appcompat/widget/v0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/v0;

    move-result-object p2

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 20
    sget p3, Lb/a/j;->SearchView_layout:I

    sget v1, Lb/a/g;->sesl_search_view:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result p3

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    sget p1, Lb/a/f;->search_src_text:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 23
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 24
    sget p1, Lb/a/f;->search_edit_frame:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/view/View;

    .line 25
    sget p1, Lb/a/f;->search_plate:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    .line 26
    sget p1, Lb/a/f;->submit_area:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/view/View;

    .line 27
    sget p1, Lb/a/f;->search_button:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 28
    sget p1, Lb/a/f;->search_go_btn:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 29
    sget p1, Lb/a/f;->search_close_btn:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 30
    sget p1, Lb/a/f;->search_voice_btn:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    .line 31
    sget p1, Lb/a/f;->search_mag_icon:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/widget/ImageView;

    .line 32
    sget p1, Lb/a/f;->search_more_btn:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/widget/ImageView;

    .line 33
    sget p1, Lb/a/f;->search_back_btn:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/widget/ImageView;

    .line 34
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    sget p3, Lb/a/j;->SearchView_queryBackground:I

    .line 35
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 36
    invoke-static {p1, p3}, Lb/f/k/t;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/view/View;

    sget p3, Lb/a/j;->SearchView_submitBackground:I

    .line 38
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 39
    invoke-static {p1, p3}, Lb/f/k/t;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget p1, Lb/a/j;->SearchView_searchIcon:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/v0;->n(II)I

    .line 41
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_goIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_closeIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_voiceIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    sget p1, Lb/a/j;->SearchView_searchHintIcon:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    .line 48
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/widget/x0;->d(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {v1}, Landroidx/appcompat/widget/x0;->a(Z)V

    .line 61
    invoke-static {v1}, Landroidx/appcompat/widget/x0;->b(Z)V

    .line 62
    :goto_0
    sget p1, Lb/a/j;->SearchView_suggestionRowLayout:I

    sget p3, Lb/a/g;->sesl_search_dropdown_item_icons_2line:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView;->s:I

    .line 63
    sget p1, Lb/a/j;->SearchView_commitIcon:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/v0;->n(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SearchView;->t:I

    .line 64
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->a0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->f0:Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->c0:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 71
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->d0:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->e0:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 73
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->b0:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    new-instance p3, Landroidx/appcompat/widget/SearchView$d;

    invoke-direct {p3, p0}, Landroidx/appcompat/widget/SearchView$d;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, p3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 75
    sget p1, Lb/a/j;->SearchView_iconifiedByDefault:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/v0;->a(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 76
    sget p1, Lb/a/j;->SearchView_android_maxWidth:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/v0;->f(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 78
    :cond_1
    sget p1, Lb/a/j;->SearchView_defaultQueryHint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/v0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->w:Ljava/lang/CharSequence;

    .line 79
    sget p1, Lb/a/j;->SearchView_queryHint:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/v0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->G:Ljava/lang/CharSequence;

    .line 80
    sget p1, Lb/a/j;->SearchView_android_imeOptions:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/v0;->k(II)I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 82
    :cond_2
    sget p1, Lb/a/j;->SearchView_android_inputType:I

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/v0;->k(II)I

    move-result p1

    if-eq p1, p3, :cond_3

    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 84
    :cond_3
    sget p1, Lb/a/j;->SearchView_android_focusable:I

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/v0;->a(IZ)Z

    move-result p1

    .line 85
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 86
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    sget p3, Lb/a/j;->SearchView_searchIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/v0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p2}, Landroidx/appcompat/widget/v0;->v()V

    .line 89
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.WEB_SEARCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 90
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/content/Intent;

    const-string p3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v1, "web_search"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string p3, "samsung.svoiceime.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->T:Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->T:Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "samsung.svoiceime.extra.LANGUAGE"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 98
    new-instance p2, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 99
    :cond_4
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    .line 100
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->I()V

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->R:Landroid/view/inputmethod/InputMethodManager;

    .line 102
    invoke-static {}, Lb/n/i/d;->a()I

    move-result p1

    if-eqz p1, :cond_5

    .line 103
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p2, p1, v0}, Lb/n/i/d;->e(Landroid/widget/TextView;IZ)V

    :cond_5
    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private E(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    invoke-virtual {v1}, Lb/g/a/a;->b()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    invoke-virtual {p1, v1}, Lb/g/a/a;->c(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->N:Z

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private J()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lb/g/a/a;->a(Landroid/database/Cursor;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Landroidx/appcompat/widget/p0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->W:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Landroidx/appcompat/widget/p0;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    check-cast v0, Landroidx/appcompat/widget/p0;

    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/p0;->y(I)V

    :cond_3
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private L(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private M(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->D:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 3
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->L(Z)V

    .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->G()V

    xor-int/lit8 p1, v3, 0x1

    .line 8
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->N(Z)V

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->K()V

    return-void
.end method

.method private N(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v1, p1

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private e(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    .line 8
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 9
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 10
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private f(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1
    invoke-static {p1, v1}, Landroidx/appcompat/widget/p0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    .line 3
    invoke-static {p1, v1}, Landroidx/appcompat/widget/p0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 5
    invoke-static {p1, v3}, Landroidx/appcompat/widget/p0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    .line 8
    invoke-static {p1, v1}, Landroidx/appcompat/widget/p0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    .line 9
    invoke-static {p1, v1}, Landroidx/appcompat/widget/p0;->o(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 10
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/SearchView;->e(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 11
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    .line 12
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private g(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v3, "app_data"

    .line 7
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    .line 10
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 11
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 12
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v2
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/d;->sesl_search_view_preferred_height:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/a/d;->sesl_search_view_preferred_width:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private h(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    .line 7
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 10
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "free_form"

    .line 12
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 14
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v7

    .line 16
    :goto_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_4

    .line 17
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result p1

    :cond_4
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 18
    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PROMPT"

    .line 19
    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.LANGUAGE"

    .line 20
    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.MAX_RESULTS"

    .line 21
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    .line 23
    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 24
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 25
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private i(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    .line 4
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void
.end method

.method private l(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->p:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->q:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->p:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->q:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/content/Intent;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->S:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->T:Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/content/Intent;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method static o(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private s(IILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    invoke-virtual {v0}, Lb/g/a/a;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SearchView;->f(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->q(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method A(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->L(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->N(Z)V

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->G()V

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->K()V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->L:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->L:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroidx/appcompat/widget/SearchView$m;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$m;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method B()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->D()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->k()V

    :cond_0
    return-void
.end method

.method C()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->S:Z

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->i(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->h(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->i(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->T:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->g(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public F(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->y()V

    :cond_1
    return-void
.end method

.method H()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->N:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->O:I

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->F(Ljava/lang/CharSequence;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroidx/appcompat/widget/SearchView;->O:I

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->N:Z

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 5
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    return-void
.end method

.method d()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-static {p0}, Landroidx/appcompat/widget/b1;->b(Landroid/view/View;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x0

    rsub-int/lit8 v1, v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x0

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    :cond_2
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->J:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->G:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->w:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->t:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->s:I

    return v0
.end method

.method public getSuggestionsAdapter()Lb/g/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    return-object v0
.end method

.method k()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/appcompat/widget/SearchView;->g0:Landroidx/appcompat/widget/SearchView$k;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$k;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 2
    sget-object v0, Landroidx/appcompat/widget/SearchView;->g0:Landroidx/appcompat/widget/SearchView$k;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$k;->a(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->D:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/f0;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;->l(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/appcompat/widget/SearchView$o;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroidx/appcompat/widget/SearchView$o;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/graphics/Rect;

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$o;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroidx/appcompat/widget/SearchView$o;

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$o;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/f0;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->J:I

    if-lez v0, :cond_5

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->J:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->J:I

    if-lez v0, :cond_5

    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    :cond_5
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    .line 13
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 14
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 15
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 16
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/f0;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$SavedState;->b:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$SavedState;->b:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->R:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Lb/n/h/g/a;->a(Landroid/view/inputmethod/InputMethodManager;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->D()V

    return-void
.end method

.method r(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->e(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    :cond_2
    return p1

    .line 6
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lb/f/k/t;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lb/f/k/t;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lb/f/k/t;->d0(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->x()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    .line 4
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->I()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->J:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroidx/appcompat/widget/SearchView$l;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroidx/appcompat/widget/SearchView$m;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$n;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->G:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->I()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    instance-of v1, v0, Landroidx/appcompat/widget/p0;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroidx/appcompat/widget/p0;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/p0;->y(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->J()V

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->I()V

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->m()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Lb/g/a/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroidx/appcompat/widget/SearchView$l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$l;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 6
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lb/n/h/g/a;->a(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method u(IILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$n;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2, p1}, Landroidx/appcompat/widget/SearchView$n;->b(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p3, p2}, Landroidx/appcompat/widget/SearchView;->s(IILjava/lang/String;)Z

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->j()V

    const/4 p1, 0x1

    return p1
.end method

.method v(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$n;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->E(I)V

    const/4 p1, 0x1

    return p1
.end method

.method w(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method x()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->M(Z)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->R:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lb/n/h/g/a;->a(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method y()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroidx/appcompat/widget/SearchView$m;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SearchView$m;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/appcompat/widget/SearchView;->r(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->j()V

    :cond_2
    return-void
.end method

.method z(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Lb/g/a/a;

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-eq p2, p1, :cond_6

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    .line 5
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 6
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result p1

    .line 7
    :goto_1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 8
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 10
    sget-object p1, Landroidx/appcompat/widget/SearchView;->g0:Landroidx/appcompat/widget/SearchView$k;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$k;->c(Landroid/widget/AutoCompleteTextView;Z)V

    return p3

    .line 11
    :cond_6
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->b:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/widget/SearchView;->u(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method
