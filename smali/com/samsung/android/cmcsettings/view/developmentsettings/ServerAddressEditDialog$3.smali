.class Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$3;
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
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$3;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
