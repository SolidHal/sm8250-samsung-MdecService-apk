.class Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$1;
.super Ljava/util/LinkedHashMap;
.source "RcsQueryBuilder2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;-><init>(Landroid/content/Context;Lcom/samsung/android/mdecservice/nms/interfaces/INmsClientManager;Lcom/samsung/android/mdecservice/nms/interfaces/INmsDatabaseManager;Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$1;->this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

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
            "Lcom/samsung/android/mdecservice/nms/attribute/RcsGroupInfoAttribute;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
