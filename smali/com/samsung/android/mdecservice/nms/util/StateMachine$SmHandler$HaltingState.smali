.class Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$HaltingState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$HaltingState;->this$0:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;Lcom/samsung/android/mdecservice/nms/util/StateMachine$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$HaltingState;->this$0:Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;->access$300(Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;)Lcom/samsung/android/mdecservice/nms/util/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mdecservice/nms/util/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
