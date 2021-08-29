.class Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    iput-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog :  Ok: pwd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {v0, p2}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$900(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity$2;->this$0:Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->access$300(Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/aboutpage/DeveloperActivity;->closeKeyboard(Landroid/content/Context;)V

    return-void
.end method
