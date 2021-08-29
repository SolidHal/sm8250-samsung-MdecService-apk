.class public Lcom/samsung/android/cmcopenapi/pdu/PduBody;
.super Ljava/lang/Object;
.source "PduBody.java"


# instance fields
.field private mPartMapByContentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcopenapi/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByContentLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcopenapi/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcopenapi/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cmcopenapi/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/cmcopenapi/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    return-void
.end method

.method private putPartToMaps(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/cmcopenapi/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public addPart(ILcom/samsung/android/cmcopenapi/pdu/PduPart;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0, p2}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->putPartToMaps(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public addPart(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->putPartToMaps(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public getPart(I)Lcom/samsung/android/cmcopenapi/pdu/PduPart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    return-object p1
.end method

.method public getPartByContentId(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/pdu/PduPart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    return-object p1
.end method

.method public getPartByContentLocation(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/pdu/PduPart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    return-object p1
.end method

.method public getPartByFileName(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/pdu/PduPart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    return-object p1
.end method

.method public getPartByName(Ljava/lang/String;)Lcom/samsung/android/cmcopenapi/pdu/PduPart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    return-object p1
.end method

.method public getPartIndex(Lcom/samsung/android/cmcopenapi/pdu/PduPart;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPartsNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public removePart(I)Lcom/samsung/android/cmcopenapi/pdu/PduPart;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/cmcopenapi/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/cmcopenapi/pdu/PduPart;

    return-object p1
.end method
