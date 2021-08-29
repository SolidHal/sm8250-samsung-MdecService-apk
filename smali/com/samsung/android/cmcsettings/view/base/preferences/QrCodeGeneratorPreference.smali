.class public Lcom/samsung/android/cmcsettings/view/base/preferences/QrCodeGeneratorPreference;
.super Landroidx/preference/Preference;
.source "QrCodeGeneratorPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsettings/view/base/preferences/QrCodeGeneratorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cmcsettings/view/base/preferences/QrCodeGeneratorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0c0048

    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private getViewID()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    const v0, 0x7f09006c

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/base/preferences/QrCodeGeneratorPreference;->getViewID()I

    move-result v0

    sget v1, Lcom/samsung/android/cmcsettings/utils/SAConstant;->cmc_main_sd_qr_code_preference:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/cmcsettings/utils/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v0, "QRCodeGeneratorDialogTag"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->e()I

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/cmcsettings/view/dialogFragments/QrCodeGeneratorBaseDialogFragment;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/k;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    invoke-virtual {v1}, Landroidx/fragment/app/k;->e()I

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->getSupportFragmentManager()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/h;->c()Z

    :goto_0
    return-void
.end method
