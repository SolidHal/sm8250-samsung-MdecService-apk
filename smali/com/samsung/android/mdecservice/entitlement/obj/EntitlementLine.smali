.class public Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;
.super Ljava/lang/Object;
.source "EntitlementLine.java"


# instance fields
.field private mDateCreated:Ljava/lang/String;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mImpu:Ljava/lang/String;

.field private mIsActive:Z

.field private mLineId:Ljava/lang/String;

.field private mLineName:Ljava/lang/String;

.field private mLineOwnerDeviceId:Ljava/lang/String;

.field private mLineOwnerUserId:Ljava/lang/String;

.field private mModifiedAt:Ljava/lang/String;

.field private mMsisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDateCreated:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mImpu:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineId:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineOwnerUserId:Ljava/lang/String;

    .line 10
    iput-boolean p7, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mIsActive:Z

    .line 11
    iput-object p8, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mModifiedAt:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mMsisdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMdecDevice(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImpu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mImpu:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOwnerDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineOwnerUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineOwnerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getMdecDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mModifiedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mIsActive:Z

    return v0
.end method

.method public removeMdecDevice(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public removeMdecDevice(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mIsActive:Z

    return-void
.end method

.method public setMdecDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{MdecLineInfoInternal:{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "impu:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mImpu:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",lineName:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",lineId:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mLineId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",msisdn:"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mMsisdn:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",created at:"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDateCreated:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/mdeccommon/tools/MdecLogger;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",deviceInfo:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    iget-object v1, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ","

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMdecDevice(Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;

    .line 2
    invoke-virtual {v1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/entitlement/obj/EntitlementLine;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
