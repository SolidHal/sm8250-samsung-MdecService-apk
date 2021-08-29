.class public Lc/e/a/a/a/a/c/c;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# direct methods
.method public static A(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pollingInterval"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static B(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "REST_IDENTIFIER"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uploadFileErrorCode"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uploadFileServiceVersion"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static E(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uploadFileValue"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "version"

    const-string v1, "0"

    .line 1
    invoke-static {p0, v0, v1}, Lc/e/a/a/a/a/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "JWT_TOKEN"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lc/e/a/a/a/a/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 3

    const-string v0, "lastPDUpdatedTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lc/e/a/a/a/a/c/c;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "needed_version"

    const-string v1, "0"

    .line 1
    invoke-static {p0, v0, v1}, Lc/e/a/a/a/a/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "version_info_url"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "pollingInterval"

    const-string v1, "1"

    .line 1
    invoke-static {p0, v0, v1}, Lc/e/a/a/a/a/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "REST_IDENTIFIER"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lc/e/a/a/a/a/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->E(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->D(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->C(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->w(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->u(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    const-string v0, "REST_IDENTIFIER"

    .line 1
    invoke-static {p0, v0}, Lc/e/a/a/a/a/c/c;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "maxFileCount"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "maxFileSize"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "uploadFile"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static q(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "DIAGMON_PREFERENCE"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - value is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/a/a;->a(Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "DIAGMON_PREFERENCE"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "JWT_TOKEN"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "lastPDUpdatedTime"

    .line 1
    invoke-static {p0, v0, p1, p2}, Lc/e/a/a/a/a/c/c;->q(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "maxFileCountValue"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "maxFileSizeErrorCode"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "maxFileSizeServiceVersion"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "maxFileSizeValue"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "needed_version"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "version_info_url"

    .line 1
    invoke-static {p0, v0, p1}, Lc/e/a/a/a/a/c/c;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
