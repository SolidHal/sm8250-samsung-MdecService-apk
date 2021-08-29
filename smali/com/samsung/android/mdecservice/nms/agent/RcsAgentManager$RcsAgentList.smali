.class public Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager$RcsAgentList;
.super Ljava/util/LinkedList;
.source "RcsAgentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/RcsAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RcsAgentList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent;

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
