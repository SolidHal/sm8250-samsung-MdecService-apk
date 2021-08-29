.class Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder$1;
.super Landroid/content/BroadcastReceiver;
.source "CallLogQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder$1;->this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received UpsmEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder$1;->this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;

    const-string v0, "ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;->access$100(Lcom/samsung/android/mdecservice/nms/querybuilder/CallLogQueryBuilder;[Ljava/lang/String;)V

    return-void
.end method
