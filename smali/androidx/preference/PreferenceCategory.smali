.class public Landroidx/preference/PreferenceCategory;
.super Landroidx/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 4
    sget v0, Landroidx/preference/m;->preferenceCategoryStyle:I

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, Landroidx/core/content/d/g;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    :try_start_0
    sget p2, Landroidx/preference/r;->sesl_preferencecategory_added_title:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/PreferenceCategory;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "PreferenceCategory"

    const-string v0, "Can not find the string. Please updates latest sesl-appcompat library, "

    .line 6
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "Header"

    .line 2
    iput-object p1, p0, Landroidx/preference/PreferenceCategory;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x1020016

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityHeading(Z)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x15

    if-ge v0, v3, :cond_4

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/preference/m;->colorAccent:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroidx/preference/n;->preference_fallback_accent_color:I

    invoke-static {v3, v4}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v3

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    if-eq v4, v3, :cond_3

    return-void

    .line 9
    :cond_3
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/preference/PreferenceCategory;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    :cond_5
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIsSolidRoundedCorner:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_7

    .line 13
    iget v0, p0, Landroidx/preference/Preference;->mSubheaderColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lb/f/k/c0/c;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Lb/f/k/c0/c;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lb/f/k/c0/c;->o()Lb/f/k/c0/c$c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lb/f/k/c0/c$c;->c()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lb/f/k/c0/c$c;->d()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lb/f/k/c0/c$c;->a()I

    move-result v3

    .line 7
    invoke-virtual {v0}, Lb/f/k/c0/c$c;->b()I

    move-result v4

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v0}, Lb/f/k/c0/c$c;->e()Z

    move-result v6

    .line 9
    invoke-static/range {v1 .. v6}, Lb/f/k/c0/c$c;->f(IIIIZZ)Lb/f/k/c0/c$c;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lb/f/k/c0/c;->X(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
