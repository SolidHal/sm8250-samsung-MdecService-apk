.class public final synthetic Lcom/samsung/android/mdecservice/nms/agent/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/mdecservice/nms/http/okhttp/ProgressListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/agent/a;->a:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;

    return-void
.end method


# virtual methods
.method public final update(JJZ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/agent/a;->a:Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/mdecservice/nms/agent/RcsAgent$RequestState;->a(JJZ)V

    return-void
.end method
