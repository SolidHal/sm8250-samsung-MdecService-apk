.class public Lc/f/b/a/h;
.super Ljava/lang/Object;
.source "PropUtil.java"


# direct methods
.method private static a(Ljava/lang/Object;Z)Z
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    check-cast p0, Ljava/lang/String;

    const-string p1, "false"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 3
    :cond_1
    check-cast p0, Ljava/lang/String;

    const-string p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 4
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0, p0}, Lc/f/b/a/h;->c(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc/f/b/a/h;->a(Ljava/lang/Object;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "false"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const-string v0, "true"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return p1
.end method

.method private static c(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
