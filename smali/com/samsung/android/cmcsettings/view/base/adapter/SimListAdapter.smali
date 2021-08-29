.class public Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;-><init>(Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$1;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c008d

    .line 5
    invoke-virtual {v1, v2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0900be

    .line 6
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f090150

    .line 7
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->simName:Landroid/widget/TextView;

    const v1, 0x7f0900ee

    .line 8
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 11
    :goto_0
    iget-object v1, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->getSimResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v1, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->simName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->getSimName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->isSimPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->getSimNumber()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/cmcsettings/view/base/adapter/SimDisplayInfo;->getSimWifiOnlyMsg()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v3

    .line 19
    :goto_1
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lb/f/d/a;->d(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v2, p1, v3, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 20
    iget-object v2, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_3
    iget-object p2, p2, Lcom/samsung/android/cmcsettings/view/base/adapter/SimListAdapter$ViewHolder;->simNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {p3, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/high16 p1, 0x3f000000    # 0.5f

    .line 23
    :goto_3
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p3
.end method
