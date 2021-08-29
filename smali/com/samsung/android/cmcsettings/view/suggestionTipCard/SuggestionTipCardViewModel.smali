.class public Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;
.super Landroidx/lifecycle/a;
.source "SuggestionTipCardViewModel.java"


# instance fields
.field private isContactsMovePreference:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isSyncContactsMovePreference:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isTipVisible:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tipButtonText:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tipDescriptionText:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->tipDescriptionText:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isTipVisible:Landroidx/lifecycle/o;

    .line 4
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->tipButtonText:Landroidx/lifecycle/o;

    .line 5
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isContactsMovePreference:Landroidx/lifecycle/o;

    .line 6
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isSyncContactsMovePreference:Landroidx/lifecycle/o;

    return-void
.end method


# virtual methods
.method getIsContactsMovePreference()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isContactsMovePreference:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getIsSyncContactsMovePreference()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isSyncContactsMovePreference:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getIsTipVisible()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isTipVisible:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getTipButtonText()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->tipButtonText:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public getTipDescriptionText()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->tipDescriptionText:Landroidx/lifecycle/o;

    return-object v0
.end method

.method setIsContactsMovePreference(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isContactsMovePreference:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsSyncContactsMovePreference(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isSyncContactsMovePreference:Landroidx/lifecycle/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method setIsTipVisible(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->isTipVisible:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method setTipButtonText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->tipButtonText:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method

.method setTipDescriptionText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardViewModel;->tipDescriptionText:Landroidx/lifecycle/o;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->k(Ljava/lang/Object;)V

    return-void
.end method
