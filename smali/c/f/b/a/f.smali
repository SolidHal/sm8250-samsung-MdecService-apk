.class public final Lc/f/b/a/f;
.super Ljava/lang/Object;
.source "MailLogger.java"


# instance fields
.field private final a:Ljava/util/logging/Logger;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lc/f/b/a/f;->f(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lc/f/b/a/f;->a:Ljava/util/logging/Logger;

    .line 4
    iput-object p2, p0, Lc/f/b/a/f;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lc/f/b/a/f;->c:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object p4, p0, Lc/f/b/a/f;->d:Ljava/io/PrintStream;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/f/b/a/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/f/b/a/f;->d:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc/f/b/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/f/b/a/f;->d:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b()Ljava/lang/StackTraceElement;
    .locals 5

    .line 1
    const-class v0, Lc/f/b/a/f;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, v1, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3}, Lc/f/b/a/f;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 7
    aget-object v3, v1, v2

    .line 8
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-direct {p0, v4}, Lc/f/b/a/f;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    const-string v4, "log"

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-class v0, Lc/f/b/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private f(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public c(Ljava/util/logging/Level;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/f/b/a/f;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/f/b/a/f;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lc/f/b/a/f;->c:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", THROW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/f/b/a/f;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/f/b/a/f;->d:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lc/f/b/a/f;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/f/b/a/f;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lc/f/b/a/f;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lc/f/b/a/f;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
