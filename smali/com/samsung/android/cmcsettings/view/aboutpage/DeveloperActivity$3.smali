.class Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$3;
.super Ljava/lang/Object;
.source "DeveloperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->showPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$3;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "showDialog :  Cancel"

    invoke-static {p2, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$3;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->closeKeyboard(Landroid/content/Context;)V

    return-void
.end method
