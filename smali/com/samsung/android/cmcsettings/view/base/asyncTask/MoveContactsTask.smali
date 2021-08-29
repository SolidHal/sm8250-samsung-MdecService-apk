.class public Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;
.super Landroid/os/AsyncTask;
.source "MoveContactsTask.java"


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

.field private hasPhoneAccountContacts:Z

.field private phoneContactsCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    const-class v0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->LOG_TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private activityAndContextIsNull(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activity is null"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move p1, v0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activity is removing"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v0, p1

    :goto_2
    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, ""

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-boolean v3, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->hasPhoneAccountContacts:Z

    if-eqz v3, :cond_2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->phoneContactsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->phoneContactsCursor:Landroid/database/Cursor;

    const-string v4, "contact_id"

    .line 10
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 11
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    new-instance p1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;

    invoke-direct {p1}, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;-><init>()V

    .line 15
    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v3, "com.osp.app.signin"

    .line 16
    iput-object v3, p1, Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;->type:Ljava/lang/String;

    .line 17
    new-instance v3, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;

    invoke-direct {v3}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;-><init>()V

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, p1, v2}, Lcom/samsung/android/cmcsettings/view/contacts/MoveDeviceContactsImpl;->updateAccount(Landroid/content/Context;Lcom/samsung/android/cmcsettings/view/contacts/AccountWithDataSet;Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MoveContactsTask onPostExecute: start"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->activityAndContextIsNull(Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;->showSyncContactsDialog()V

    .line 8
    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/preference/PreferenceManager;->setProgressDisplay(Landroid/content/Context;I)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MoveContactsTask onPostExecute: end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/suggestionTipCard/SuggestionTipCardFragment;

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/cmcsettings/constants/Constants;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "account_type = \'vnd.sec.contact.phone\'"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->phoneContactsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/base/asyncTask/MoveContactsTask;->hasPhoneAccountContacts:Z

    if-nez v0, :cond_2

    const v0, 0x7f0f0098

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const v0, 0x7f0f00a0

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method
