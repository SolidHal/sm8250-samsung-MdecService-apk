.class Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$4;
.super Ljava/lang/Object;
.source "ServerAddressEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$4;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog$4;->this$0:Lcom/samsung/android/cmcsettings/view/developmentsettings/ServerAddressEditDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
