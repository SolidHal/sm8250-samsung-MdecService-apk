.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "DropDownPreference.java"


# instance fields
.field private final m:Landroid/content/Context;

.field private final n:Landroid/widget/ArrayAdapter;

.field private o:Landroidx/appcompat/widget/AppCompatSpinner;

.field private final p:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Landroidx/preference/m;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance p2, Landroidx/preference/DropDownPreference$a;

    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$a;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->p:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 5
    iput-object p1, p0, Landroidx/preference/DropDownPreference;->m:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroidx/preference/DropDownPreference;->p()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/DropDownPreference;->n:Landroid/widget/ArrayAdapter;

    .line 7
    invoke-direct {p0}, Landroidx/preference/DropDownPreference;->s()V

    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->n:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    iget-object v4, p0, Landroidx/preference/DropDownPreference;->n:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public m([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->m([Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Landroidx/preference/DropDownPreference;->s()V

    return-void
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 2
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->n:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$r0;->itemView:Landroid/view/View;

    sget v1, Landroidx/preference/p;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->o:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 3
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->n:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->o:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->o:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->n:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->o:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->p:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 6
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->o:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/DropDownPreference;->q(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 7
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->o:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return-void
.end method

.method protected p()Landroid/widget/ArrayAdapter;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->m:Landroid/content/Context;

    sget v2, Landroidx/preference/q;->support_simple_spinner_dropdown_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public q(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public r(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->o(Ljava/lang/String;)V

    return-void
.end method
