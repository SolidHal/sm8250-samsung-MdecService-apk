.class Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;
.super Ljava/lang/Object;
.source "PreciseAlarmManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private msg:Landroid/os/Message;

.field private timeout:J


# direct methods
.method public constructor <init>(Landroid/os/Message;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    .line 3
    iput-wide p2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->timeout:J

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->timeout:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->timeout:J

    iget-wide v2, p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->timeout:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->compareTo(Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    if-nez v2, :cond_4

    .line 4
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 5
    :cond_4
    iget v3, v2, Landroid/os/Message;->what:I

    iget-object v4, p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne v2, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/PreciseAlarmManager$DelayedMessage;->msg:Landroid/os/Message;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method
