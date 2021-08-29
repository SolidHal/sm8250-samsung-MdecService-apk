.class Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;
.super Ljava/lang/Object;
.source "ServerAddressEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    iget-object p1, p1, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->serverAddrEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed acsAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DEFAULT_ACS"

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACS address db update success"

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACS address db fail. try to insert"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/mdecservice/entitlement/provider/EntitlementContract$DefaultAcs;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$2;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
