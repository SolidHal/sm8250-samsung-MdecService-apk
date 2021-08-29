.class public Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;
.super Landroid/app/Activity;
.source "ServerAddressEditDialog.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field mDialogLayout:Landroid/view/View;

.field serverAddrEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0058

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f090142

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->serverAddrEditText:Landroid/widget/EditText;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->serverAddrEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$1;-><init>(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f003c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;-><init>(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)V

    const v3, 0x7f0f0026

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$3;-><init>(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)V

    const v3, 0x7f0f0025

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 13
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 14
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 16
    new-instance v0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$4;-><init>(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)V

    .line 17
    iget-object v1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public getServerAddress()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "acs.samsungmdec.com"

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "DEFAULT_ACS"

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->createDialog()V

    return-void
.end method
