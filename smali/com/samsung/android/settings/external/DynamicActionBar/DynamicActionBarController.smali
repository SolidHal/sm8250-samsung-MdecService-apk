.class public abstract Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;
.super Ljava/lang/Object;
.source "DynamicActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
    }
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private notifyChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->mAuthority:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method getBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->getMetaData()Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;->access$000(Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;)Landroid/os/Bundle;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 4
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->mAuthority:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.keyhint"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.android.settings.action_uri"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    instance-of v2, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicTitle;

    if-eqz v2, :cond_0

    const-string v2, "com.android.settings.title_uri"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    instance-of v2, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionButton;

    if-eqz v2, :cond_1

    const-string v2, "com.android.settings.action_button_uri"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Should not return null in getMetaData()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method protected abstract getMetaData()Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController$MetaData;
.end method

.method public notifyActionButtonChanged(Landroid/content/Context;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionButton;

    if-eqz v0, :cond_0

    const-string v0, "getDynamicActionButton"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->notifyChanged(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyTitleChanged(Landroid/content/Context;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicTitle;

    if-eqz v0, :cond_0

    const-string v0, "getDynamicTitle"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->notifyChanged(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract onActionButtonClicked()Z
.end method

.method setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->mAuthority:Ljava/lang/String;

    return-void
.end method
