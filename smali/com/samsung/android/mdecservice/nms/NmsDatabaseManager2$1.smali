.class final Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$1;
.super Ljava/util/LinkedHashMap;
.source "NmsDatabaseManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/mdecservice/nms/push/object/DdmMsgObject;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 v0, 0x100

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
