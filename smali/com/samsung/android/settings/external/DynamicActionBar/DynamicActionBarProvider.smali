.class public abstract Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;
.super Landroid/content/ContentProvider;
.source "DynamicActionBarProvider.java"


# static fields
.field public static final EXTRA_ACTION_ERROR:Ljava/lang/String; = "action_error"

.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final META_DATA_ACTION_BUTTON:Ljava/lang/String; = "com.android.settings.actionbutton"

.field public static final META_DATA_ACTION_BUTTON_URI:Ljava/lang/String; = "com.android.settings.action_button_uri"

.field public static final META_DATA_ACTION_URI:Ljava/lang/String; = "com.android.settings.action_uri"

.field public static final META_DATA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings.category"

.field public static final META_DATA_KEYHINT:Ljava/lang/String; = "com.android.settings.keyhint"

.field public static final META_DATA_KEY_ORDER:Ljava/lang/String; = "com.android.settings.order"

.field public static final META_DATA_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final META_DATA_TITLE_URI:Ljava/lang/String; = "com.android.settings.title_uri"

.field public static final METHOD_GET_DATA:Ljava/lang/String; = "getTitle"

.field public static final METHOD_GET_DYNAMIC_ACTION_BUTTON:Ljava/lang/String; = "getDynamicActionButton"

.field public static final METHOD_GET_DYNAMIC_TITLE:Ljava/lang/String; = "getDynamicTitle"

.field public static final METHOD_ON_ACTION_BUTTON_CLICKED:Ljava/lang/String; = "onActionButtonClicked"

.field private static final TAG:Ljava/lang/String; = "DynamicTitleProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private final mControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mControllerMap:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private onActionButtonClicked(Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->onActionButtonClicked()Z

    move-result p1

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "action_error"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mAuthority:Ljava/lang/String;

    const-string v1, "DynamicTitleProvider"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-string v2, "com.android.settings.keyhint"

    .line 2
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v1

    .line 3
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "getTitle"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mDataList:Ljava/util/ArrayList;

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :cond_1
    return-object v1

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mControllerMap:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;

    if-nez p3, :cond_3

    return-object v1

    :cond_3
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "getDynamicActionButton"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "onActionButtonClicked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "getDynamicTitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v6

    :cond_4
    :goto_1
    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_5

    .line 8
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->onActionButtonClicked(Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Uri format: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    instance-of p1, p3, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionButton;

    if-eqz p1, :cond_8

    .line 11
    check-cast p3, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionButton;

    .line 12
    invoke-interface {p3}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionButton;->getDynamicActionButton()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.actionbutton"

    .line 13
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_7
    instance-of p1, p3, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicTitle;

    if-eqz p1, :cond_8

    .line 15
    check-cast p3, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicTitle;

    .line 16
    invoke-interface {p3}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicTitle;->getDynamicTitle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.title"

    .line 17
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v0

    .line 18
    :cond_9
    invoke-virtual {p3}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7d044c31 -> :sswitch_3
        -0x268ca60 -> :sswitch_2
        0x22bfbbb1 -> :sswitch_1
        0x7531c8a2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract createDynamicActionBarControllers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;",
            ">;"
        }
    .end annotation
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
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

.method public onCreate()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->createDynamicActionBarControllers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;

    .line 4
    invoke-virtual {v1}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mControllerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->setAuthority(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mControllerMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarProvider;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/external/DynamicActionBar/DynamicActionBarController;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is duplicated by: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key cannot be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    return v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
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
