.class public Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;
.super Landroid/text/style/ClickableSpan;
.source "EulaClickSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan$PPUrlTask;,
        Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan$UrlTask;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static progressDlgLink:Landroid/app/ProgressDialog;


# instance fields
.field private bg:I

.field private ctx:Landroid/content/Context;

.field private isTNC:Z

.field private mIntent:Landroid/content/Intent;

.field private ppUrl:Ljava/lang/String;

.field private selected:Z

.field private tncUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->mIntent:Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->bg:I

    .line 4
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    .line 5
    iput-boolean p2, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->isTNC:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->tncUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->tncUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->dismissProgressDlgLink()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ppUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ppUrl:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized dismissProgressDlgLink()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismissProgressDlgLink start!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dismissProgressDlgLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    .line 6
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismissProgressDlgLink end!!"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismissProgressDlgLink null"

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


# virtual methods
.method public getBg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->bg:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: isTNC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->isTNC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    .line 3
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 4
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 6
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->progressDlgLink:Landroid/app/ProgressDialog;

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setContentView(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    .line 8
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->isTNC:Z

    const/16 v2, 0x65

    const/16 v3, 0x66

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onClick: TNC"

    invoke-static {v1, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://static.bada.com/contents/legal/global/default/general.html"

    .line 10
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->tncUrl:Ljava/lang/String;

    .line 11
    new-instance v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan$UrlTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan$UrlTask;-><init>(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;)V

    new-array v4, v0, [Ljava/lang/String;

    .line 12
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->tncUrl:Ljava/lang/String;

    aput-object v5, v4, p1

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 13
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p1

    const/16 v1, 0x1bef

    if-ne p1, v0, :cond_0

    .line 14
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    invoke-static {p1, v2, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto :goto_1

    .line 16
    :cond_1
    sget-object v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onClick: PP"

    invoke-static {v1, v4}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "https://static.bada.com/contents/legal/global/default/globalpp.html"

    .line 17
    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ppUrl:Ljava/lang/String;

    .line 18
    new-instance v1, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan$PPUrlTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan$PPUrlTask;-><init>(Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;)V

    new-array v4, v0, [Ljava/lang/String;

    .line 19
    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ppUrl:Ljava/lang/String;

    aput-object v5, v4, p1

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/Utils;->getMyDeviceType(Landroid/content/Context;)I

    move-result p1

    const/16 v1, 0x1bee

    if-ne p1, v0, :cond_2

    .line 21
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    invoke-static {p1, v2, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    invoke-static {p1, v3, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    :goto_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->selected:Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->selected:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    const v1, 0x7f0601b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 5
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/EulaClickSpan;->ctx:Landroid/content/Context;

    const v2, 0x7f0601bc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :goto_0
    return-void
.end method
