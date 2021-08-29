.class public Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "CMCWrapperActivity.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field mSaid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "no intent return..."

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "no data return..."

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->mSaid:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->mSaid:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 11
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "query parameter is null"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const-string v0, "samsungservice"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "SAMSUNG_SERVICE"

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->mSaid:Ljava/lang/String;

    move-object p1, v0

    goto :goto_0

    :cond_4
    const-string p1, "QR_CAMERA"

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/mdecservice/mdec/MdecServiceApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    sget-object p1, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "This feature is only for primary device"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0079

    .line 17
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 19
    :cond_6
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/cmcsettings/view/CMCMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/CMCWrapperActivity;->mSaid:Ljava/lang/String;

    const-string v2, "said"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_reason_cmcopen"

    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
