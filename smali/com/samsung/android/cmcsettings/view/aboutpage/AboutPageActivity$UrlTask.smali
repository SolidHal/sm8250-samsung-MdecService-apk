.class public Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;
.super Landroid/os/AsyncTask;
.source "AboutPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UrlTask"
.end annotation

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
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doInBackground: start: getTnCURLForWelcomeActivity"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TermsAndConditionURL"

    .line 3
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/terms/TermURLFactory;->getTermUrl(Ljava/lang/String;)Lcom/samsung/android/cmcsettings/view/terms/TermURL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-interface {p1}, Lcom/samsung/android/cmcsettings/view/terms/TermURL;->getFinalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$402(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "doInBackground: end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: start: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$500(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)V

    .line 4
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final tncUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 7
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPostExecute: end"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
