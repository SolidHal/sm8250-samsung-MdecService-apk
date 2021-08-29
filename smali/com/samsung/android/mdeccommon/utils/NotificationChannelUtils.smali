.class public Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;
.super Ljava/lang/Object;
.source "NotificationChannelUtils.java"


# static fields
.field public static final DATA_CHANGE_NOTIFICATION_ID:I = 0x1343b16

.field public static final DEVICE_CONNECTED_NOTIFICATION_ID:I = 0x1343b14

.field public static final FOREGROUND_SERVICE_NOTIFICATION_ID:I = 0x1343b18

.field public static final NOTIFICATION_CHANNEL_CATEGORY_GENERAL:Ljava/lang/String; = "notification_channel_category_general"

.field public static final ROAMING_NOTIFICATION_ID:I = 0x1343b13

.field public static final SA_AUTHENTICATION_NOTIFICATION_ID:I = 0x1343b15

.field public static final SA_SIGNIN_COMPLETED_NOTIFICATION_ID:I = 0x1343b17

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAllChannels(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    const-string v1, "createAllChannels"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->deleteOldChannels(Landroid/content/Context;)V

    const-string v0, "notification_channel_category_general"

    const/4 v1, 0x3

    .line 3
    invoke-static {p0, v0, v1}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static createChannelIfNotExist(Landroid/content/Context;)V
    .locals 3

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    const-string v1, "notification_channel_category_general"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    const-string v2, "notification channel not exist"

    invoke-static {v0, v2}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 4
    invoke-static {p0, v1, v0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    const-string v0, "notification channel exist"

    invoke-static {p0, v0}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static createNotificationChannel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->getChannelInfo(Ljava/lang/String;)Lb/f/j/d;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v1, v1, Lb/f/j/d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p1, p0, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 5
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v2, p0, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v2, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 p0, 0x0

    .line 7
    invoke-virtual {v2, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method private static deleteOldChannels(Landroid/content/Context;)V
    .locals 3

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 4
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_channel_category_general"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static dismissAllNotifications(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    const-string v1, "dismissAllNotifications"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method private static getChannelInfo(Ljava/lang/String;)Lb/f/j/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lb/f/j/d<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x580d1337

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "notification_channel_category_general"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    const p0, 0x7f0f007f

    :goto_2
    if-eq p0, v1, :cond_3

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lb/f/j/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/f/j/d;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized postNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createChannelIfNotExist(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/core/app/k;->a(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/core/app/h$c;

    const-string v3, "notification_channel_category_general"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 6
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "extra_reason_cmcopen"

    const-string v5, "SETTINGS"

    .line 7
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 8
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0e0002

    .line 9
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->u(I)Landroidx/core/app/h$c;

    const v4, 0x7f060017

    .line 10
    invoke-static {p0, v4}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->h(I)Landroidx/core/app/h$c;

    const/4 p0, 0x1

    .line 11
    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->e(Z)Landroidx/core/app/h$c;

    new-instance v4, Landroidx/core/app/h$b;

    invoke-direct {v4}, Landroidx/core/app/h$b;-><init>()V

    .line 12
    invoke-virtual {v4, p1}, Landroidx/core/app/h$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->w(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    .line 13
    invoke-virtual {v2, p1}, Landroidx/core/app/h$c;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 14
    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->t(Z)Landroidx/core/app/h$c;

    .line 15
    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x1343b17

    .line 17
    invoke-virtual {v2}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v2

    .line 18
    invoke-virtual {v1, p0, p1, v2}, Landroidx/core/app/k;->d(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized postNotificationForDataSettingChange(Landroid/content/Context;ZI)V
    .locals 8

    const-class v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createChannelIfNotExist(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/core/app/k;->a(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/core/app/h$c;

    const-string v3, "notification_channel_category_general"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_reason_cmcopen"

    const-string v5, "SIM_DATA_CHANGE_NOTI"

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 7
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->e(Z)Landroidx/core/app/h$c;

    const/4 v6, -0x1

    .line 9
    invoke-virtual {v2, v6}, Landroidx/core/app/h$c;->l(I)Landroidx/core/app/h$c;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/core/app/h$c;->z(J)Landroidx/core/app/h$c;

    const v6, 0x7f0e0002

    .line 11
    invoke-virtual {v2, v6}, Landroidx/core/app/h$c;->u(I)Landroidx/core/app/h$c;

    const v6, 0x7f060017

    .line 12
    invoke-static {p0, v6}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/core/app/h$c;->h(I)Landroidx/core/app/h$c;

    .line 13
    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const-string p1, "SIM1"

    goto :goto_0

    :cond_0
    const-string p1, "SIM2"

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f0127

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/core/app/h$c;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    new-instance p2, Landroidx/core/app/h$b;

    invoke-direct {p2}, Landroidx/core/app/h$b;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v4

    const v7, 0x7f0f00f8

    .line 16
    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p2, v3}, Landroidx/core/app/h$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    invoke-virtual {v2, p2}, Landroidx/core/app/h$c;->w(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v4

    invoke-virtual {p0, v7, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0126

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/h$c;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    new-instance p1, Landroidx/core/app/h$b;

    invoke-direct {p1}, Landroidx/core/app/h$b;-><init>()V

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0f00f9

    .line 21
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroidx/core/app/h$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    invoke-virtual {v2, p1}, Landroidx/core/app/h$c;->w(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    :goto_1
    const p0, 0x1343b16

    .line 26
    invoke-virtual {v2}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroidx/core/app/k;->c(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized postNotificationForDeviceConnected(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-class v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createChannelIfNotExist(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/core/app/k;->a(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/core/app/h$c;

    const-string v3, "notification_channel_category_general"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 6
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v5, 0x7f0e0002

    .line 7
    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->u(I)Landroidx/core/app/h$c;

    const v5, 0x7f060017

    .line 8
    invoke-static {p0, v5}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->h(I)Landroidx/core/app/h$c;

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->e(Z)Landroidx/core/app/h$c;

    new-instance v6, Landroidx/core/app/h$b;

    invoke-direct {v6}, Landroidx/core/app/h$b;-><init>()V

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v4

    const v8, 0x7f0f00b1

    .line 10
    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v6, v7}, Landroidx/core/app/h$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    invoke-virtual {v2, v6}, Landroidx/core/app/h$c;->w(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 12
    invoke-virtual {p0, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 13
    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->t(Z)Landroidx/core/app/h$c;

    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x1343b14

    .line 15
    invoke-virtual {v2}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object p2

    .line 16
    invoke-virtual {v1, p0, p1, p2}, Landroidx/core/app/k;->d(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized postNotificationForReAuth(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createChannelIfNotExist(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/core/app/k;->a(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/core/app/h$c;

    const-string v3, "notification_channel_category_general"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_reason_cmcopen"

    const-string v5, "SETTINGS"

    .line 6
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 7
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0e0002

    .line 8
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->u(I)Landroidx/core/app/h$c;

    const v4, 0x7f060017

    .line 9
    invoke-static {p0, v4}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->h(I)Landroidx/core/app/h$c;

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->e(Z)Landroidx/core/app/h$c;

    new-instance v5, Landroidx/core/app/h$b;

    invoke-direct {v5}, Landroidx/core/app/h$b;-><init>()V

    const v6, 0x7f0f001c

    .line 11
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v5, v7}, Landroidx/core/app/h$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->w(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    .line 13
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 15
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->t(Z)Landroidx/core/app/h$c;

    .line 16
    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    const p0, 0x1343b15

    .line 17
    invoke-virtual {v2}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroidx/core/app/k;->c(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized postNotificationForRoaming(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createChannelIfNotExist(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/core/app/k;->a(Landroid/content/Context;)Landroidx/core/app/k;

    move-result-object v1

    .line 3
    new-instance v2, Landroidx/core/app/h$c;

    const-string v3, "notification_channel_category_general"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.samsung.android.cmcsettings.view.CMCMainActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 6
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0e0002

    .line 7
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->u(I)Landroidx/core/app/h$c;

    const v4, 0x7f060017

    .line 8
    invoke-static {p0, v4}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->h(I)Landroidx/core/app/h$c;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->e(Z)Landroidx/core/app/h$c;

    new-instance v5, Landroidx/core/app/h$b;

    invoke-direct {v5}, Landroidx/core/app/h$b;-><init>()V

    const v6, 0x7f0f00c2

    .line 10
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/h$b;->g(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    .line 11
    invoke-virtual {v2, v5}, Landroidx/core/app/h$c;->w(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    .line 12
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/h$c;->j(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 13
    invoke-virtual {v2, v4}, Landroidx/core/app/h$c;->t(Z)Landroidx/core/app/h$c;

    .line 14
    invoke-virtual {v2, v3}, Landroidx/core/app/h$c;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v3, 0x1343b13

    .line 16
    invoke-virtual {v2}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v2

    .line 17
    invoke-virtual {v1, p0, v3, v2}, Landroidx/core/app/k;->d(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static postUIServiceNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->createChannelIfNotExist(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroidx/core/app/h$c;

    const-string v1, "notification_channel_category_general"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0e0002

    .line 3
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->u(I)Landroidx/core/app/h$c;

    const v1, 0x7f060017

    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->h(I)Landroidx/core/app/h$c;

    const/4 v1, -0x2

    .line 5
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->r(I)Landroidx/core/app/h$c;

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/h$c;->z(J)Landroidx/core/app/h$c;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->t(Z)Landroidx/core/app/h$c;

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v2}, Landroidx/core/app/h$c;->q(Z)Landroidx/core/app/h$c;

    .line 9
    invoke-virtual {v0, v2}, Landroidx/core/app/h$c;->p(Z)Landroidx/core/app/h$c;

    const/16 v3, 0x64

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Landroidx/core/app/h$c;->s(IIZ)Landroidx/core/app/h$c;

    const-string v3, "sys"

    .line 11
    invoke-virtual {v0, v3}, Landroidx/core/app/h$c;->f(Ljava/lang/String;)Landroidx/core/app/h$c;

    const-string v3, "CMCUIService"

    .line 12
    invoke-virtual {v0, v3}, Landroidx/core/app/h$c;->x(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 13
    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->l(I)Landroidx/core/app/h$c;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0f0112

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/h$c;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 15
    invoke-virtual {v0, v2}, Landroidx/core/app/h$c;->y(I)Landroidx/core/app/h$c;

    .line 16
    invoke-virtual {v0}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static updateAllChannels(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    const-string v1, "updateAllChannels"

    invoke-static {v0, v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 5
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v3}, Lcom/samsung/android/mdeccommon/utils/NotificationChannelUtils;->getChannelInfo(Ljava/lang/String;)Lb/f/j/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v4, v3, Lb/f/j/d;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v4, v3, Lb/f/j/d;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 10
    iget-object v3, v3, Lb/f/j/d;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_2
    return-void
.end method
