.class Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$2;
.super Landroid/content/BroadcastReceiver;
.source "PreciseAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "PreciseAlarmManager"

    const-string p2, "sendMessageDelayed: get intent, get wake lock for 10secs."

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$2;->this$0:Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method
