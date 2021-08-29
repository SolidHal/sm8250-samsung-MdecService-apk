.class public abstract Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "WelcomeBottomLayoutBinding.java"


# instance fields
.field public final bottomLayout:Landroid/widget/LinearLayout;

.field public final continueButton:Landroid/widget/Button;

.field protected mBottomWelcomeLayout:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->bottomLayout:Landroid/widget/LinearLayout;

    .line 3
    iput-object p5, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->continueButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0095

    .line 2
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
    .locals 1

    .line 3
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0095

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0095

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getBottomWelcomeLayout()Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/WelcomeBottomLayoutBinding;->mBottomWelcomeLayout:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    return-object v0
.end method

.method public abstract setBottomWelcomeLayout(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V
.end method
