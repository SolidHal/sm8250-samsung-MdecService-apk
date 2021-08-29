.class public Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;
.super Ljava/lang/Object;
.source "SelectAllView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mEntireSelectAllView:Landroid/view/View;

.field private mRemoveItemSelected:Landroid/widget/TextView;

.field private mSelectAllView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mEntireSelectAllView:Landroid/view/View;

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Initialized mSelectionAllView"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mEntireSelectAllView:Landroid/view/View;

    const p2, 0x7f09013a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mSelectAllView:Landroid/view/View;

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mEntireSelectAllView:Landroid/view/View;

    const p2, 0x7f09004e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mAllCheckBox:Landroid/widget/CheckBox;

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mEntireSelectAllView:Landroid/view/View;

    const p2, 0x7f09013e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mRemoveItemSelected:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->setLargeTextSize()V

    return-void
.end method


# virtual methods
.method public getAllCheckBoxView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getEntireSelectAllView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mEntireSelectAllView:Landroid/view/View;

    return-object v0
.end method

.method public getRemoveItemSelectedView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mRemoveItemSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method public setLargeTextSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mRemoveItemSelected:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e1

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/samsung/android/cmcsettings/utils/Utils;->setLargeTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectionAllView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mSelectAllView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateContentDescriptionTextForAllSelectionView(IZ)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fc

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fd

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-lez p1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0069

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 8
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0f00fe

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0f006a

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0f006b

    :goto_2
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f00fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/widget/SelectAllView;->mSelectAllView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
