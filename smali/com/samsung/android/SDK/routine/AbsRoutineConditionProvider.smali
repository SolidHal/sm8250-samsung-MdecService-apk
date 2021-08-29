.class public abstract Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;
.super Landroid/content/ContentProvider;
.source "AbsRoutineConditionProvider.java"


# static fields
.field protected static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static notifyConditionChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget-object v1, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, -0x1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "isValid"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "isSupport"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "onEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "isSatisfied"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string v3, "onDisabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "getSDKVersionCode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v3, "getLabelParam"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "tag"

    .line 5
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "return"

    const/16 p2, 0x4e20

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    monitor-exit v1

    return-object v0

    :pswitch_1
    const-string p1, "tag"

    .line 8
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "return"

    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->isSupport(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    monitor-exit v1

    return-object v0

    :pswitch_2
    const-string p1, "tag"

    .line 11
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param"

    .line 12
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "is_negative"

    .line 13
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    const-string v2, "return"

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->isValid(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    monitor-exit v1

    return-object v0

    :pswitch_3
    const-string p1, "tag"

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param"

    .line 17
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "is_negative"

    .line 18
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "label_params"

    .line 20
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    monitor-exit v1

    return-object v0

    :pswitch_4
    const-string v0, "tag"

    .line 22
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "param"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->onDisabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_5
    const-string v0, "tag"

    .line 23
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "param"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->onEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_6
    const-string p1, "tag"

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "param"

    .line 25
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "is_negative"

    .line 26
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    const-string v2, "return"

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineConditionProvider;->isSatisfied(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    monitor-exit v1

    return-object v0

    .line 29
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74ec6611 -> :sswitch_6
        -0x7278b8bf -> :sswitch_5
        -0x4abfa285 -> :sswitch_4
        -0x10aea9d8 -> :sswitch_3
        -0x104a739e -> :sswitch_2
        0x6ee3c745 -> :sswitch_1
        0x7b953cf2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract isSatisfied(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public isSupport(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onDisabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
