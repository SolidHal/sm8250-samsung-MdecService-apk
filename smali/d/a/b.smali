.class public abstract Ld/a/b;
.super Ljava/lang/Object;
.source "CommandMap.java"


# static fields
.field private static a:Ld/a/b;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ld/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ld/a/b;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Ld/a/b;
    .locals 4

    const-class v0, Ld/a/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ld/a/b;->a:Ld/a/b;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Ld/a/b;->a:Ld/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, Ld/a/m;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    sget-object v2, Ld/a/b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/b;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ld/a/h;

    invoke-direct {v2}, Ld/a/h;-><init>()V

    .line 6
    sget-object v3, Ld/a/b;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ld/a/c;
.end method

.method public b(Ljava/lang/String;Ld/a/f;)Ld/a/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/a/b;->a(Ljava/lang/String;)Ld/a/c;

    move-result-object p1

    return-object p1
.end method
