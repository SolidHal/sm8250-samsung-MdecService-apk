.class public Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "AboutPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;,
        Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$PPUrlTask;
    }
.end annotation


# static fields
.field private static final KEY_CHECKING_STATUS:Ljava/lang/String; = "status"

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAvailableText:Landroid/widget/TextView;

.field private mCheckingStatus:I

.field private mContext:Landroid/content/Context;

.field private mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mToast:Landroid/widget/Toast;

.field private mUpdateButton:Landroid/widget/LinearLayout;

.field private mUpdateButtonTv:Landroid/widget/TextView;

.field private mVersionText:Landroid/widget/TextView;

.field private ppUrl:Ljava/lang/String;

.field private progressDlgPPLink:Landroid/app/ProgressDialog;

.field private progressDlgTNCLink:Landroid/app/ProgressDialog;

.field private tncUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCheckingStatus:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->ppUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->ppUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->dismissProgressDlgPPLink()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->tncUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->tncUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->dismissProgressDlgTNCLink()V

    return-void
.end method

.method private checkForUpdatesNotCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->checkingStatus(Z)V

    return-void
.end method

.method private checkOTPAndProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOTPAndProceed: pwd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, La/a;

    invoke-direct {v0}, La/a;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, La/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "pwd is correct"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    const-class p2, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string p2, "pwd is ! correct"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string p2, "Wrong password!"

    .line 9
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private checkPasswordAndProceed(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPasswordAndProceed: pwd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cmctest"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Pwd is correct"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "cmcui"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string p1, "Sim Check Skipped !! "

    .line 8
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v1, 0x6d

    invoke-static {p1, v1, v0}, Lcom/samsung/android/cmcsettings/utils/MdecUIStateUtil;->putInt(Landroid/content/ContentResolver;II)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Pwd is ! correct"

    invoke-static {p1, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Wrong password!"

    .line 11
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private checkingStatus(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkingStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private declared-synchronized dismissProgressDlgPPLink()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgPPLink start!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to progressDlgPPLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    .line 6
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgPPLink end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgPPLink null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissProgressDlgTNCLink()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgTNCLink start!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to progressDlgTNCLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    .line 6
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgTNCLink end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "progressDlgTNCLink null"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/PackageManagerUtil;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showPasswordDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    const-string v1, "aboutPageDialogTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/AboutPageBaseDialogFragment;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v2}, Landroidx/fragment/app/k;->e()I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method

.method private showToastPopup(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkForUpdatesCompleted(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForUpdatesCompleted: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCheckingStatus:I

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->checkingStatus(Z)V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mVersionText:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f0f012c

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 5
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkForUpdatesCompleted: default"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v0, 0x7f0f012e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkForUpdatesCompleted: RESULT_CODE_NO_NETWORK"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/samsung/android/cmcsettings/utils/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButtonTv:Landroid/widget/TextView;

    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkForUpdatesCompleted: RESULT_CODE_UPDATE_AVAILABLE"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v0, 0x7f0f00a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButtonTv:Landroid/widget/TextView;

    const v0, 0x7f0f0124

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method getViewID()I
    .locals 1

    const/16 v0, 0x73

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result v0

    const/16 v1, 0x73

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    return-void
.end method

.method public onCheckOTPAndProceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->checkOTPAndProceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckPasswordAndProceed(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->checkPasswordAndProceed(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090007

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const v0, 0x7f09000f

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const v0, 0x7f0c0013

    const/16 v3, 0x11

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v5

    const/16 v6, 0x1c1a

    invoke-static {p1, v5, v6}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onClick(): T&C"

    invoke-static {p1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    if-nez p1, :cond_4

    .line 6
    invoke-static {p0, v4, v4, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    .line 7
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 10
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgTNCLink:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setContentView(I)V

    const-string p1, "http://static.bada.com/contents/legal/global/default/general.html"

    .line 11
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->tncUrl:Ljava/lang/String;

    .line 12
    new-instance p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$UrlTask;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->tncUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    .line 15
    :pswitch_1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onClick(): PP"

    invoke-static {p1, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v5

    const/16 v6, 0x1c1b

    invoke-static {p1, v5, v6}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 17
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    if-nez p1, :cond_4

    .line 18
    invoke-static {p0, v4, v4, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    .line 19
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 20
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 22
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->progressDlgPPLink:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setContentView(I)V

    const-string p1, "https://static.bada.com/contents/legal/global/default/globalpp.html"

    .line 23
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->ppUrl:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$PPUrlTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity$PPUrlTask;-><init>(Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;)V

    new-array v0, v2, [Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->ppUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    .line 27
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v0

    const/16 v1, 0x1c1c

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 28
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): Open Source Licences"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 30
    const-class v0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 32
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v0

    const/16 v3, 0x1c19

    invoke-static {p1, v0, v3}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 34
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): Update button"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCheckingStatus:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 36
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): Update button: RESULT_CODE_NO_NETWORK"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ConnectivityUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 38
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): Update button: RESULT_CODE_NO_NETWORK: Show toast"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->setIsRetry(Z)V

    const p1, 0x7f0f00a3

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->showToastPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): Update button: RESULT_CODE_NO_NETWORK: else of show toast"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButtonTv:Landroid/widget/TextView;

    const v0, 0x7f0f0124

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    invoke-static {v2}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->setIsRetry(Z)V

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->checkForUpdatesNotCompleted()V

    .line 46
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->setCheckForUpdate(ZZ)V

    goto :goto_0

    .line 47
    :cond_2
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): Update button: else of RESULT_CODE_NO_NETWORK"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->setIsRetry(Z)V

    .line 49
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/CheckForUpdates;->jumpToSamsungApps()V

    goto :goto_0

    .line 50
    :cond_3
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onClick(): App name text view"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 52
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 53
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Clicked 10 times"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->showPasswordDialog()V

    .line 55
    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick(): mCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09000b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0c0009

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->setContentView(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    const-string v1, "status"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCheckingStatus:I

    .line 5
    :cond_0
    iput-object p0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f09018a

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, ""

    .line 10
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a;->x(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->v(Z)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->t(Z)V

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_1
    const p1, 0x7f090011

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mVersionText:Landroid/widget/TextView;

    const v1, 0x7f0f012c

    new-array v2, v0, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090009

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const p1, 0x7f090007

    .line 17
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09000f

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 22
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090010

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mUpdateButtonTv:Landroid/widget/TextView;

    const p1, 0x7f09000d

    .line 25
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0f011b

    .line 26
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09000c

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0f00b6

    .line 29
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09000b

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0f00a9

    .line 32
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04020f

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_2

    .line 37
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Set background color"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2
    const p1, 0x7f090012

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f09018d

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09005b

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v3, v1

    double-to-int v3, v3

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-eqz p1, :cond_3

    .line 44
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const-wide v5, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v1, v5

    double-to-int p1, v1

    if-eqz v0, :cond_4

    .line 45
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/ScreenConfigUtil;->isLandscapeMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f09000a

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 48
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-double v1, v4

    const-wide v3, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 49
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onItemSelected(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onOOBESetOff()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f09000e

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v0

    const/16 v1, 0x1c18

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 4
    sget-object p1, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, " onOptionsItemSelected app info"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "launcherapps"

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    :cond_1
    return v2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->getViewID()I

    move-result v0

    const/16 v1, 0x1bf9

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/samsung/android/cmcsettings/utils/ViewUtils;->getViewID(Landroid/content/Context;Ljava/lang/Boolean;)I

    move-result p1

    const/16 v0, 0x73

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/samsunganalytics/MdecAnalytics;->sendFlowLog(II)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->mCheckingStatus:I

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/AboutPageActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onStop()V

    return-void
.end method
