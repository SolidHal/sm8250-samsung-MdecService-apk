.class public abstract Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;
.super Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;
.source "SecSearchIndexablesProvider.java"


# static fields
.field private static final SEC_EXTRA_KEY_FINGERPRINT:Ljava/lang/String; = "key_fingerprint"

.field private static final SEC_EXTRA_KEY_VERSION:Ljava/lang/String; = "key_version"

.field private static final SEC_MATCH_NON_INDEXABLE_KEYS_CODE:I = 0x12c

.field private static final SEC_MATCH_VARIABLE_RAW_DATA_CODE:I = 0x12d

.field private static final SEC_METHOD_GET_FINGERPRINT:Ljava/lang/String; = "secGetFingerprint"

.field private static final SEC_METHOD_GET_PROVIDER_VERSION:Ljava/lang/String; = "secGetVersion"

.field private static final SEC_SETTING_SEARCH_VERSION:I = 0x1


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->secQueryGetFingerprint()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/content/UriMatcher;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 5
    iget-object p2, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const/16 v0, 0x12d

    const-string v1, "sec_settings/sec_variable_raw_data"

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    const/16 v0, 0x12c

    const-string v1, "sec_settings/sec_non_indexables_key"

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "secQueryGetFingerprint must implement"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7408802d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x46cf565f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "secGetFingerprint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "secGetVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p3, :cond_4

    .line 3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4
    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_version"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_5
    if-nez p3, :cond_6

    .line 5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 6
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->secQueryGetFingerprint()Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_fingerprint"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "vnd.android.cursor.dir/sec_variable_raw_data"

    return-object p1

    :cond_1
    const-string p1, "vnd.android.cursor.dir/sec_non_indexables_key"

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->secQueryVariableRawData([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p3, v2

    .line 9
    :cond_3
    invoke-virtual {p0, v2, p3}, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;->secQueryNonIndexableKeys([Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic querySiteMapPairs()Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;->querySiteMapPairs()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic querySliceUriPairs()Landroid/database/Cursor;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;->querySliceUriPairs()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract secQueryGetFingerprint()Ljava/lang/String;
.end method

.method public secQueryNonIndexableKeys([Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/provider/SearchIndexablesProvider;->queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public secQueryVariableRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
