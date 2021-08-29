.class Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$1;
.super Landroid/database/ContentObserver;
.source "MdecEventListenerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCMCOOBEObserver: selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$100(Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/cmcsettings/utils/CMCDatabaseHelper;->isOOBEset(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mOOBEChangeObserver : finish"

    invoke-static {p1, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity$1;->this$0:Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/cmcsettings/view/MdecEventListenerActivity;->onOOBESetOff()V

    :cond_0
    return-void
.end method
