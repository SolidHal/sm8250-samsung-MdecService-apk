.class public Lcom/samsung/android/mdecservice/nms/util/AlarmTimer;
.super Ljava/lang/Object;
.source "AlarmTimer.java"


# static fields
.field private static final BUILD_VERSION_CODE_JELLY_BEAN_MR2:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "AlarmTimer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/app/PendingIntent;J)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmTimer"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    const-class v0, Landroid/app/AlarmManager;

    const-string v2, "setExact"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/app/PendingIntent;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v7

    aput-object p1, v2, v1

    .line 8
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 11
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "InvocationTargetException caught while invoking setExact()"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    .line 14
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "IllegalAccessException caught while invoking setExact()"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "IllegalArgumentException caught while invoking setExact()"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 19
    new-instance p1, Ljava/lang/RuntimeException;

    .line 20
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "NoSuchMethodException caught while invoking setExact()"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static stop(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmTimer"

    invoke-static {v1, v0}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
