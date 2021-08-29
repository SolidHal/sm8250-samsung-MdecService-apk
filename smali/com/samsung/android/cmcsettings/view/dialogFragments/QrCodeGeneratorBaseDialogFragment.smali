.class public Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;
.super Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;
.source "QrCodeGeneratorBaseDialogFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mQrBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;-><init>()V

    return-void
.end method

.method private TextToImageEncode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Lc/b/a/e;

    invoke-direct {v0}, Lc/b/a/e;-><init>()V

    sget-object v2, Lc/b/a/a;->m:Lc/b/a/a;

    const/16 v3, 0x84

    const/16 v4, 0x84

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc/b/a/e;->a(Ljava/lang/String;Lc/b/a/a;IILjava/util/Map;)Lc/b/a/j/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lc/b/a/j/b;->f()I

    move-result v6

    .line 3
    invoke-virtual {p1}, Lc/b/a/j/b;->e()I

    move-result v7

    mul-int v0, v6, v7

    .line 4
    new-array v1, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_2

    mul-int v3, v2, v6

    move v4, v0

    :goto_2
    if-ge v4, v6, :cond_1

    add-int v5, v3, v4

    .line 5
    invoke-virtual {p1, v4, v2}, Lc/b/a/j/b;->d(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060009

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0601bd

    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v2, 0x0

    const/16 v3, 0x84

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 8
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method private getUriForQrCode()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmc://setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?said="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/utils/Utils;->getSAAccountIdForQR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/b;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "QRCodeGeneratorDialogTag"

    .line 2
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->fragmentTag:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->getUriForQrCode()Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->TextToImageEncode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->mQrBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 1
    new-instance p1, Landroidx/appcompat/app/c$a;

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/CMCBaseDialogFragment;->mContext:Landroidx/fragment/app/c;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090108

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->mQrBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x400

    mul-int/2addr v3, v4

    iget-object v5, p0, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;->mQrBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v3, v5

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f0092

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    const v0, 0x7f0f00a7

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment$1;-><init>(Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    return-object p1
.end method
