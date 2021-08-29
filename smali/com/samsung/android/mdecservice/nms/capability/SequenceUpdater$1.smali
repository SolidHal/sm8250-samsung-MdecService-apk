.class Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;
.super Ljava/lang/Object;
.source "SequenceUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->tryApplybatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->access$000(Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->access$102(Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;Z)Z

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater$1;->this$0:Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/mdecservice/nms/capability/SequenceUpdater;->tryApplybatch()V

    :cond_0
    return-void
.end method
