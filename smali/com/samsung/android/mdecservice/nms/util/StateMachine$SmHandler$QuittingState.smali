.class Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$QuittingState;
.super Lcom/samsung/android/mdecservice/nms/util/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/util/StateMachine$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/StateMachine$SmHandler$QuittingState;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
