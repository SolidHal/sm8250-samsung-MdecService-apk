.class public Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;
.super Landroid/os/AsyncTask;
.source "SyncContactsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;",
            ">;"
        }
    .end annotation
.end field

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->LOG_TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 4
    new-instance v0, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->turnOnContactSync(Landroid/content/Context;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SyncContactsTask onPostExecute: start"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->updateSuggestionTipCard(Z)V

    .line 7
    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/SyncContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SyncContactsTask onPostExecute: end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
