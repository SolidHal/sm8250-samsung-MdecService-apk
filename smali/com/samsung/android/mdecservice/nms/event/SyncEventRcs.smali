.class public Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;
.super Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;
.source "SyncEventRcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;,
        Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$ServerRequest;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SyncEventRcs"


# instance fields
.field private mCorrelationId:Ljava/lang/String;

.field private mCorrelationIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDdmMsgObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRelay:Z

.field private mObjectId:Ljava/lang/String;

.field private mPayloadUploadStatus:Ljava/lang/String;

.field private mPayloadUrl:Ljava/lang/String;

.field private mRcsGroupAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

.field private mRcsMessageAttributeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mObjectId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mThumbnailUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUploadStatus:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationIdList:Ljava/util/List;

    .line 9
    const-class v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 10
    const-class v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttributeList:Ljava/util/List;

    .line 11
    const-class v0, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsGroupAttributeList:Ljava/util/List;

    .line 12
    const-class v0, Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mDdmMsgObjectList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;-><init>(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;)V

    .line 14
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationId:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mObjectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mObjectId:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationIdList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationIdList:Ljava/util/List;

    .line 17
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mCorrelationTagList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTagList:Ljava/util/List;

    .line 18
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mPayloadUploadStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUploadStatus:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 20
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsMessageAttributeList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttributeList:Ljava/util/List;

    .line 21
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mRcsGroupInfoAttributeList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsGroupAttributeList:Ljava/util/List;

    .line 22
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mDdmMsgObjectList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mDdmMsgObjectList:Ljava/util/List;

    .line 23
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mThumbnailUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mThumbnailUrl:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mPayloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUrl:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->mTid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;->access$000(Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mIsRelay:Z

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "build "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncEventRcs"

    invoke-static {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs$Builder;-><init>()V

    return-object v0
.end method

.method public static translateCmcFlagToNmsFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "displayed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "sent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "read"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "delivered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "pending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_5
    const-string v1, "recent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "\\Seen"

    return-object p0

    :pswitch_1
    const-string p0, "\\Answered"

    return-object p0

    :pswitch_2
    const-string p0, "\\Delivered"

    return-object p0

    :pswitch_3
    const-string p0, "\\Failed"

    return-object p0

    :pswitch_4
    const-string p0, "\\Recent"

    return-object p0

    :pswitch_5
    const-string p0, "\\Pending"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c696bc3 -> :sswitch_6
        -0x37b9b9a5 -> :sswitch_5
        -0x28af7669 -> :sswitch_4
        -0xe719f7c -> :sswitch_3
        0x355996 -> :sswitch_2
        0x35cf98 -> :sswitch_1
        0xec1fce1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateNmsFlagToCmcFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "\\Failed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v1, "\\Delivered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "\\Answered"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "\\Seen"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "\\Recent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    goto :goto_0

    :sswitch_5
    const-string v1, "\\Pending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    return-object p0

    :cond_2
    const-string p0, "read"

    return-object p0

    :cond_3
    const-string p0, "displayed"

    return-object p0

    :cond_4
    const-string p0, "sent"

    return-object p0

    :cond_5
    const-string p0, "failed"

    return-object p0

    :cond_6
    const-string p0, "recent"

    return-object p0

    :cond_7
    const-string p0, "pending"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x708abe65 -> :sswitch_5
        -0x6b978229 -> :sswitch_4
        0x537b4f7 -> :sswitch_3
        0x2eab9d59 -> :sswitch_2
        0x33652788 -> :sswitch_1
        0x7fb8cbb9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationIdList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationIdList:Ljava/util/List;

    return-object v0
.end method

.method public getDdmMsgObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mDdmMsgObjectList:Ljava/util/List;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadUploadStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUploadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsGroupAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsGroupAttributeList:Ljava/util/List;

    return-object v0
.end method

.method public getRcsMessageAttribute()Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    return-object v0
.end method

.method public getRcsMessageAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttributeList:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isRelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mIsRelay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUploadStatus:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", mPayloadUploadStatus="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUploadStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    const-string v2, ", Attr="

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttribute:Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttributeList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsMessageAttributeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsMessageAttribute;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mRcsGroupAttributeList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncEventRcs[ mEventTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventTo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mRequestReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mEventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mTid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mTid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFlagList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mFlagList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mResourceUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mResourceUrlList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mResourceUrlList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mThumbnailUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPayloadUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mPayloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCorrelationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCorrelationIdList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mCorrelationIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCorrelationTag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMinDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventBase;->mMinDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mObjectId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/event/SyncEventRcs;->mObjectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
