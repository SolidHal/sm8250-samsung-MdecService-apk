.class public Lcom/samsung/android/mdecservice/nms/attribute/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# static fields
.field public static final ATTR_DIRECTION_IN:Ljava/lang/String; = "IN"

.field public static final ATTR_DIRECTION_OUT:Ljava/lang/String; = "OUT"

.field public static final KEY_ATTR_NAME:Ljava/lang/String; = "name"

.field public static final KEY_ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final LOG_TAG:Ljava/lang/String; = "Attr"


# instance fields
.field protected mAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMiscAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMiscAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMiscAttributesBundle()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public hasMiscAttrs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setMiscAttr(Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Attr"

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "keys and ignoredKeys are null or empty"

    .line 2
    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 7
    :cond_1
    invoke-static {p3}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    if-nez p2, :cond_3

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    .line 12
    invoke-static {p4}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v3

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v3

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMiscAttr: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/mdecservice/nms/util/NMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMiscRcsAttr(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/samsung/android/mdecservice/nms/util/NMSUtil;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/attribute/Attribute;->mMiscAttributeMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
