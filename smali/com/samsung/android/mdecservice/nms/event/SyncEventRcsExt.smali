.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;
.super Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.source "SyncEventRcsExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$RelayType;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$DbRequest;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$ServerRequest;
    }
.end annotation


# instance fields
.field private mContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mFromCursor:Ljava/lang/String;

.field private mNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsEnabled:Z

.field private mRelayRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayType:Ljava/lang/String;

.field private mSearchTime:J


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Landroid/os/Parcel;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mContactList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mNumberList:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mFromCursor:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mDeviceId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mSearchTime:J

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRcsEnabled:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayRequestList:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayResponseList:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mContactList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mContactList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mNumberList:Ljava/util/List;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mFromCursor:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mDeviceId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayType:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mSearchTime:J

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRcsEnabled:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayRequestList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayResponseList:Ljava/util/List;

    .line 22
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mContactList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mContactList:Ljava/util/List;

    .line 23
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mNumberList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mNumberList:Ljava/util/List;

    .line 24
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mFromCursor:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mFromCursor:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mDeviceId:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayType:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayRequestList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayRequestList:Ljava/util/List;

    .line 28
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRelayResponseList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayResponseList:Ljava/util/List;

    .line 29
    iget-wide v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mSearchTime:J

    iput-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mSearchTime:J

    .line 30
    iget-boolean p1, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;->mRcsEnabled:Z

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRcsEnabled:Z

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/ContactCapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mContactList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromCursor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mFromCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mNumberList:Ljava/util/List;

    return-object v0
.end method

.method public getRcsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRcsEnabled:Z

    return v0
.end method

.method public getRelayRequestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayRequestList:Ljava/util/List;

    return-object v0
.end method

.method public getRelayResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsContactInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayResponseList:Ljava/util/List;

    return-object v0
.end method

.method public getRelayType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayType:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mSearchTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncEventRcsExt [mEventTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRelayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRelayType:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "rcscapa_add"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "rcscapa_update"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "rcscapa_search"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "rcscapa_delete"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "rcscapa_checkbot"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "rcscapa_check"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v3, "rcs_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mRcsEnabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mRcsEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSearchTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mSearchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNumberList="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcsExt;->mNumberList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7264979c -> :sswitch_6
        -0x2162ae86 -> :sswitch_5
        -0x1ab1fdf3 -> :sswitch_4
        -0x9655887 -> :sswitch_3
        0x102e8776 -> :sswitch_2
        0x14345a97 -> :sswitch_1
        0x5cef5993 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
