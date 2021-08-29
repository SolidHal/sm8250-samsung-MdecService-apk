.class public abstract Lcom/samsung/android/settings/external/ExternalSettingsProvider;
.super Landroid/content/ContentProvider;
.source "ExternalSettingsProvider.java"


# static fields
.field public static final EXTRA_MENU:Ljava/lang/String; = "menu"

.field public static final EXTRA_MENU_LIST:Ljava/lang/String; = "menu_list"

.field public static final EXTRA_MENU_SUMMARY:Ljava/lang/String; = "menu_summary"

.field public static final METHOD_CHECKED_CHANGE:Ljava/lang/String; = "checked_change"

.field public static final METHOD_GET_MENU_LIST:Ljava/lang/String; = "get_menu_list"

.field public static final METHOD_GET_MENU_SUMMARY:Ljava/lang/String; = "get_menu_summary"

.field public static final METHOD_SELECT_MENU:Ljava/lang/String; = "select_menu"

.field public static final TAG:Ljava/lang/String; = "ExternalSettingsProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMenuBuilderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/external/DynamicMenuData;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryOrder:I

.field private mSummaryResID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mMenuBuilderMap:Ljava/util/HashMap;

    return-void
.end method

.method private makeUriWithKey(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private updateTextResource(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected addMenuData(Lcom/samsung/android/settings/external/DynamicMenuData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mMenuBuilderMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "get_menu_list"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mMenuBuilderMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/external/DynamicMenuData;

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/settings/external/DynamicMenuData;->updateTextResource(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 7
    const-class p3, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p3, "menu_list"

    .line 8
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p2

    :cond_1
    const-string v0, "select_menu"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "menu"

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mMenuBuilderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/external/DynamicMenuData;->updateTextResource(Landroid/content/Context;)V

    .line 12
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 13
    const-class p2, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1

    :cond_2
    const-string v0, "checked_change"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    const-class v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/external/DynamicMenuData;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->onCheckedChanged(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->makeUriWithKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_3
    const-string v0, "get_menu_summary"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget v0, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mSummaryResID:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->updateTextResource(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    new-instance v1, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;

    invoke-direct {v1}, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;-><init>()V

    iget v2, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mSummaryOrder:I

    .line 24
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->setOrder(I)Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/settings/external/DynamicSummaryData$Builder;->build()Lcom/samsung/android/settings/external/DynamicSummaryData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-class p2, Lcom/samsung/android/settings/external/DynamicSummaryData;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "menu_summary"

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1

    .line 30
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getMenuData(Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mMenuBuilderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/external/DynamicMenuData;

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

.method protected abstract onCheckedChanged(Ljava/lang/String;Z)Z
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->onCreateData()V

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onCreateData()V
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected reportDataChange(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->makeUriWithKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected setMenuSummary(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mSummaryOrder:I

    .line 2
    iput p2, p0, Lcom/samsung/android/settings/external/ExternalSettingsProvider;->mSummaryResID:I

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
