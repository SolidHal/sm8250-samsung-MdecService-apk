.class public Lcom/samsung/android/mdeccommon/log/PayloadTimeLog;
.super Lcom/samsung/android/mdeccommon/log/TimeLog;
.source "PayloadTimeLog.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PayloadTimeLog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdeccommon/log/TimeLog;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColumnResults()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/mdeccommon/log/Label;->APP_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/mdeccommon/log/Label;->UPLOAD_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4
    iget-object v2, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/mdeccommon/log/Label;->NMS_NOTIFY:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 5
    iget-object v3, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v4, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_REQUEST:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 6
    iget-object v4, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v5, Lcom/samsung/android/mdeccommon/log/Label;->PAYLOAD_GET_RESPONSE:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 7
    iget-object v5, p0, Lcom/samsung/android/mdeccommon/log/TimeLog;->mSplitValues:Ljava/util/Map;

    sget-object v6, Lcom/samsung/android/mdeccommon/log/Label;->APP_INTENT:Lcom/samsung/android/mdeccommon/log/Label;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v6, v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
