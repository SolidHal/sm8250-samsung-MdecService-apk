.class final Lcom/samsung/android/mdeccommon/log/SimpleEventLog$1;
.super Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;
.source "SimpleEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdeccommon/log/SimpleEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;-><init>(Lcom/samsung/android/mdeccommon/log/SimpleEventLog$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$1;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method
