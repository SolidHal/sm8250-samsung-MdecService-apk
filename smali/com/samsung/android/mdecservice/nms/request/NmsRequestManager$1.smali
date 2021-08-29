.class Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager$1;
.super Ljava/util/LinkedHashMap;
.source "NmsRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager$1;->this$0:Lcom/samsung/android/mdecservice/nms/request/NmsRequestManager;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

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
            "Lcom/samsung/android/mdecservice/nms/request/RequestObjectBase;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 v0, 0x190

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
