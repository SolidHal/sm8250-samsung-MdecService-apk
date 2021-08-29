.class public Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;
.source "OpenSourceLicenseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private inflator:Landroid/view/LayoutInflater;

.field private layout:Landroidx/appcompat/app/a$a;

.field private ppContent:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mdec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;-><init>()V

    return-void
.end method

.method private readTextFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    const/16 v2, 0xa

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 9
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 10
    sget-object v1, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->setContentView(I)V

    const-string p1, "layout_inflater"

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->inflator:Landroid/view/LayoutInflater;

    .line 4
    new-instance p1, Landroidx/appcompat/app/a$a;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroidx/appcompat/app/a$a;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->layout:Landroidx/appcompat/app/a$a;

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->inflator:Landroid/view/LayoutInflater;

    const v2, 0x7f0c000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->layout:Landroidx/appcompat/app/a$a;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/a;->r(Landroid/view/View;Landroidx/appcompat/app/a$a;)V

    const v2, 0x7f090185

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f00a9

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->v(Z)V

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->t(Z)V

    .line 12
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->u(Z)V

    :cond_0
    const p1, 0x7f090115

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->ppContent:Landroid/widget/TextView;

    const-string v1, "OpenSourceAnnouncement_CallAndMessageCommunity"

    .line 14
    invoke-direct {p0, v1}, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->readTextFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04020f

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_1

    .line 18
    sget-object v0, Lcom/samsung/android/cmcsettings/view/aboutpage/OpenSourceLicenseActivity;->TAG:Ljava/lang/String;

    const-string v1, "Set background color"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseActivity;->onDestroy()V

    return-void
.end method
