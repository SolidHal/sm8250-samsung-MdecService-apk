.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;
.super Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.source "SyncEventCalllog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SyncEventCalllog"


# instance fields
.field private mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

.field private mCallLogAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mCallLogAttributeList:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mId:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mIdList:Ljava/util/List;

    .line 5
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    .line 6
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mCallLogAttributeList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mCallLogAttributeList:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mId:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;->mIdList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mIdList:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "build "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncEventCalllog"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCallLogAttribute()Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Attr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mCallLogAttribute:Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;

    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/nms/attribute/CallLogAttribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncEventCalllog [mEventTo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestReason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventCalllog;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mEventType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mResourceUrl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mResourceUrlList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCorrelationTag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMinDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
