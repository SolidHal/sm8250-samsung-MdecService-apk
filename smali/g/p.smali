.class final Lg/p;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static a:Lg/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lg/o;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg/o;->f:Lg/o;

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/o;->g:Lg/o;

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lg/o;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class v0, Lg/p;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-wide v1, Lg/p;->b:J

    const-wide/16 v3, 0x2000

    add-long/2addr v1, v3

    const-wide/32 v5, 0x10000

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    monitor-exit v0

    return-void

    .line 5
    :cond_1
    sget-wide v1, Lg/p;->b:J

    add-long/2addr v1, v3

    sput-wide v1, Lg/p;->b:J

    .line 6
    sget-object v1, Lg/p;->a:Lg/o;

    iput-object v1, p0, Lg/o;->f:Lg/o;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lg/o;->c:I

    iput v1, p0, Lg/o;->b:I

    .line 8
    sput-object p0, Lg/p;->a:Lg/o;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static b()Lg/o;
    .locals 6

    .line 1
    const-class v0, Lg/p;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lg/p;->a:Lg/o;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lg/p;->a:Lg/o;

    .line 4
    iget-object v2, v1, Lg/o;->f:Lg/o;

    sput-object v2, Lg/p;->a:Lg/o;

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lg/o;->f:Lg/o;

    .line 6
    sget-wide v2, Lg/p;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lg/p;->b:J

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lg/o;

    invoke-direct {v0}, Lg/o;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
