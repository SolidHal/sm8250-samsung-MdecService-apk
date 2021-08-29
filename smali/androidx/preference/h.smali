.class public Landroidx/preference/h;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$b;
.implements Landroidx/preference/PreferenceGroup$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$r<",
        "Landroidx/preference/l;",
        ">;",
        "Landroidx/preference/Preference$b;",
        "Landroidx/preference/PreferenceGroup$c;"
    }
.end annotation


# instance fields
.field private a:Landroidx/preference/PreferenceGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field f:Z

.field g:Landroidx/preference/Preference;

.field h:Landroidx/preference/Preference;

.field private i:Landroidx/preference/h$c;

.field private j:Landroid/os/Handler;

.field private k:Landroidx/preference/a;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/preference/h;-><init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 3
    sget v0, Landroidx/preference/q;->sesl_preference_category:I

    iput v0, p0, Landroidx/preference/h;->e:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/preference/h;->f:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/preference/h;->g:Landroidx/preference/Preference;

    .line 6
    iput-object v0, p0, Landroidx/preference/h;->h:Landroidx/preference/Preference;

    .line 7
    new-instance v0, Landroidx/preference/h$c;

    invoke-direct {v0}, Landroidx/preference/h$c;-><init>()V

    iput-object v0, p0, Landroidx/preference/h;->i:Landroidx/preference/h$c;

    .line 8
    new-instance v0, Landroidx/preference/h$a;

    invoke-direct {v0, p0}, Landroidx/preference/h$a;-><init>(Landroidx/preference/h;)V

    iput-object v0, p0, Landroidx/preference/h;->l:Ljava/lang/Runnable;

    .line 9
    iput-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    .line 10
    iput-object p2, p0, Landroidx/preference/h;->j:Landroid/os/Handler;

    .line 11
    new-instance p2, Landroidx/preference/a;

    invoke-direct {p2, p1, p0}, Landroidx/preference/a;-><init>(Landroidx/preference/PreferenceGroup;Landroidx/preference/h;)V

    iput-object p2, p0, Landroidx/preference/h;->k:Landroidx/preference/a;

    .line 12
    iget-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->b:Ljava/util/List;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->c:Ljava/util/List;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/preference/h;->d:Ljava/util/List;

    .line 16
    iget-object p1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    instance-of p2, p1, Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 17
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->p()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->setHasStableIds(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->setHasStableIds(Z)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/h;->l()V

    return-void
.end method

.method private f(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/preference/h;->g(Landroidx/preference/Preference;Landroidx/preference/h$c;)Landroidx/preference/h$c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private g(Landroidx/preference/Preference;Landroidx/preference/h$c;)Landroidx/preference/h$c;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Landroidx/preference/h$c;

    invoke-direct {p2}, Landroidx/preference/h$c;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroidx/preference/h$c;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v0

    iput v0, p2, Landroidx/preference/h$c;->a:I

    .line 4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result p1

    iput p1, p2, Landroidx/preference/h$c;->b:I

    return-object p2
.end method

.method private h(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->o()V

    .line 2
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 3
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->f(I)Landroidx/preference/Preference;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 4
    iput-object v4, p0, Landroidx/preference/h;->g:Landroidx/preference/Preference;

    .line 5
    iget-boolean v3, p0, Landroidx/preference/h;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/preference/h;->h:Landroidx/preference/Preference;

    if-ne v2, v3, :cond_1

    .line 6
    iput-object v4, p0, Landroidx/preference/h;->h:Landroidx/preference/Preference;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 7
    invoke-virtual {p2, v3}, Landroidx/preference/PreferenceGroup;->f(I)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Landroidx/preference/h;->g:Landroidx/preference/Preference;

    .line 8
    iget-object v3, p0, Landroidx/preference/h;->h:Landroidx/preference/Preference;

    if-ne v2, v3, :cond_1

    .line 9
    iput-object v4, p0, Landroidx/preference/h;->h:Landroidx/preference/Preference;

    .line 10
    :cond_1
    :goto_1
    instance-of v3, v2, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_3

    .line 11
    iget-boolean v4, v2, Landroidx/preference/Preference;->mIsRoundChanged:Z

    if-nez v4, :cond_2

    const/16 v4, 0xf

    .line 12
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    .line 13
    :cond_2
    iget-boolean v4, p2, Landroidx/preference/Preference;->mIsSolidRoundedCorner:Z

    iput-boolean v4, v2, Landroidx/preference/Preference;->mIsSolidRoundedCorner:Z

    .line 14
    iget v4, p2, Landroidx/preference/Preference;->mSubheaderColor:I

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->seslSetSubheaderColor(I)V

    .line 15
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroidx/preference/h;->e:I

    .line 17
    invoke-virtual {v2}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 18
    sget v3, Landroidx/preference/q;->sesl_preference_category_empty:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 19
    :cond_4
    invoke-direct {p0, v2}, Landroidx/preference/h;->f(Landroidx/preference/Preference;)V

    .line 20
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_5

    .line 21
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 22
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 23
    iget-object v4, p0, Landroidx/preference/h;->g:Landroidx/preference/Preference;

    iput-object v4, p0, Landroidx/preference/h;->h:Landroidx/preference/Preference;

    .line 24
    invoke-direct {p0, p1, v3}, Landroidx/preference/h;->h(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 25
    :cond_5
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/preference/h;->j:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/preference/h;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/preference/h;->j:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/preference/h;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 3
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d(Landroidx/preference/Preference;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/h;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public e(Landroidx/preference/Preference;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/preference/h;->i:Landroidx/preference/h$c;

    invoke-direct {p0, p1, v0}, Landroidx/preference/h;->g(Landroidx/preference/Preference;Landroidx/preference/h$c;)Landroidx/preference/h$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/h;->i:Landroidx/preference/h$c;

    .line 3
    iget-object v0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    new-instance v1, Landroidx/preference/h$c;

    iget-object v2, p0, Landroidx/preference/h;->i:Landroidx/preference/h$c;

    invoke-direct {v1, v2}, Landroidx/preference/h$c;-><init>(Landroidx/preference/h$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public i(I)Landroidx/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/h;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Landroidx/preference/l;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Landroidx/preference/l;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/h$c;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget v1, p2, Landroidx/preference/h$c;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020018

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 5
    iget p2, p2, Landroidx/preference/h$c;->b:I

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 7
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    :cond_1
    :goto_0
    new-instance p2, Landroidx/preference/l;

    invoke-direct {p2, p1}, Landroidx/preference/l;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method l()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/preference/h;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroidx/preference/h;->h(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 5
    iget-object v1, p0, Landroidx/preference/h;->k:Landroidx/preference/a;

    iget-object v2, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    .line 6
    invoke-virtual {v1, v2}, Landroidx/preference/a;->c(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/preference/h;->b:Ljava/util/List;

    .line 8
    iput-object v1, p0, Landroidx/preference/h;->b:Ljava/util/List;

    .line 9
    iput-object v0, p0, Landroidx/preference/h;->c:Ljava/util/List;

    .line 10
    iget-object v3, p0, Landroidx/preference/h;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Landroidx/preference/j;->i()Landroidx/preference/j$d;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v3}, Landroidx/preference/j;->i()Landroidx/preference/j$d;

    move-result-object v3

    .line 13
    new-instance v4, Landroidx/preference/h$b;

    invoke-direct {v4, p0, v2, v1, v3}, Landroidx/preference/h$b;-><init>(Landroidx/preference/h;Ljava/util/List;Ljava/util/List;Landroidx/preference/j$d;)V

    invoke-static {v4}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/f$b;)Landroidx/recyclerview/widget/f$c;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/f$c;->e(Landroidx/recyclerview/widget/RecyclerView$r;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$r;->notifyDataSetChanged()V

    .line 16
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 17
    invoke-virtual {v1}, Landroidx/preference/Preference;->clearWasDetached()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$r0;I)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/l;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/h;->j(Landroidx/preference/l;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/h;->k(Landroid/view/ViewGroup;I)Landroidx/preference/l;

    move-result-object p1

    return-object p1
.end method
