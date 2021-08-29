.class Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$1;
.super Ljava/lang/Object;
.source "ServerAddressEditDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$1;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$1;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->access$000(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$1;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;->access$000(Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
