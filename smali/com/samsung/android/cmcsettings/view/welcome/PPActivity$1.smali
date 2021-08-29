.class Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;
.super Landroid/os/Handler;
.source "PPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->access$000(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->access$000(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->access$000(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->access$002(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->access$200(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;

    invoke-static {v0}, Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;->access$100(Lcom/samsung/android/cmcsettings/view/welcome/PPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
