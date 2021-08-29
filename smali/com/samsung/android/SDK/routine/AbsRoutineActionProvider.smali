.class public abstract Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;
.super Landroid/content/ContentProvider;
.source "AbsRoutineActionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "isValid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "isSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "onAct"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "getCurrentParam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "getSDKVersionCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_5
    const-string v1, "getLabelParam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v7, "tag"

    const-string v8, "return"

    if-eqz v1, :cond_8

    const-string v9, "is_negative"

    const-string v10, "param"

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/16 p1, 0x4e20

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->isSupport(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->isValid(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "label_params"

    .line 17
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 18
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "is_recovery"

    .line 21
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "all_param"

    .line 22
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 23
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->onAct(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->onAct(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result p3

    if-eqz p3, :cond_7

    .line 25
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->onAct(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    .line 27
    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;->getCurrentParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x74ec6611 -> :sswitch_5
        -0x7278b8bf -> :sswitch_4
        -0x485b7ef6 -> :sswitch_3
        0x64f3233 -> :sswitch_2
        0x6ee3c745 -> :sswitch_1
        0x7b953cf2 -> :sswitch_0
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract getCurrentParam(Ljava/lang/String;)Ljava/lang/String;
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

.method public onAct(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onAct(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public onAct(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
