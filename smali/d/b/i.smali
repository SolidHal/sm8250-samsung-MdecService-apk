.class public Ld/b/i;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# instance fields
.field private b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Ld/b/i;->b:Ljava/lang/Exception;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/b/i;->b:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld/b/i;->b:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, ";\n  nested exception is:\n\t"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    instance-of v0, v1, Ld/b/i;

    if-eqz v0, :cond_2

    .line 7
    check-cast v1, Ld/b/i;

    .line 8
    invoke-direct {v1}, Ld/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-object v1, v1, Ld/b/i;->b:Ljava/lang/Exception;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
