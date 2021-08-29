.class final Lcom/samsung/android/mdeccommon/log/SimpleEventLog$2;
.super Ljava/lang/Object;
.source "SimpleEventLog.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->access$100()Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->access$100()Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;->getFormatLength()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->access$100()Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog;->access$100()Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mdeccommon/log/SimpleEventLog$SdfThreadLocal;->getFormatLength()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method
