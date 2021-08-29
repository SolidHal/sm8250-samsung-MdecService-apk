.class Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "SimpleEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdfThreadLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/text/SimpleDateFormat;",
        ">",
        "Ljava/lang/ThreadLocal<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy HH:mm:ss.SSS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdeccommon/log/SimpleEventLog$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormatLength()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method
