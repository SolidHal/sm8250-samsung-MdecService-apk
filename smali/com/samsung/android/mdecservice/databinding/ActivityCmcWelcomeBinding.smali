.class public abstract Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityCmcWelcomeBinding.java"


# instance fields
.field public final emptyViewThree:Landroid/view/View;

.field public final emptyViewTwo:Landroid/view/View;

.field protected mWelcome:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

.field public final topEmptyViewOne:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->emptyViewThree:Landroid/view/View;

    .line 3
    iput-object p5, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->emptyViewTwo:Landroid/view/View;

    .line 4
    iput-object p6, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->topEmptyViewOne:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c000c

    .line 2
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
    .locals 1

    .line 3
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/databinding/g;->g()Landroidx/databinding/f;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c000c

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c000c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;

    return-object p0
.end method


# virtual methods
.method public getWelcome()Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/databinding/ActivityCmcWelcomeBinding;->mWelcome:Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;

    return-object v0
.end method

.method public abstract setWelcome(Lcom/samsung/android/cmcsettings/view/welcome/CMCWelcomeActivityData;)V
.end method
