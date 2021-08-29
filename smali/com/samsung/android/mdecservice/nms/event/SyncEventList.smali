.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventList;
.super Ljava/lang/Object;
.source "SyncEventList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventList$EventType;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventList$EventTo;
    }
.end annotation


# instance fields
.field private mEventTo:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field mSyncEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->mEventTo:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->mEventType:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->mSyncEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getEventTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->mEventTo:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncEventList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventList;->mSyncEventList:Ljava/util/ArrayList;

    return-object v0
.end method
