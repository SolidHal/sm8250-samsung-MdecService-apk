.class public Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
.super Ljava/lang/Object;
.source "SimpleEventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;
    }
.end annotation


# static fields
.field public static final EVENT_LOG:Ljava/lang/String; = "eventlog"

.field private static final INDENT:Ljava/lang/String; = "  "

.field private static sIndent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPw:Ljava/io/PrintWriter;

.field private static final sSafeSdf:Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static spLogComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CUTOFF_LINE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mEventLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShipBuild:Z

.field private mIsUseSharedPreferenceOnShip:Z

.field private mName:Ljava/lang/String;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$1;

    invoke-direct {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sSafeSdf:Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    .line 2
    new-instance v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$2;

    invoke-direct {v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$2;-><init>()V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->spLogComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sPw:Ljava/io/PrintWriter;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/samsung/android/mdeccommon/constants/BuildConstants;->isShipBuild()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsShipBuild:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    .line 12
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->CUTOFF_LINE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    .line 14
    iput-boolean p5, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsUseSharedPreferenceOnShip:Z

    .line 15
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->CUTOFF_LINE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    const-string v0, "> Service Up"

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->CUTOFF_LINE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsUseSharedPreferenceOnShip:Z

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsShipBuild:Z

    .line 6
    iput-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mSize:I

    return-void
.end method

.method static synthetic access$100()Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sSafeSdf:Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    return-object v0
.end method

.method public static cleanDump(Ljava/io/PrintWriter;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sPw:Ljava/io/PrintWriter;

    return-void
.end method

.method public static d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static decreaseIndent(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "  "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 28
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    sget-object p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sPw:Ljava/io/PrintWriter;

    if-eqz p0, :cond_2

    .line 33
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 27
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static increaseIndent(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sIndent:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static prepareDump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sPw:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsUseSharedPreferenceOnShip:Z

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsShipBuild:Z

    if-nez v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const-string v4, "eventlog"

    iget-object v5, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v1, v4, v5, v6}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->getStringSet(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 4
    iget-object v4, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    iget-object v4, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->sSafeSdf:Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mSize:I

    if-le p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsUseSharedPreferenceOnShip:Z

    if-eq p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsShipBuild:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    .line 10
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const-string v1, "eventlog"

    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, p1, v1, v3, v4}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 12
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dump(Lcom/samsung/android/mdeccommon/log/IndentingPrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsUseSharedPreferenceOnShip:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsShipBuild:Z

    if-nez v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const-string v2, "eventlog"

    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, -0x1

    invoke-static {v5, v1, v2, v3, v4}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->getStringSet(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const-string v2, "eventlog"

    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nDump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/log/IndentingPrintWriter;->increaseIndent()V

    .line 9
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    sget-object v2, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->spLogComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/mdeccommon/log/IndentingPrintWriter;->decreaseIndent()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/lang/String;)V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsUseSharedPreferenceOnShip:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mIsShipBuild:Z

    if-nez v1, :cond_2

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const-string v2, "eventlog"

    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, -0x1

    invoke-static {v5, v1, v2, v3, v4}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->getStringSet(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mContext:Landroid/content/Context;

    const-string v2, "eventlog"

    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lcom/samsung/android/mdeccommon/log/SharedPrefHelper;->remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    sget-object v2, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->spLogComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 21
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventLog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->increaseIndent(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->dump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->decreaseIndent(Ljava/lang/String;)V

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public logAndAdd(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public logAndAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mEventLog:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
